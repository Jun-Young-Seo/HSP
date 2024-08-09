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

</head>

<body>
<%--progress Bar 100%--%>
<div class="progress" role="progressbar" aria-label="Success" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="height : 30px">
    <div class="progress-bar bg-success" style="width: 100%"></div>
</div>
<div class="container-fluid full-height">
    <div class="center-box">
        <p>장애유무를 선택해주세요</p>
        <form>
            <div class="form-group">
                <p>장애유무</p>
                <select class="form-select" id="obstacle">
                    <option value="obstacleYes">있음</option>
                    <option value="obstacleNo">없음</option>
                </select>
            </div>
            <div class="mt-3">
                <button type="button" class="btn btn-light" onclick="location.href='signup5.jsp'">다음</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>