<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    int reviewId = Integer.parseInt(request.getParameter("reviewId"));
    int musicalId = Integer.parseInt(request.getParameter("musicalId"));

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicalDB?useUnicode=true&characterEncoding=UTF-8", "root", "041140");
        String sql = "DELETE FROM reviews WHERE id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, reviewId);
        pstmt.executeUpdate();
        response.sendRedirect("reviews.jsp?musicalId=" + musicalId);
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>