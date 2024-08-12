<%@ page import="SignUp.Basic"%>
<%@ page import="SignUp.Basic" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Basic basic = new Basic();
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String gender = request.getParameter("gender");
    String mail = request.getParameter("mail");
    String password = request.getParameter("password");
    String tel = request.getParameter("tel");
    String residence = request.getParameter("residence");

    basic.setName(name);
    basic.setAge(age);
    basic.setGender(gender);
    basic.setMail(mail);
    basic.setPassword(password);
    basic.setTel(tel);
    basic.setResidence(residence);
    session.setAttribute("signUp", basic); // 객체를 세션에 저장 --> 페이지 넘어가도 세션으로 정보 유지

    response.sendRedirect("../sign_up2.jsp");
%>