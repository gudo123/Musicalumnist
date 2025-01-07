<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    int musicalId = Integer.parseInt(request.getParameter("musicalId"));
    String reviewerName = request.getParameter("reviewerName");
    String reviewText = request.getParameter("reviewText");
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicalDB?useUnicode=true&characterEncoding=UTF-8", "root", "041140");
        String sql = "INSERT INTO reviews (musical_id, reviewer_name, review_text, review_date) VALUES (?, ?, ?, NOW())";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, musicalId);
        pstmt.setString(2, reviewerName);
        pstmt.setString(3, reviewText);
        pstmt.executeUpdate();
        response.sendRedirect("reviews.jsp?musicalId=" + musicalId);
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
