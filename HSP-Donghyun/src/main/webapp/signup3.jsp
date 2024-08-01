<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>고봉밥 회원가입</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="resources/CSS/index_style.css" rel="stylesheet">
    <style>
        .center-box {
            background-color: #74DF00;
            padding: 20px;
            border-radius: 10px;
            max-width: 500px;
            width: 100%;
            margin: auto;
            color: white;
        }
        .full-height {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .form-inline {
            display: flex;
            align-items: center;
        }
        .form-inline label {
            margin-right: 10px;
            white-space: nowrap;
        }
        .form-inline .form-control {
            flex: 1;
        }
        .form-inline .btn {
            flex-shrink: 0;
        }
        .experience-box {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }
        .form-container {
            margin-top: 20px;
        }
    </style>
    <script>
        function addExperienceField() {
            const container = document.getElementById('experience-container');
            const newField = document.createElement('div');
            newField.className = 'experience-box mt-2';
            newField.innerHTML = `
                <div class="mb-3">
                    <label for="experience" class="form-label">경력사항</label>
                    <input type="text" class="form-control" name="experience" placeholder="경력사항을 입력하세요">
                </div>
            `;
            container.appendChild(newField);
        }
    </script>
</head>

<body>
<div class="container-fluid full-height">
    <div class="center-box text-center">
        <p>경력사항을 입력해주세요</p>
        <div id="experience-container" class="form-container">
        </div>
        <button type="button" class="btn btn-light mt-3" onclick="addExperienceField()">경력사항 추가하기</button>
        <form class="mt-3">
            <div>
                <button type="button" class="btn btn-light" onclick="location.href='signup4.jsp'">다음</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
