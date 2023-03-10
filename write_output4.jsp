<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title> 게시판 </title>
<style type='text/css'>
<!--
	a:link		{font-family:"";color:white;text-decoration:none;}
	a:visited	{font-family:"";color:white;text-decoration:none;}
	a:hover		{font-family:"";color:white;text-decoration:underline;}
-->
</style>

</head>

<body>

<%
String no = request.getParameter("no"); 

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://127.0.0.1:3306/zxc";

Class.forName(driver);
Connection conn = DriverManager.getConnection(url,"root","1234");

PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	
String strSQL = "SELECT * FROM gm4 WHERE no = ?";
pstmt = conn.prepareStatement(strSQL);
pstmt.setInt(1, Integer.parseInt(no));

rs = pstmt.executeQuery();
rs.next();

String id = rs.getString("id");
String title = rs.getString("title");
String content = rs.getString("content").trim();
String date = rs.getString("date");
int count = rs.getInt("count");
%>

<center>
<table bgcolor='282828'width='600'cellpadding=5 cellspacing=5>
			<tr>
				<td align=left>
				<font size=4><a href='main.jsp'>HOME</a></font>
				</td>
				<td align=right>
				<font size=3><a href='logout.jsp'>로그아웃</a></font>
				</td>
		</table>
<TABLE bgcolor='282828' border='0' width='600' cellpadding=3 cellspacing=3>
	<TR>
    		<TD align='left'>
      		<font color='ffffff' size='2'>글번호: <%=no %> | 작성자 : <%=id %></font>
    		</TD>
    		
    		<TD align=right>
      		<font color='ffffff' size='2'>작성일: <%=date %> | 조회수: <%=count %></font>
    		</TD>
    	</TR>
</TABLE>
<TABLE bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
  	<TR>
  		<TD><hr size='1' noshade>
  		</TD>
  	</TR>
</TABLE>
<TABLE bgcolor='282828' border='0' cellspacing=0 cellpadding=0 width='600'>
	<TR>
		
		<TD align='center'>
    		<font color='ffffff' size='5'><b><%=title %></font>
		</TD>
	</TR>
</TABLE>
<TABLE bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
  	<TR>
  		<TD><hr size='1' noshade>
  		</TD>
  	</TR>
</TABLE>
<TABLE bgcolor='282828' border='0' cellspacing=0 cellpadding=0 width='600' height=300 >
	<TR>
		<TD><font color='ffffff' size='2' color=''>&nbsp;&nbsp;<%= content %></font>
		</TD>
	</TR>
</TABLE>
<TABLE bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
  	<TR>
  		<TD><hr size='1' noshade>
  		</TD>
  	</TR>
</TABLE>

<TABLE bgcolor='282828' border='0' width='600'>
	<TR>
		<td align='left'>
			<a href="modify_pass4.jsp?no=<%=no %>">[수정하기]</a>
			<a href="delete_pass4.jsp?no=<%=no %>">[삭제하기]</a>
		</td>
		
		<TD align='right'>
			<a href='write4.jsp'>[글쓰기]</a>
			<a href='listboard4.jsp'>[목록보기]</a>
 		</TD>
	</TR>
</TABLE>
<%
strSQL = "UPDATE gm4 SET count=count+1 WHERE no = ?";
pstmt = conn.prepareStatement(strSQL);
pstmt.setInt(1, Integer.parseInt(no));
pstmt.executeUpdate();

}catch(SQLException e){
   	out.print("SQL에러 " + e.toString());
}catch(Exception ex){
   	out.print("JSP에러 " + ex.toString());
}finally{  
	rs.close();
	pstmt.close();
	conn.close();
}
%>

</body>
</html>