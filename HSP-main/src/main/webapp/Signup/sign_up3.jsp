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
<%--progress Bar 75%--%>
<div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="height: 30px">
    <div class="progress-bar bg-success" style="width: 75%"></div>
</div>
<div class="container-fluid full-height">
    <div class="center-box text-center">
        <p>경력사항을 입력해주세요</p>
        <form class="mt-3" action="Process/process_sign_up3.jsp" method="post">
            <div class="exp">
                <div class="mb-3">
                    <label id="experience" class="form-label">경력사항</label>
                    <div class="mb-3">
                        <label for="workplace" class="form-label">근무지</label>
                        <input type="text" class="form-control" id="workplace" name="company" placeholder="근무지를 입력하세요">
                    </div>
                    <div class="mb-3">
                        <label id="workPeriod" class="form-label">근무 기간</label>
                        <div class="input-group">
                            <input type="date" class="form-control" id="workStart" name="workStart">
                            <span class="input-group-text">~</span>
                            <input type="date" class="form-control" id="workEnd" name="workEnd">
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <button type="submit" class="btn btn-light">다음</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
