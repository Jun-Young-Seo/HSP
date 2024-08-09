<%@ page import="SignUp.SignUp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    SignUp signUp = new SignUp();
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String gender = request.getParameter("gender");
    String mail = request.getParameter("mail");
    String password = request.getParameter("password");
    String tel = request.getParameter("tel");
    String residence = request.getParameter("residence");

    signUp.setName(name);
    signUp.setAge(age);
    signUp.setGender(gender);
    signUp.setMail(mail);
    signUp.setPassword(password);
    signUp.setTel(tel);
    signUp.setResidence(residence);
    session.setAttribute("signUp", signUp); // 객체를 세션에 저장 --> 페이지 넘어가도 세션으로 정보 유지

    response.sendRedirect("../sign_up2.jsp");
%>