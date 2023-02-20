<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String no = request.getParameter("no"); 
String pw = request.getParameter("pw");
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://127.0.0.1:3306/zxc";

Class.forName(driver);
Connection conn = DriverManager.getConnection(url,"root","1234");

PreparedStatement pstmt = null;
ResultSet rs = null;

String strSQL = "SELECT pw FROM gm3 WHERE no = "+no+"";
pstmt = conn.prepareStatement(strSQL);
//pstmt.setInt(1, Integer.parseInt(no));

rs = pstmt.executeQuery();
rs.next();

String goodpw = rs.getString("pw").trim();
if(pw.equals(goodpw)){
	response.sendRedirect("modify3.jsp?no=" + no);
} else {
	response.sendRedirect("modify_pass3.jsp?no=" + no);
}

rs.close();
pstmt.close();
conn.close();
%>
