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

        .input-field {
            width: 100%;
            padding: 15px;
            margin-bottom: 20px;
            border: 2px solid #b8e994;
            border-radius: 25px;
            background-color: #ccf5d3;
            font-size: 1.5rem;
            text-align: center;
            color: #666;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .input-field::placeholder {
            color: #666;
            font-weight: bold;
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

    </style>
    <script>
        function checkInput() {
            const phoneNumberField = document.getElementById('mail');
            const submitButton = document.getElementById('submit-button');

            // 입력 필드가 비어있지 않으면 버튼 표시, 비어있으면 버튼 숨김
            if (phoneNumberField.value.trim() !== "") {
                submitButton.style.display = "block";
            } else {
                submitButton.style.display = "none";
            }
        }
    </script>
</head>
<body>

<div class="container">
    <div class="speech-bubble">메일을<br>알려주세요</div>

    <form action="Process/process_sign_up_mascot7.jsp" method="post">
        <input type="text" class="input-field" id="mail" name="mail" placeholder="메일" oninput="checkInput()">

        <!-- 진행 바 -->
        <div class="progress-container">
            <div class="progress-label">6번째 중 6번째</div>
            <br>
            <div class="progress" id="progress-bar-container" style="background-color: #2E7028;">
                <div id="progress-bar" class="progress-bar" role="progressbar" style="width: 100%; color: black; white-space: nowrap; overflow: visible; background-color: #CEEEA5;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                </div>
            </div>
        </div>
        <br>

        <button type="submit" class="submit-button" id="submit-button">다음</button>
    </form>
</div>

</body>
</html>
