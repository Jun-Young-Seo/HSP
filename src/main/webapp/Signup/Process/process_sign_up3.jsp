<%@ page import="SignUp.Career" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int count=Integer.parseInt(request.getParameter("experienceCount"));
    int i=0;
    while(i<count) {
        Career career = new Career();
        String company = request.getParameter("company_" +i);
        String workStart = request.getParameter("workStart_" +i);
        String workEnd = request.getParameter("workEnd_" +i);
        String sessionName = "career_"+i;
        session.setAttribute(sessionName,career);
        i++;
    }
    response.sendRedirect("../sign_up4.jsp");
%>
