<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../db_connection.jsp" %>

<html>
<head>
    <title>User Information</title>
</head>
<body>
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
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            String userCareerSQL = "SELECT * FROM USER_CAREER";
            pstmt = connection.prepareStatement(userCareerSQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int careerId = rs.getInt("CAREER_ID");
                int userId = rs.getInt("ID");
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
            String userHandicapSQL = "SELECT * FROM USER_HANDICAP";
            pstmt = connection.prepareStatement(userHandicapSQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int handicapId = rs.getInt("HANDICAP_ID");
                int userId = rs.getInt("ID");
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
            String userEducationSQL = "SELECT * FROM USER_EDUCATION";
            pstmt = connection.prepareStatement(userEducationSQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int educationId = rs.getInt("EDUCATION_ID");
                int userId = rs.getInt("ID");
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
            String userInterestSQL = "SELECT * FROM USER_INTEREST";
            pstmt = connection.prepareStatement(userInterestSQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int interestId = rs.getInt("INTEREST_ID");
                int userId = rs.getInt("ID");
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
</body>
</html>
