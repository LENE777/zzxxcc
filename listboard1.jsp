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

<title>ㅁㅁ게시판</title>
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
	
		<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
			<tr>
				<td bgcolor=282828 align=center>
				<font size=5><a href=listboard1.jsp>ㅁㅁ</a></font>&nbsp;&nbsp;&nbsp;&nbsp; 
				<font size=5><a href=listboard2.jsp>ㄴㄴ</a></font>&nbsp;&nbsp;&nbsp;&nbsp; 
				<font size=5><a href=listboard3.jsp>ㅇㅇ</a></font>&nbsp;&nbsp;&nbsp;&nbsp; 
				<font size=5><a href=listboard4.jsp>ㄹㄹ</a></font>
				</td>
			</tr>
		</TABLE>
	</center>
	<%
	String pageno = request.getParameter("pageno");
	if (pageno == null) {
		pageno = "1";
	}

	int listSize = 5;
	int currentPage = Integer.parseInt(pageno);
	int startRow = (currentPage - 1) * listSize + 1;
	int endRow = currentPage * listSize;
	int lastRow = 0;
	int i = 0;
	int no[] = { 0 };

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/zxc";

	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "root", "1234");

	Statement stmt = conn.createStatement();

	String strSQL = "SELECT * FROM gm1 ORDER BY no DESC";
	ResultSet rs = stmt.executeQuery(strSQL);

	while (rs.next()) {
		no[i] = rs.getInt("no");
	}
	lastRow = no[0];
	%>

	<center>
		<TABLE bgcolor='282828'  border='0' width='600' cellpadding='' cellspacing='0'>
			<TR>
				<TD><hr size='1' noshade></TD>
			</TR>
		</TABLE>
		<table bgcolor=282828 width='600'cellpadding=3 cellspacing=3>
			<tr>
				<td align="center"><font color='ffffff' size='5'><b> ㅁㅁ게시판 </b></font>
				</td>
			</tr>
		</table>
		
		<TABLE bgcolor='282828'  border='0' width='600' cellpadding='0' cellspacing='0'>
			<TR>
				<TD><hr size='1' noshade></TD>
			</TR>
		</TABLE>
		<TABLE bgcolor='282828'  border=0 width=600 cellpadding=5 cellspacing=0>
			<tr>
				<td align=left></td>
				<TD align='right'><a href='write1.jsp'>[등록] &nbsp; </a></TD>
			</TR>
		</TABLE>
		<TABLE bgcolor='282828'  border='0' width='600' cellpadding='0' cellspacing='0'>
			<TR>
				<TD><hr size='1' noshade></TD>
			</TR>
		</TABLE>
		<TABLE bgcolor='282828'  border='0' cellspacing=1 cellpadding=2 width='600'>

			<TR bgcolor='282828'>
				<TD><font color='ffffff' size=2><center>
							<b>번호</b>
						</center></font></TD>
				<TD><font color='ffffff' size=2><center>
							<b>글 제목</b>
						</center></font></TD>
				<TD><font color='ffffff' size=2><center>
							<b>작성자</b>
						</center></font></TD>
				<TD><font color='ffffff' size=2><center>
							<b>작성일</b>
						</center></font></TD>
				<TD><font color='ffffff' size=2><center>
							<b>조회</b>
						</center></font></TD>
			</TR>
		
			<%
			if (lastRow > 0) {
				strSQL = "select * from gm1 where no between " + startRow + " and " + endRow;
				rs = stmt.executeQuery(strSQL);

				for (i = 0; i < listSize; i++) {
					if (rs.next()) {

				int listno = rs.getInt("no");
				String id = rs.getString("id");
				String title = rs.getString("title");
				String date = rs.getString("date");
				int count = rs.getInt("count");
			%>

			<TR bgcolor='ededed'>
				<TD align=center><font size=2 color='black'><%=listno%></font></TD>
				<TD align=left><a href="write_output1.jsp?no=<%=listno%>">
				<font size=2 color="black"><%=title%></font>
				</a></TD>
				<TD align=center><font size=2 color="black"><%=id%></font></TD>
				<TD align=center><font size=2><%=date%></font></TD>
				<TD align=center><font size=2><%=count%></font></TD>
			</TR>
		
			<%
			}
			}
			%>
</TABLE>

		<TABLE bgcolor='282828'  border='0' width='600' cellpadding='' cellspacing='0'>
			<TR>
				<TD><hr size='1' noshade></TD>
			</TR>
		</TABLE>
		
		<%
		rs.close();
		stmt.close();
		conn.close();
		}

		if (lastRow > 0) {
		int setPage = 1;
		int lastPage = 0;
		if (lastPage % listSize == 0)
			lastPage = lastRow / listSize;
		else
			lastPage = lastRow / listSize + 1;

		if (currentPage > 1) {
		%>
		<a href="listboard1.jsp?pageno=<%=currentPage - 1%>">[이전]</a>
		<%
		}
		while (setPage <= lastPage) {
		%>
		<a href="listboard1.jsp?pageno=<%=setPage%>">[<%=setPage%>]
		</a>
		<%
		setPage = setPage + 1;
		}
		if (lastPage > currentPage) {
		%>
		<a href="listboard1.jsp?pageno=<%=currentPage + 1%>">[다음]</a>
		<%
		}
		}
		%>
	</center>
</body>
</html>
