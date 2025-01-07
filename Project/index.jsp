<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<link rel="stylesheet" type="text/css" href="style.css?after">
<html>
<head>
    <title>뮤지컬럼니스트</title>
</head>
<body>
    <h1 onclick="location.href='index.jsp';">뮤지컬 랭킹 Top 20</h1>
    <h2>Musicolumnist</h2>
    <div class="grid-container">
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicalDB?useUnicode=true&characterEncoding=UTF-8", "root", "041140");
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM musicals ORDER BY ranking LIMIT 20");
                while (rs.next()) {
                    int id = rs.getInt("id");
                    int rank = rs.getInt("ranking");
                    String name = rs.getString("name");
                    String cssClass = "";
                    if (rank == 1) {
                        cssClass = "first-place";
                    } else if (rank == 2) {
                        cssClass = "second-place";
                    } else if (rank == 3) {
                        cssClass = "third-place";
                    } else {
                        cssClass = "other-place";
                    }
        %>
                    <div class="grid-item <%= cssClass %>">
                        <a href="reviews.jsp?musicalId=<%= id %>">
                            <p><%= rank %>위 <%= name %></p>
                        </a>
                    </div>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
    </div>
</body>
</html>