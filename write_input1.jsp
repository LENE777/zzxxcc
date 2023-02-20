<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
String pw 		= request.getParameter("pw"); 
String title	= request.getParameter("title");
String content 	= request.getParameter("content");

String driver 	= "com.mysql.jdbc.Driver";
String url 		= "jdbc:mysql://127.0.0.1:3306/zxc";

Class.forName(driver);
Connection conn = DriverManager.getConnection(url,"root","1234");

PreparedStatement pstmt1, pstmt2 = null;

String sessionId = (String)session.getAttribute("id");

Calendar dateIn = Calendar.getInstance();
String indate = Integer.toString(dateIn.get(Calendar.YEAR)) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.MONTH)+1) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.DATE)) + " ";
indate = indate + Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
indate = indate + Integer.toString(dateIn.get(Calendar.MINUTE));
/*
String strSQL = "select max(no) from gm1";
pstmt1 = conn.prepareStatement(strSQL);
ResultSet rs = pstmt1.executeQuery();

int no = 1;
if(!rs.wasNull()){
	rs.next();
	no = rs.getInt(no) + 1;
}
*/
String strSQL ="INSERT INTO gm1(id, pw, date, count, title, content) VALUES (?,?,?,?,?,?)";
pstmt2 = conn.prepareStatement(strSQL);
pstmt2.setString(1, sessionId);
pstmt2.setString(2, pw);
pstmt2.setString(3, indate);
pstmt2.setInt(4, 0);
pstmt2.setString(5, title);
pstmt2.setString(6, content);
pstmt2.executeUpdate();

//rs.close();
//pstmt1.close();
pstmt2.close();
conn.close();

response.sendRedirect("listboard1.jsp"); 
%>

