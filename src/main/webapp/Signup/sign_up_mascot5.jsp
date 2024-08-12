<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../Style/sign_up_mascot.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고봉밥 회원가입</title>
</head>
<style>
    <%--페이지별 마스코트 다르게 하기 위해 style 태그로 따로 사용--%>
    <%--CSS에는 이 부분 없습니다--%>
    <%--백그라운드 이미지 url 수정으로 마스코트 바꿀 수 있음--%>
    .character {
        position: absolute;
        top: -80px;
        width: 120px;
        height: 120px;
        background-image: url('<%=request.getContextPath()%>/resources/images/mascot.png');
        background-size: contain;
        background-repeat: no-repeat;
    }

</style>
<body>

<div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
    <div class="progress-bar progress-bar-striped bg-success progress-bar-animated" style="width: 84%">5/6 </div>
</div>
<div class="space"></div>
<!-- Main Container -->
<div class="container">
    <div class="character"></div>
    <div class="speech-bubble">집 주소는요?</div>
    <form action="Process/process_sign_up_mascot5.jsp" method="post">
    <div class="mb-3 form-inline">
        <input type="text" class="input-field" name="residence" placeholder="거주지를 입력하세요.">
    </div>
    <div class="nav-buttons">
        <button type="button" onclick="location.href='sign_up_mascot4.jsp'">이전</button>
        <button type="submit">다음</button>
    </div>
    </form>
</div>

</body>
</html>
