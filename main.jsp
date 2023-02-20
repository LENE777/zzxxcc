<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>게시판</title>
<style type='text/css'>
<!--
a:link {
	font-family: "";
	color: white;
	text-decoration: none;
}

a:visited {
	font-family: "";
	color: white;
	text-decoration: none;
}

a:hover {
	font-family: "";
	color: white;
	text-decoration: underline;
}
-->
</style>
</head>

<body>
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
	<TABLE border='0' width='600' cellpadding='5' cellspacing='0'>
		<tr>
			<td bgcolor=282828 align=center>
				<font size=5><a href=listboard1.jsp>ㅁㅁ</a></font>&nbsp;&nbsp;&nbsp;&nbsp;
				<font size=5><a href=listboard2.jsp>ㄴㄴ</a></font>&nbsp;&nbsp;&nbsp;&nbsp;
				<font size=5><a href=listboard3.jsp>ㅇㅇ</a></font>&nbsp;&nbsp;&nbsp;&nbsp;
				<font size=5><a href=listboard4.jsp>ㄹㄹ</a></font>
			</td>
		</tr>
	</TABLE>
	<table bgcolor='282828' width='600' height='500' cellpadding='10' cellspacing='0'>
	<tr>
	<td align=center>
	<img src="img/5091110.jpg" width='580' height='450'>
	</td>
	</tr>
	</table>
</center>

</body>
</html>
