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
    <link rel="stylesheet" href="../CSS/index_style.css">
    <title>Title</title>
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
