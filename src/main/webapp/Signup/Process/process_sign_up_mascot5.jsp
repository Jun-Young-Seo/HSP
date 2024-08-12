<%
    String residence = request.getParameter("residence");
    session.setAttribute("residence",residence);
    response.sendRedirect("../sign_up_mascot6.jsp");
    System.out.println("res : "+residence);

%>