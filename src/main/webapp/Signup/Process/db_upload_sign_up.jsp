<%@ page import="SignUp.SignUp" %>
<%@ page import="SignUp.Handicap" %>
<%@ page import="SignUp.Career" %>
<%@ page import="SignUp.Education" %>
<%@ page import="SignUp.Interest" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../db_connection.jsp" %>
<%
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // 기본 회원 정보
        SignUp s = (SignUp) session.getAttribute("signUp");
        String name = s.getName();
        int age = s.getAge();
        String gender = s.getGender();
        String residence = s.getResidence();
        String tel = s.getTel();
        String mail = s.getMail();
        System.out.println(name + age + gender + residence + tel + mail);

        String sqlQuerySignUp = "INSERT INTO USER_INFO (NAME, AGE, GENDER, RESIDENCE, TEL, MAIL) VALUES (?, ?, ?, ?, ?, ?)";
        pstmt = connection.prepareStatement(sqlQuerySignUp, Statement.RETURN_GENERATED_KEYS);
        pstmt.setString(1, name);
        pstmt.setInt(2, age);
        pstmt.setString(3, gender);
        pstmt.setString(4, residence);
        pstmt.setString(5, tel);
        pstmt.setString(6, mail);

        pstmt.executeUpdate();

        // 생성된 USER_ID 가져오기
        rs = pstmt.getGeneratedKeys();
        int userId = 0;
        if (rs.next()) {
            userId = rs.getInt(1);
            System.out.println("user PK : "+userId);
        }

        // 학력 정보
        Education e = (Education) session.getAttribute("education");

        if (e != null) {
            String level = e.getLevel();
            String state = e.getState();
            String sqlQueryEducation = "INSERT INTO USER_EDUCATION(ID, LEVEL, STATE) VALUES(?, ?, ?)";
            pstmt = connection.prepareStatement(sqlQueryEducation);
            pstmt.setInt(1, userId);
            pstmt.setString(2, level);
            pstmt.setString(3, state);
            pstmt.executeUpdate();
        }

        // 경력 정보
        Career c = (Career) session.getAttribute("career");
        if (c != null) {
            String company = c.getCompany();
            String workStart = c.getWorkStart();
            String workEnd = c.getWorkEnd();
            String sqlQueryCareer = "INSERT INTO USER_CAREER(ID, COMPANY, WORK_START, WORK_END) VALUES(?, ?, ?, ?)";
            pstmt=connection.prepareStatement(sqlQueryCareer);
            pstmt.setInt(1,userId);
            pstmt.setString(2,company);
            pstmt.setString(3,workStart);
            pstmt.setString(4,workEnd);
            pstmt.executeUpdate();
        }

        // 장애 정보
        Handicap h = (Handicap) session.getAttribute("handicap");
        if (h != null) {
            boolean isHandicapped = h.getIsHandicapped();
            String description = h.getDescription();
            String sqlQueryHandicap = "INSERT INTO USER_HANDICAP(ID, IS_HANDICAPPED, DESCRIPTION) VALUES(?, ?, ?)";
            pstmt = connection.prepareStatement(sqlQueryHandicap);
            pstmt.setInt(1, userId);
            pstmt.setBoolean(2, isHandicapped);
            pstmt.setString(3, description);
            pstmt.executeUpdate();
        }

        //관심사 정보
        Interest interest = new Interest();
        interest.setInterests((String[]) session.getAttribute("interest"));

        if(interest.getInterests() != null) {
            for (int n = 0; n < interest.getInterests().length; n++) {
                System.out.println("int "+n+" : "+interest.getInterests()[n]);

                String inter = interest.getInterests()[n];
                String sqlQueryInterest = "INSERT INTO USER_INTEREST(ID, INTEREST) VALUES(?,?)";
                pstmt = connection.prepareStatement(sqlQueryInterest);
                pstmt.setInt(1, userId);
                pstmt.setString(2, inter);
                pstmt.executeUpdate();
            }
        }

        // DB 연결 종료
        pstmt.close();
        connection.close();
        response.sendRedirect("../../index.jsp");

    } catch (Exception e) {
        e.printStackTrace();
        if (connection != null) {
            connection.close();
        }
    } finally {
        if (pstmt != null) pstmt.close();
        if (rs != null) rs.close();
        if (connection != null) connection.close();
    }
%>
