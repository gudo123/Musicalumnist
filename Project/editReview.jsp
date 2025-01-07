<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="style.css?after">
<html>
<head>
    <title>리뷰 수정</title>
</head>
<body>
<%
    int reviewId = Integer.parseInt(request.getParameter("reviewId"));
    int musicalId = Integer.parseInt(request.getParameter("musicalId"));
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String reviewerName = "";
    String reviewText = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicalDB?useUnicode=true&characterEncoding=UTF-8", "root", "041140");
        String sql = "SELECT reviewer_name, review_text FROM reviews WHERE id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, reviewId);
        rs = pstmt.executeQuery();
        if (rs.next()) {
            reviewerName = rs.getString("reviewer_name");
            reviewText = rs.getString("review_text");
        }
    %>
        <h1>리뷰 수정하기</h1>
        <form action="updater.jsp" method="post">
            <input type="hidden" name="reviewId" value="<%= reviewId %>">
            <input type="hidden" name="musicalId" value="<%= musicalId %>">
            <label for="reviewerName">작성자 :</label>
			<input type="text" id="reviewerName" name="reviewerName" value="<%= reviewerName %>" required class="reviewer-name-input"><br>
			<label for="reviewText">리뷰 :</label>
			<textarea id="reviewText" name="reviewText" required class="review-text-textarea"><%= reviewText %></textarea><br>
            <input type="submit" value="수정">
        </form>
    <%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
</body>
</html>