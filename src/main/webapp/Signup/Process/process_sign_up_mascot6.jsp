<%@ page import="SignUp.Basic" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
    String name = (String) session.getAttribute("name");
    int age = Integer.parseInt((String)session.getAttribute("age"));
    String gender = (String) session.getAttribute("gender");
    String residence = (String) session.getAttribute("residence");
    String tel = (String) session.getAttribute("tel");
    String mail = (String) session.getAttribute("mail");

    Basic b = new Basic();
    b.setName(name);
    b.setAge(age);
    b.setGender(gender);
    b.setResidence(residence);
    b.setTel(tel);
    b.setMail(mail);

    session.invalidate();
    session = request.getSession(true);
    session.setAttribute("basic",b);

    response.sendRedirect("../sign_up2.jsp");
%>