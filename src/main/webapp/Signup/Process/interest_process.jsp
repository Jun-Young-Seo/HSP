<%@ page import="SignUp.Interest" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Interest inter=new Interest();

    //여기 배열엔 empty 값 포함
    String[] interests = request.getParameterValues("interest");
    String[] realInterests = new String[3];
    int count = 0;
    for(int i=0;i<interests.length;i++){
        if(!interests[i].isEmpty()){
            realInterests[count]=interests[i];
            count++;
        }
    }
    //emtpy 값 제거한 배열로 세션설정
    session.setAttribute("interest", realInterests);
    response.sendRedirect("./db_upload_sign_up.jsp");
%>