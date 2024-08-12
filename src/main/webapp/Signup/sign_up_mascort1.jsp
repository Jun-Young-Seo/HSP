<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>캐릭터 질문 인터페이스</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            flex-direction: column;
            text-align: center;
        }

        .space{
            height: 180px;
        }

        .progress {
            width: 100%;
            height: 30px;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            background-color: #CEEEA5;
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            position: relative;
            width: 90%;
            margin:0 auto;
            max-width: 400px;
        }

        .character {
            position: absolute;
            top: -80px;
            width: 120px;
            height: 120px;
            background-image: url('<%=request.getContextPath()%>/resources/images/mascort.png');
            background-size: contain;
            background-repeat: no-repeat;
        }

        .speech-bubble {
            position: relative;
            background: #fff;
            border-radius: .4em;
            padding: 10px;
            width: auto;
            max-width: 200px;
            margin-top: 60px;
            font-size: 18px;
            color: #333;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            font-weight: bold;
        }

        .speech-bubble::after {
            content: '';
            position: absolute;
            bottom: 100%;
            left: 50%;
            margin-left: -20px;
            width: 0;
            height: 0;
            border: 20px solid transparent;
            border-bottom-color: #fff;
        }

        .input-field {
            width: 80%;
            padding: 10px;
            margin-top: 20px;
            border-radius: 10px;
            border: 2px solid #4fb39a;
            font-size: 18px;
        }

        .nav-buttons {
            display: flex;
            justify-content: space-between;
            width: 80%;
            margin-top: 20px;
        }

        .nav-buttons button {
            background-color: #4fb39a;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 10px;
            cursor: pointer;
            font-size: 16px;
        }

        .nav-buttons button:hover {
            background-color: #45a086;
        }

    </style>
</head>
<body>

    <div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
        <div class="progress-bar bg-success" style="width: 25%"></div>
    </div>
    <div class="space"></div>
<!-- Main Container -->
<div class="container">
    <div class="character"></div> <!-- 캐릭터 마스코트 -->
    <div class="speech-bubble">성함을 알려주세요!</div>
    <input type="text" class="input-field" placeholder="이름을 입력하세요">
    <div class="nav-buttons">
        <button type="button">이전</button>
        <button type="button">다음</button>
    </div>
</div>

</body>
</html>
