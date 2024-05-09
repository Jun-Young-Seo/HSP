<%--
  Created by IntelliJ IDEA.
  User: SeoJunYoung
  Date: 2024-05-06
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
<h1>seoul index page</h1>
<%@ include file="../navbar.jsp"%>
    <div class="grid-container">
            <div class="card">
                <a href="center.jsp">
                <img src="https://via.placeholder.com/300" alt="Placeholder Image">
                <div class="card-body">
                    <p>서울노인복지센터 바로가기</p>
                </div>
                </a>
    </div>
        <div class="card">
            <a href="edu_center.jsp">
            <img src="https://via.placeholder.com/300" alt="Placeholder Image">
            <div class="card-body">
                <p>온라인교육센터 바로가기</p>
            </div>
            </a>
        </div>
    </div>
</body>
</html>
