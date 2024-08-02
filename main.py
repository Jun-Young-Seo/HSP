from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import pandas as pd
import time
import pymysql

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
                insert_query = """
                INSERT INTO VOLUNTEER_INFO (CONTENT, RECRUTING_START, RECRUTING_END, 
                                            VOLUNTEERING_START_DATE, VOLUNTEERING_END_DATE, 
                                            VOLUNTERRING_START_TIME, VOLUNTEERING_END_TIME, 
                                            REGION, AGENCY)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
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
                    item['기관']
                ))
                count+=1
                print(count,'번 째 data : ',data)
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
    while True:
        # 페이지의 데이터를 수집
        soup = BeautifulSoup(driver.page_source, 'html.parser')
        data = soup.find_all('a', class_='list')

        for item in data:
            result = item.get_text().split()
            try:
                content_idx = result.index('[모집기간]')
                region_idx = result.index('[등록기관]')
                agency_idx = result.index('[모집기관]')

                content = ' '.join(result[7:content_idx])
                recruiting_dates = result[content_idx + 1:content_idx + 4]
                volunteer_dates = result[content_idx + 5:content_idx + 8]
                volunteer_times = result[content_idx + 9:content_idx + 12]
                region = ' '.join(result[region_idx + 1:agency_idx])
                agency = result[agency_idx + 1]

                all_data.append({
                    '내용': content,
                    '모집 시작 날짜': recruiting_dates[0],
                    '모집 종료 날짜': recruiting_dates[2],
                    '봉사 시작 날짜': volunteer_dates[0],
                    '봉사 종료 날짜': volunteer_dates[2],
                    '봉사 시작 시간': volunteer_times[0],
                    '봉사 종료 시간': volunteer_times[2],
                    '지역': region,
                    '기관': agency
                })
            except ValueError as e:
                print(f"Error processing data: {e}")
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
    data_frame.to_excel("1365.xlsx", index=False)
    driver.quit()

    #DB업로드
    upload_db(all_data)

if __name__ == '__main__':
    crawling_1365()
