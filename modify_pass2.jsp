<%@ page language="java" contentType="text/html; charset=utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<head>
<title> 게시판 수정 </title>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
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
%>

<center><font size='3'><b>비밀번호 확인</b></font>

<table bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
	<tr>
		<td><hr size='1' noshade>
		</td>
	</tr>
</table>

<form Action='modify_input2.jsp' Method='post'>
<input type='hidden' name='no' value='<%=no %>'>

<table bgcolor='282828' border='0' width='600' align='center'>
	<tr>
		<td align='center'>
			<font color='ffffff' size=2><b>비밀번호</b></font>
			<input type='password' name='pw' size=20 maxlength=20>
			<input type='submit' value=' 확 인 ' >
		</td>
	</tr>
</table>

<table bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
	<tr>
		<td><hr size='1' noshade>
		</td>
	</tr>
</table>
<table bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
<tr>
<td align='center'>
<a href='listboard2.jsp'>[목록 보기]</a>
</td>
</tr>
</table>
</form>

</body>
</html>