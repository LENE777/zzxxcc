<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
int no = Integer.parseInt(request.getParameter("no"));
String id   = request.getParameter("id");  
String pw   = request.getParameter("pw"); 
String title  = request.getParameter("title");
String content  = request.getParameter("content");

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://127.0.0.1:3306/zxc";

Class.forName(driver);
Connection conn = DriverManager.getConnection(url,"root","1234");

PreparedStatement pstmt = null;

Calendar dateIn = Calendar.getInstance();
String indate = Integer.toString(dateIn.get(Calendar.YEAR)) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.MONTH)+1) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.DATE)) + " ";
indate = indate + Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
indate = indate + Integer.toString(dateIn.get(Calendar.MINUTE)) + ":";
indate = indate + Integer.toString(dateIn.get(Calendar.SECOND));
	
pstmt = conn.prepareStatement("update gm1 set id=?, pw=?, title=?, content=?, date=? where no=?");
pstmt.setString(1, id);
pstmt.setString(2, pw);
pstmt.setString(3, title);
pstmt.setString(4, content);
pstmt.setString(5, indate);
pstmt.setInt(6, no);
pstmt.executeUpdate();
                	
pstmt.close();
conn.close();

response.sendRedirect("listboard1.jsp"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>