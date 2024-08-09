<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="SignUp.SignUp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>고봉밥 회원가입</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../Style/sign_up.css" rel="stylesheet">
</head>

<body>
<%--progress Bar 50%--%>
<div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="height : 30px">
    <div class="progress-bar bg-success" style="width: 50%"></div>
</div>
<div class="container-fluid full-height">
    <div class="center-box">
        <div class="title-school">학력정보를 입력해주세요</div>
        <form action="Process/process_sign_up2.jsp" method="post">
            <div class="form-group">
                <p>최종학력</p>
                <select class="form-select" id="school" name="level">
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
                <select class="form-select" id="status" name="state">
                    <option value="graduate">졸업</option>
                    <option value="attending">재학</option>
                    <option value="leaveOfAbsence">휴학</option>
                    <option value="dropOut">중퇴</option>
                    <option value="completion">수료</option>
                </select>
            </div>
            <div class="mt-3">
                <button type="submit" class="btn btn-light">다음</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>