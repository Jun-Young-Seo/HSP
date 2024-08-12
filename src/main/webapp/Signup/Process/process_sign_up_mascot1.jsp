<%
    String name = request.getParameter("name");
    session.setAttribute("name",name);
    response.sendRedirect("../sign_up_mascot2.jsp");
       System.out.println("name : "+name);
%>