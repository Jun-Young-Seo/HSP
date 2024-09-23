<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고봉밥 회원가입</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f8e8;
            margin: 0;
        }

        .container {
            text-align: center;
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #f0f8e8;
        }

        .speech-bubble {
            font-size: 2rem;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .btn {
            display: inline-block;
            padding: 10px 15px;
            margin: 5px;
            border: 1px solid #b8e994;
            border-radius: 5px;
            background-color: #ccf5d3;
            cursor: pointer;
            color: #333;
            transition: background-color 0.3s;
        }

        .btn.selected {
            background-color: #4CAF50;
            color: white;
            border-color: #4CAF50;
        }

        .submit-button {
            width: 100%;
            padding: 15px;
            font-size: 1.2rem;
            border: none;
            border-radius: 10px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            display: none; /* 처음에 버튼은 숨김 */
        }

        .submit-button:hover {
            background-color: #45a049;
        }

        .progress-container {
            margin-bottom: 20px;
        }

        .progress-label {
            font-size: 1rem;
            margin-bottom: 5px;
        }

    </style>
    <script>
        function setupButtons() {
            const buttons = document.querySelectorAll('.btn');
            const submitButton = document.getElementById('submit-button');
            const hiddenInput = document.getElementById('selected-district');

            buttons.forEach(button => {
                button.addEventListener('click', () => {
                    // 모든 버튼의 'selected' 클래스를 제거
                    buttons.forEach(btn => btn.classList.remove('selected'));

                    // 클릭한 버튼에 'selected' 클래스 추가
                    button.classList.add('selected');

                    // 숨겨진 input에 선택한 값 설정
                    hiddenInput.value = button.value;

                    // '다음' 버튼 표시
                    submitButton.style.display = 'block';
                });
            });
        }

        window.onload = setupButtons;
    </script>
</head>
<body>

<div class="container">
    <div class="speech-bubble">주소를<br>알려주세요</div>

    <form action="Process/process_sign_up_mascot5.jsp" method="post">
        <!-- 구 선택 버튼들 -->
        <div class="selection-box">
            <input type="button" class="btn" value="강남구">
            <input type="button" class="btn" value="강동구">
            <input type="button" class="btn" value="강북구">
            <input type="button" class="btn" value="강서구">
            <input type="button" class="btn" value="관악구">
            <input type="button" class="btn" value="광진구">
            <input type="button" class="btn" value="구로구">
            <input type="button" class="btn" value="금천구">
            <input type="button" class="btn" value="노원구">
            <input type="button" class="btn" value="도봉구">
            <input type="button" class="btn" value="동대문구">
            <input type="button" class="btn" value="동작구">
            <input type="button" class="btn" value="마포구">
            <input type="button" class="btn" value="서대문구">
            <input type="button" class="btn" value="서초구">
            <input type="button" class="btn" value="성동구">
            <input type="button" class="btn" value="성북구">
            <input type="button" class="btn" value="송파구">
            <input type="button" class="btn" value="양천구">
            <input type="button" class="btn" value="영등포구">
            <input type="button" class="btn" value="용산구">
            <input type="button" class="btn" value="은평구">
            <input type="button" class="btn" value="종로구">
            <input type="button" class="btn" value="중구">
            <input type="button" class="btn" value="중랑구">
        </div>

        <!-- 숨겨진 input 요소 -->
        <input type="hidden" id="selected-district" name="selected-district">

        <!-- 진행 바 -->
        <div class="progress-container">
            <div class="progress-label">6단계 중 5단계</div>
            <div class="progress" id="progress-bar-container">
                <div id="progress-bar" class="progress-bar" role="progressbar" style="width: 83.3%; background-color: #CEEEA5;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                </div>
            </div>
        </div>

        <!-- 제출 버튼 -->
        <button type="submit" class="submit-button" id="submit-button">다음</button>
    </form>
</div>

</body>
</html>
