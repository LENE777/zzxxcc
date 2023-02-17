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
	<TABLE border='0' width='600' cellpadding='5' cellspacing='10'>
		<tr>
			<td bgcolor=282828 align=center>
				<font size=5><a href=listboard1.jsp>게임1</a></font>&nbsp;&nbsp;&nbsp;&nbsp;
				<font size=5><a href=listboard2.jsp>게임2</a></font>&nbsp;&nbsp;&nbsp;&nbsp;
				<font size=5><a href=listboard3.jsp>게임3</a></font>&nbsp;&nbsp;&nbsp;&nbsp;
				<font size=5><a href=listboard4.jsp>게임4</a></font>
			</td>
		</tr>
	</TABLE>
	<br>
	<img src="img/5091110.jpg" width='800' height='600'>
</center>

</body>
</html>
