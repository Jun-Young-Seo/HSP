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

        .gender-button {
            width: 100px;
            padding: 15px;
            margin: 10px;
            font-size: 1.2rem;
            border: none;
            border-radius: 10px;
            background-color: transparent;
            cursor: pointer;
        }

        .gender-button img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            border: 2px solid #b8e994;
            padding: 5px;
            transition: border 0.3s;
        }

        .gender-button img:hover {
            border-color: #a0d77e;
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
            display: none;
        }

        .submit-button:hover {
            background-color: #45a049;
        }

    </style>
    <script>
        let selectedGender = '';

        function selectGender(gender) {
            selectedGender = gender;
            document.getElementById('gender').value = gender;  // hidden input에 성별 값을 저장
            document.getElementById('submit-button').style.display = 'block';  // 다음 버튼 표시
        }
    </script>
</head>
<body>

<div class="container">
    <div class="speech-bubble">성별을<br>선택해주세요</div>

    <form action="Process/process_sign_up_mascot4.jsp" method="post">
        <input type="hidden" id="gender" name="gender"> <!-- 성별 값 저장용 hidden input -->

        <div>
            <button type="button" class="gender-button" onclick="selectGender('남자')">
                <img src="path_to_male_image.jpg" alt="남자">
            </button>
            <button type="button" class="gender-button" onclick="selectGender('여자')">
                <img src="path_to_female_image.jpg" alt="여자">
            </button>
        </div>

        <!-- 진행 바 -->
        <div class="progress-container">
            <div class="progress-label">6번째 중 4번째</div>
            <br>
            <div class="progress" id="progress-bar-container" style="background-color: #2E7028;">
                <div id="progress-bar" class="progress-bar" role="progressbar" style="width: 66.6%; color: black; white-space: nowrap; overflow: visible; background-color: #CEEEA5;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                </div>
            </div>
        </div>
        <br>

        <button type="submit" class="submit-button" id="submit-button">다음</button>
    </form>
</div>

</body>
</html>
