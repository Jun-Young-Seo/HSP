<%
    String age = request.getParameter("age");
    session.setAttribute("age",age);
    response.sendRedirect("../sign_up_mascot3.jsp");
    System.out.println("age : "+age);
%>