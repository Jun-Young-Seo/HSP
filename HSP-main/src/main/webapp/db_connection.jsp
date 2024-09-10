<%@ page import ="java.sql.*" %>
<%
    Connection connection = null;
    try{
        String url = "jdbc:mysql://localhost:3306/hsp_db?serverTimezone=Asia/Seoul";
        String user = "root";
        String passwd="ssik123";

        Class.forName("com.mysql.cj.jdbc.Driver");

        connection = DriverManager.getConnection(url,user,passwd);
    } catch (SQLException e){
        System.out.println("데이터베이스 연결 실패");
        System.out.println("에러 이유 : SQLEXCEPTION : "+e.getMessage());
    }
%>