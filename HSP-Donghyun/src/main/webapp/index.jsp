<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>고봉밥 로그인</title>
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
  </style>
</head>

<body>
<div class="container-fluid full-height">
  <div class="center-box">
    <form>
      <div class="mb-3 form-inline">
        <label for="username" class="form-label">아이디</label>
        <input type="text" class="form-control" id="identify" placeholder="아이디를 입력하세요">
      </div>
      <div class="mb-3 form-inline">
        <label for="password" class="form-label">비밀번호</label>
        <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요">
      </div>
      <div class="mt-3">
        <button type="submit" class="btn btn-light">로그인</button>
        <button type="button" class="btn btn-light">아이디 찾기</button>
        <button type="button" class="btn btn-light">비밀번호 찾기</button>
        <button type="button" class="btn btn-light" onclick="location.href='signup1.jsp'">회원가입</button>
      </div>
    </form>
  </div>
</div>
</body>
</html>
