<%
    String tel = request.getParameter("tel");
    session.setAttribute("tel",tel);
    response.sendRedirect("../sign_up_mascot5.jsp");
    System.out.println("tel : "+tel);

%>