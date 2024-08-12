<%@ page import="SignUp.Handicap"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Handicap handicap = new Handicap();

    boolean isHandicapped=false;
    if(request.getParameter("handicap").equals("yes")){
        isHandicapped=true;
    }
    String description = request.getParameter("description");

    handicap.setDescription(description);
    handicap.setIsHandicapped(isHandicapped);

    session.setAttribute("handicap", handicap);
    response.sendRedirect("../interest.jsp");
%>