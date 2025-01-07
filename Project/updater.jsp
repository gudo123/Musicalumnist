<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 수정</title>
</head>
<body>
<%
    int reviewId = Integer.parseInt(request.getParameter("reviewId"));
    int musicalId = Integer.parseInt(request.getParameter("musicalId"));
    String reviewerName = request.getParameter("reviewerName");
    String reviewText = request.getParameter("reviewText");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicalDB?useUnicode=true&characterEncoding=UTF-8", "root", "041140");
        String sql = "UPDATE reviews SET reviewer_name=?, review_text=?, review_date=NOW() WHERE id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, reviewerName);
        pstmt.setString(2, reviewText);
        pstmt.setInt(3, reviewId);
        pstmt.executeUpdate();
        response.sendRedirect("reviews.jsp?musicalId=" + musicalId);
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>