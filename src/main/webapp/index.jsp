<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>HSP UI Sample</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="CSS/index_style.css">
</head>
<body>
<h1 class="text-center mb-4">HSP UI Sample</h1>
<%@ include file="navbar.jsp"%>
<div class="container my-4">
  <div class="row">
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <a href="community/community_index.jsp">
          <img src="resources/community_icon.png" alt="Placeholder Image" class="img-fluid">
          <div class="card-body">
            <p>커뮤니티</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <img src="resources/health.jpg" alt="Placeholder Image" class="img-fluid">
        <div class="card-body">
          <p>의료 지원</p>
        </div>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <a href="medicine/medicine_index.jsp" class="link-dark">
          <img src="resources/pill.png" alt="Placeholder Image" class="img-fluid">
          <div class="card-body">
            <p>약</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <img src="resources/car.jpg" alt="Placeholder Image" class="img-fluid">
        <div class="card-body">
          <p>교통 지원</p>
        </div>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <a href="call/call.jsp">
          <img src="resources/call.png" alt="Placeholder Image" class="img-fluid">
          <div class="card-body">
            <p>전화하기</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <a href="seoul/seoul_index.jsp">
          <img src="https://via.placeholder.com/300" alt="Placeholder Image" class="img-fluid">
          <div class="card-body">
            <p>서울시 노인복지센터</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <img src="https://via.placeholder.com/300" alt="Placeholder Image" class="img-fluid">
        <div class="card-body">
          <p>Test 7</p>
        </div>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <img src="https://via.placeholder.com/300" alt="Placeholder Image" class="img-fluid">
        <div class="card-body">
          <p>Test 8</p>
        </div>
      </div>
    </div>
    <div class="col-4 col-md-4 mb-3">
      <div class="card">
        <img src="resources/setting.jpg" alt="Placeholder Image" class="img-fluid">
        <div class="card-body">
          <p>설정</p>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
