<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="style.css?after">
<html>
 <%
        int musicalId = Integer.parseInt(request.getParameter("musicalId"));
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String musicalName = "";
        String musicalSummary = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicalDB?useUnicode=true&characterEncoding=UTF-8", "root", "041140");
            stmt = conn.createStatement();
            
            rs = stmt.executeQuery("SELECT m.name, d.summary FROM musicals m JOIN details d ON m.id = d.musical_id WHERE m.id=" + musicalId);
            if (rs.next()) {
                musicalName = rs.getString("name");
                musicalSummary = rs.getString("summary");
            }
            rs.close();
    %>
<head>
    <title><%= musicalName %>에 대한 이야기</title>
</head>
<body>
            <h1 onclick="location.href='index.jsp';">뮤지컬럼니스트</h1>
            <h2><%= musicalName %>에 대한 이야기</h2>
            <textarea id="summary" readonly><%= musicalSummary %></textarea>
            <form action="addReview.jsp" method="post">
                <input type="hidden" name="musicalId" value="<%= musicalId %>">
                <label for="reviewerName">작성자 :</label>
                <input type="text" id="reviewerName" name="reviewerName" required class="reviewer-name-input"><br>
                <label for="reviewText">리뷰 :</label>
                <textarea id="reviewText" name="reviewText" required class="review-text-textarea"></textarea><br>
                <input type="submit" value="작성">
            </form>
            <h3>리뷰 목록</h3>
            <ul>
    <%
            rs = stmt.executeQuery("SELECT * FROM reviews WHERE musical_id=" + musicalId);
            while (rs.next()) {
                int reviewId = rs.getInt("id");
				String reviewerName = rs.getString("reviewer_name");
                String reviewText = rs.getString("review_text");
                Date reviewDate = rs.getDate("review_date");
    %>
                <li>
                    <p><strong><%= reviewerName %></strong> (<%= reviewDate %>)</p>
                    <p><%= reviewText %></p>
                    <form action="deleteReview.jsp" method="post" style="display:inline;">
                        <input type="hidden" name="reviewId" value="<%= reviewId %>">
                        <input type="hidden" name="musicalId" value="<%= musicalId %>">
                        <input type="submit" value="삭제">
                    </form>
                    <form action="editReview.jsp" method="post" style="display:inline;">
                        <input type="hidden" name="reviewId" value="<%= reviewId %>">
                        <input type="hidden" name="musicalId" value="<%= musicalId %>">
                        <input type="submit" value="수정">
                    </form>
                </li>
    <%
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>
            </ul>
</body>
</html>