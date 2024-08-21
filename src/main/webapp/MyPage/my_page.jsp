<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../db_connection.jsp" %>

<html>
<head>
    <title>User Information</title>
</head>
<body>
<%
    String tel = (String) session.getAttribute("login");
    int userId = -1;

    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // 로그인한 사용자의 ID를 가져오기 위한 쿼리
        String getUserIdSQL = "SELECT ID FROM USER_INFO WHERE TEL = ?";
        pstmt = connection.prepareStatement(getUserIdSQL);
        pstmt.setString(1, tel);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            userId = rs.getInt("ID");
            System.out.println("ID : " + userId);
        }
    } catch (Exception e) {
        out.println("Error retrieving user ID: " + e.getMessage());
    } finally {
        if (rs != null) try { rs.close(); } catch (Exception e) {}
        if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
    }

    if (userId != -1) {
%>

<h2>User Career Information</h2>
<table border="1">
    <tr>
        <th>Career ID</th>
        <th>User ID</th>
        <th>Company</th>
        <th>Work Start</th>
        <th>Work End</th>
    </tr>
    <%
        try {
            String userCareerSQL = "SELECT * FROM USER_CAREER WHERE ID = ?";
            pstmt = connection.prepareStatement(userCareerSQL);
            pstmt.setInt(1, userId);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int careerId = rs.getInt("CAREER_ID");
                String company = rs.getString("COMPANY");
                String workStart = rs.getString("WORK_START");
                String workEnd = rs.getString("WORK_END");
    %>
    <tr>
        <td><%= careerId %></td>
        <td><%= userId %></td>
        <td><%= company %></td>
        <td><%= workStart %></td>
        <td><%= workEnd %></td>
    </tr>
    <%
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        }
    %>
</table>

<h2>User Handicap Information</h2>
<table border="1">
    <tr>
        <th>Handicap ID</th>
        <th>User ID</th>
        <th>Is Handicapped</th>
        <th>Description</th>
    </tr>
    <%
        try {
            String userHandicapSQL = "SELECT * FROM USER_HANDICAP WHERE ID = ?";
            pstmt = connection.prepareStatement(userHandicapSQL);
            pstmt.setInt(1, userId);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int handicapId = rs.getInt("HANDICAP_ID");
                boolean isHandicapped = rs.getBoolean("IS_HANDICAPPED");
                String description = rs.getString("DESCRIPTION");
    %>
    <tr>
        <td><%= handicapId %></td>
        <td><%= userId %></td>
        <td><%= isHandicapped %></td>
        <td><%= description %></td>
    </tr>
    <%
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        }
    %>
</table>

<h2>User Education Information</h2>
<table border="1">
    <tr>
        <th>Education ID</th>
        <th>User ID</th>
        <th>Level</th>
        <th>State</th>
    </tr>
    <%
        try {
            String userEducationSQL = "SELECT * FROM USER_EDUCATION WHERE ID = ?";
            pstmt = connection.prepareStatement(userEducationSQL);
            pstmt.setInt(1, userId);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int educationId = rs.getInt("EDUCATION_ID");
                String level = rs.getString("LEVEL");
                String state = rs.getString("STATE");
    %>
    <tr>
        <td><%= educationId %></td>
        <td><%= userId %></td>
        <td><%= level %></td>
        <td><%= state %></td>
    </tr>
    <%
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        }
    %>
</table>

<h2>User Interest Information</h2>
<table border="1">
    <tr>
        <th>Interest ID</th>
        <th>User ID</th>
        <th>Interest</th>
    </tr>
    <%
        try {
            String userInterestSQL = "SELECT * FROM USER_INTEREST WHERE ID = ?";
            pstmt = connection.prepareStatement(userInterestSQL);
            pstmt.setInt(1, userId);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int interestId = rs.getInt("INTEREST_ID");
                String interest = rs.getString("INTEREST");
    %>
    <tr>
        <td><%= interestId %></td>
        <td><%= userId %></td>
        <td><%= interest %></td>
    </tr>
    <%
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) {}
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) {}
        }
    %>
</table>

<%
    } else {
        out.println("<p>User ID not found for the given TEL.</p>");
    }
%>
</body>
</html>
