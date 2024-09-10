<%
    String gender = request.getParameter("gender");
    session.setAttribute("gender", gender);
    response.sendRedirect("../sign_up_mascot4.jsp");
    System.out.println("gender : " + gender);
%>
