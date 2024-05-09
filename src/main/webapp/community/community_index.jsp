<%--
  Created by IntelliJ IDEA.
  User: SeoJunYoung
  Date: 2024-05-05
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../CSS/index_style.css">
    <title>Community_index.jsp file</title>
</head>
<body>
    <h1>Community index Page</h1>
    <%@ include file="../navbar.jsp"%>
    <div class="grid-container">
        <div class="card">
            <img src="../resources/community_icon.png" alt="Placeholder Image">
                <div class="card-body">
                    <p>Q&A</p>
                </div>
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
