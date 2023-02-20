<%@ page contentType = "text/html; charset=UTF-8" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<HTML>
<HEAD>
<TITLE> 회원 인증 </TITLE> 
</HEAD>

<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type='text/css'>
<!--
	a:link		{font-family:"";color:white;text-decoration:none;}
	a:visited	         {font-family:"";color:white;text-decoration:none;}
	a:hover		{font-family:"";color:white;text-decoration:underline;}
-->
</style>

<BODY>

<center><font size='5'><b> 비밀번호 찾기 </b></font>   

<TABLE bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>


<TABLE bgcolor='282828' width='600' cellSpacing='0' cellPadding='30' align='center' border='0' >
	
<%
String id = request.getParameter("id");
String name = request.getParameter("name");

try{

if (id == "" || name == "") {
%>
<TR>
	<TD align='center'>
	<font color='ffffff' size=2>ID와 이름을 입력하세요.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[돌아가기]</a>
	</TD>
</TR>
<%
} else {
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/zxc";

	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url,"root","1234");
	
	Statement stmt = conn.createStatement();

	String strSQL = "SELECT * FROM user where name='" + name + "'";
	ResultSet rs = stmt.executeQuery(strSQL);
	
	rs.next();
	
	String logname = rs.getString("name");
	String logid = rs.getString("id");

	if (!name.equals(logname)){
%>
<TR>
	<TD align="center">
	<font color='ffffff' size='2'>회원이 아닙니다.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="pwsearch.jsp">[돌아가기]</a>
	</TD>
</TR>
<%
	} else { 
		if (!id.equals(logid)){
%>

<TR>
	<TD align='center'>
	<font color='ffffff' size=2>아이디가 일치하지 않습니다.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="pwsearch.jsp">[돌아가기]</a>
	</TD>
</TR>

<%
		} else {
	strSQL = "SELECT pw FROM user where name='" + name + "'";
	rs = stmt.executeQuery(strSQL);
	rs.next();
	String seaPw = rs.getString("pw");
%>
	<tr>
	<td align=center>
	<font color='ffffff' size=3>비밀번호는 '<%=seaPw %>' 입니다.</font></td>
</tr>
<tr>
<td align=center>
	<a href=member.jsp>[로그인]</a></td>
	</tr>
<%
			
		}
	}	
}

} catch(Exception e){
%>
<TR>
	<TD align="center">
	<font size='2'>회원이 아닙니다2.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="pwsearch.jsp">[돌아가기]</a>
	</TD>
</TR>

<%
}
%>

</TABLE>
<TABLE bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>
</BODY>
</HTML>
