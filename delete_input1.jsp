<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String no = request.getParameter("no");
String pw   = request.getParameter("pw"); 

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://127.0.0.1:3306/zxc";

Class.forName(driver);

Connection conn = DriverManager.getConnection(url,"root","1234");

PreparedStatement pstmt = null;
ResultSet rs = null;

String strSQL = "select pw from gm1 where no = ?";
pstmt = conn.prepareStatement(strSQL);
pstmt.setInt(1, Integer.parseInt(no));

rs = pstmt.executeQuery();
rs.next();

String goodpw = rs.getString("pw").trim();
if(pw.equals(goodpw)){
	strSQL = "delete from gm1 where no=?";
	pstmt = conn.prepareStatement(strSQL);
	pstmt.setInt(1, Integer.parseInt(no));
	pstmt.executeUpdate();
	
	strSQL = "update gm1 set no = no - 1 where no > ?";
	pstmt = conn.prepareStatement(strSQL);
	pstmt.setInt(1, Integer.parseInt(no));
	pstmt.executeUpdate();
	
	response.sendRedirect("listboard1.jsp");
} else {
	response.sendRedirect("delete_pass.jsp?no=" + no);
}

rs.close();
pstmt.close();
conn.close();
%>