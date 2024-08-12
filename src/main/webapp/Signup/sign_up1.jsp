<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>고봉밥 회원가입</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../Style/sign_up.css" rel="stylesheet">
</head>3

<body>
<%--progress Bar 25%--%>
<div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="height : 30px">
    <div class="progress-bar bg-success" style="width: 25%"></div>
</div>

<div class="container-fluid full-height">
    <div class="center-box">
        <form action="Process/process_sign_up1.jsp" method="post">
            <div class="mb-3 form-inline">
                <label for="name" class="form-label">이름</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요">
            </div>
            <div class="mb-3 form-inline">
                <label for="age" class="form-label">나이</label>
                <input type="text" class="form-control" id="age" name="age" placeholder="나이를 입력하세요">
            </div>
            <div class="mb-3 form-inline">
                <label for="gender" class="form-label">성별</label>
                <select class="form-select" id="gender" name="gender">
                    <option value="male">남성</option>
                    <option value="female">여성</option>
                </select>
            </div>
            <div class="mb-3 form-inline">
                <label for="where" class="form-label">사는 곳</label>
                <input type="text" class="form-control" id="where" name="residence" placeholder="사는 곳을 입력하세요">
            </div>
            <div class="mb-3 form-inline">
                <label for="phoneNumber" class="form-label">전화번호</label>
                <input type="text" class="form-control" id="phoneNumber" name="tel" placeholder="전화번호를 입력하세요">
            </div>
            <div class="mb-3 form-inline">
                <label for="eMail" class="form-label">이메일</label>
                <input type="text" class="form-control" id="eMail" name="mail" placeholder="이메일 입력하세요">
            </div>
            <div class="mb-3 form-inline">
                <label for="password" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요">
            </div>
            <div class="mt-3">
                <button type="submit" class="btn btn-light">다음</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
