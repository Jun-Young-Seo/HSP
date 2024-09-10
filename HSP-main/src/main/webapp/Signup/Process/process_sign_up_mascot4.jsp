<%
    String gender = request.getParameter("gender");
    session.setAttribute("gender",gender);
    response.sendRedirect("../sign_up_mascot5.jsp");
    System.out.println("gender : "+gender);
%>