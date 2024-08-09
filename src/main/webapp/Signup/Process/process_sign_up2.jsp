<%@ page import="SignUp.Education" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Education education = new Education();

    String level = request.getParameter("level");
    String state = request.getParameter("state");
    String koreanLevel = null;
    String koreanState = null;
    if(level.equals("elementarySchool")){
        koreanLevel = "초등학교";
    }
    else if(level.equals("middleSchool")){
        koreanLevel="중학교";
    }
    else if(level.equals("highSchool")){
        koreanLevel="고등학교";
    }
    else if(level.equals("university23")){
        koreanLevel="전문대";
    }
    else if(level.equals("university4")){
        koreanLevel="대학교";
    }
    else if(level.equals("graduateSchool")){
        koreanLevel="대학원";
    }
    ///////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////
    if(state.equals("graduate")){
        koreanState = "졸업";
    }
    else if(state.equals("attending")){
        koreanState = "재학";
    }
    else if(state.equals("leaveOfAbsence")){
        koreanState="휴학";
    }
    else if(state.equals("dropOut")){
        koreanState="중퇴";
    }
    else if(state.equals("completion")){
        koreanState="수료";
    }


    education.setLevel(koreanLevel);
    education.setState(koreanState);
    session.setAttribute("education",education);

    response.sendRedirect("../sign_up3.jsp");
%>