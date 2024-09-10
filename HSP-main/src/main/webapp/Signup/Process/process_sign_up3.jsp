<%@ page import="SignUp.Career" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Career c = new Career();
    String company = request.getParameter("company");
    String workStart = request.getParameter("workStart");
    String workEnd = request.getParameter("workEnd");
    c.setCompany(company);
    c.setWorkStart(workStart);
    c.setWorkEnd(workEnd);

    session.setAttribute("career",c);
    response.sendRedirect("../sign_up4.jsp");
%>
