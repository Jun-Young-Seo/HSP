import pandas as pd
import pymysql
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup

# 키워드 분류 함수
def classify_keyword(keyword, keyword_detail):
    # 키워드 매핑
    keyword_mapping = {
        '교육': ['교육', '강의', '교사', '학습', '멘토링'],
        '상담': ['상담', '코칭', '멘토링'],
        '환경': ['환경', '청소', '정화', '미화', '환경보호'],
        '활동보조': ['보조', '도움', '지원', '생활편의지원'],
        '활동참여': ['참여', '봉사', '활동', '행사보조'],
        '캠페인': ['캠페인', '홍보', '프로모션']
    }

    # 모든 키워드 매핑에 대해 검색
    for category, terms in keyword_mapping.items():
        if keyword in terms or keyword_detail in terms:
            return category

    return '기타'


# DB에서 기존 데이터를 확인하는 함수
def check_existing_data(connection, item):
    with connection.cursor() as cursor:
        check_query = """
        SELECT COUNT(*) FROM VOLUNTEER_INFO
        WHERE CONTENT = %s AND RECRUTING_START = %s AND VOLUNTEERING_START_DATE = %s
        """
        cursor.execute(check_query, (
            item['내용'],
            item['모집 시작 날짜'],
            item['봉사 시작 날짜']
        ))
        result = cursor.fetchone()
        return result[0] > 0  # 존재하면 True 반환

def upload_db(data):
    connection = pymysql.connect(
        host='localhost',
        user='root',
        password='ssik123',
        db='hsp_db',
        charset='utf8'
    )
    count = 0
    try:
        with connection.cursor() as cursor:
            # 새로운 데이터 삽입
            for item in data:
                if not check_existing_data(connection, item):  # 중복 체크
                    insert_query = """
                    INSERT INTO VOLUNTEER_INFO (CONTENT, RECRUTING_START, RECRUTING_END, 
                                                VOLUNTEERING_START_DATE, VOLUNTEERING_END_DATE, 
                                                VOLUNTERRING_START_TIME, VOLUNTEERING_END_TIME, 
                                                REGION, AGENCY, KEYWORD)
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                    """
                    cursor.execute(insert_query, (
                        item['내용'],
                        item['모집 시작 날짜'],
                        item['모집 종료 날짜'],
                        item['봉사 시작 날짜'],
                        item['봉사 종료 날짜'],
                        item['봉사 시작 시간'],
                        item['봉사 종료 시간'],
                        item['지역'],
                        item['기관'],
                        item['keyword']
                    ))
                    count += 1
                    # print(count, '번 째 data : ', item)
        connection.commit()
    finally:
        connection.close()
def crawling_1365():
    url = 'https://www.1365.go.kr/vols/1572247904127/partcptn/timeCptn.do'
    driver = webdriver.Chrome()
    driver.get(url)

    # 페이지 로드 시간 3초 설정
    time.sleep(3)

    all_data = []
    current_page_count = 1
    count=1
    while True:
        current_page_count += 1

        # 페이지의 데이터를 수집
        soup = BeautifulSoup(driver.page_source, 'html.parser')
        data = soup.find_all('a', class_='list')
        keyword_data = soup.find_all('span', class_='ing blue')

        # 봉사활동 키워드 수집 로직
        for i, item in enumerate(keyword_data):
            result = item.get_text().split()
            try:
                # 1365 사이트의 카테고리 대분류와 세부 항목 추출
                keyword = result[4]
                keyword_detail = result[6]
            except (ValueError, IndexError) as e:
                print(f"Error processing data: {e}")
                continue

            # 봉사활동 데이터 수집 로직
            try:
                item_data = data[i].get_text().split()
                content_idx = item_data.index('[모집기간]')
                region_idx = item_data.index('[등록기관]')
                agency_idx = item_data.index('[모집기관]')

                content = ' '.join(item_data[7:content_idx])
                recruiting_dates = item_data[content_idx + 1:content_idx + 4]
                volunteer_dates = item_data[content_idx + 5:content_idx + 8]
                volunteer_times = item_data[content_idx + 9:content_idx + 12]
                region = ' '.join(item_data[region_idx + 1:agency_idx])
                agency = item_data[agency_idx + 1]

                # 키워드 분류
                classified_keyword = classify_keyword(keyword, keyword_detail)
                new_data = {
                    '내용': content,
                    '모집 시작 날짜': recruiting_dates[0],
                    '모집 종료 날짜': recruiting_dates[2],
                    '봉사 시작 날짜': volunteer_dates[0],
                    '봉사 종료 날짜': volunteer_dates[2],
                    '봉사 시작 시간': volunteer_times[0],
                    '봉사 종료 시간': volunteer_times[2],
                    '지역': region,
                    '기관': agency,
                    '키워드': classified_keyword
                }

                all_data.append(new_data)
                print(f"{count} 번 째 data 추가함 : {new_data}")  # 로그 출력
                count+=1
            except ValueError as e:
                print(f"Error processing data: {e}")
                continue

        # 다음 페이지로 이동
        try:
            # 현재 페이지 번호를 확인
            current_page_element = driver.find_element(By.CSS_SELECTOR, 'strong.page_num')
            current_page = int(current_page_element.text.strip())

            if current_page % 10 == 0:
                # 현재 페이지가 10의 배수인 경우 ">" 버튼 클릭
                next_group_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.CLASS_NAME, 'btn_next'))
                )
                next_group_button.click()
            else:
                # 다음 페이지 번호를 클릭
                next_page_num = current_page + 1
                next_page_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.LINK_TEXT, str(next_page_num)))
                )
                next_page_button.click()

            time.sleep(2)  # 페이지 로딩 시간을 고려하여 잠시 대기

        except Exception as e:
            print(f"페이지 끝 또는 에러: {e}")
            break  # 더 이상 이동할 페이지가 없으면 중지

    # 데이터프레임 생성 -- pandas data set
    data_frame = pd.DataFrame(all_data)
    data_frame.to_excel("1365_with_keywords.xlsx", index=False)
    driver.quit()

    # DB업로드
    upload_db(all_data)

if __name__ == '__main__':
    crawling_1365()
