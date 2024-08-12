<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    response.sendRedirect("./Signup/sign_up_mascot1.jsp");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>고봉밥 로그인</title>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="./Style/index.css" rel="stylesheet">
</head>
<body>
<div class="space"></div>
<div class="login-header">
    <div class="login-header-left">로그인</div>
    <div class="login-header-right">04</div>
</div>
<div class="space"></div>

<div class="container-fluid d-flex flex-column justify-content-center align-items-center">
    <div class="center-box text-center">
        <form>
            <div class="login">기존 회원 로그인</div>
            <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon1">전화번호</span>
                <input type="text" class="form-control" id="identify" placeholder="아이디를 입력하세요">
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon2">비밀번호</span>
                <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요">
            </div>
            <div class="mt-3">
                <div class="mb-3">
                <button type="submit" class="btn btn-light mx-auto">로그인</button>
                </div>
                <button type="button" class="btn btn-light mx-auto">아이디 찾기</button>
                <button type="button" class="btn btn-light mx-auto">비밀번호 찾기</button>
            </div>
        </form>
    </div>
    <div class="center-box text-center mt-3">
        <div class="signup">회원 가입</div>
        <div class="description mb-3">
            회원 가입을 위한 정보 작성에<br>
            약 30분이 소요됩니다.
        </div>
        <div class="mb-3">
        <button type="button" class="btn btn-light mx-auto" onclick="location.href='./Signup/sign_up1.jsp'">시작</button>
        </div>
    </div>
</div>
</body>
</html>