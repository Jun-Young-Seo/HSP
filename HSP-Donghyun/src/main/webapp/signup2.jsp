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
            justify-content: center;
            align-items: center;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .form-group p {
            margin-bottom: .5rem;
        }
    </style>
</head>

<body>
<div class="container-fluid full-height">
    <div class="center-box">
        <p>학력정보를 입력해주세요</p>
        <form>
            <div class="form-group">
                <p>최종학력</p>
                <select class="form-select" id="school">
                    <option value="elementarySchool">초등학교</option>
                    <option value="middleSchool">중학교</option>
                    <option value="highSchool">고등학교</option>
                    <option value="university23">대학교(2, 3년제)</option>
                    <option value="university4">대학교(4년제)</option>
                    <option value="graduateSchool">대학원</option>
                </select>
            </div>
            <div class="form-group">
                <p>상태</p>
                <select class="form-select" id="status">
                    <option value="graduate">졸업</option>
                    <option value="attending">재학</option>
                    <option value="leaveOfAbsence">휴학</option>
                    <option value="dropOut">중퇴</option>
                    <option value="completion">수료</option>
                </select>
            </div>
            <div class="mt-3">
                <button type="button" class="btn btn-light" onclick="location.href='signup3.jsp'">다음</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
