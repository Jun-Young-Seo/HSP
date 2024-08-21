<%--
  Created by IntelliJ IDEA.
  User: SeoJunYoung
  Date: 2024-08-21
  Time: 오후 5:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./db_connection.jsp"%>
<%
    PreparedStatement pstmt=null;
    ResultSet res=null;

    String tel = request.getParameter("tel");
    String password = request.getParameter("password");
    System.out.println("tel : "+tel+" password : "+password);
    String sqlQuery = "SELECT * FROM USER_INFO WHERE TEL = ? AND PASSWORD = ?";
    pstmt = connection.prepareStatement(sqlQuery);
    pstmt.setString(1, tel);
    pstmt.setString(2, password);
    res = pstmt.executeQuery();
    if(res.next()){
        session.setAttribute("login",tel);
        response.sendRedirect("./index.jsp");
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
