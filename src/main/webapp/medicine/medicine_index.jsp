<%--
  Created by IntelliJ IDEA.
  User: SeoJunYoung
  Date: 2024-05-05
  Time: 오후 4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
    <h1>medicine index page</h1>
    <%@ include file="../navbar.jsp"%>
    <div class="grid-container">
        <a href="find_medicine.jsp">
        <div class="card">
            <img src="../resources/pill.png" alt="Placeholder Image">
            <div class="card-body">
                <p>약 정보 보기</p>
            </div>
        </a>
        </div>
        <div class="card">
            <img src="https://via.placeholder.com/300" alt="Placeholder Image">
            <div class="card-body">
                <p>Hobbies</p>
            </div>
        </div>
    </div>
</body>
</html>
