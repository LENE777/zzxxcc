<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<head>
<title> 게시판 </title>

<SCRIPT language="JavaScript">
function Check()
{
if (Modify.pass.value.length < 1) {
	alert("비밀번호를 입력하세요.");
	Modify.pass.focus(); 
		return false;
	}
if (Modify.title.value.length < 1) {
	alert("글제목을 입력하세요.");
	Modify.title.focus(); 
		return false;
    }
if (Modify.contents.value.length < 1) {
	alert("글내용을 입력하세요.");
	Modify.content.focus(); 
		return false;
    }
Modify.submit();
}

function list()
{
location.href = "listboard1.jsp";
}

</SCRIPT>
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
	
String strSQL = "select*from gm1 where no=?";
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

<center><font size='3'><b> 게시판 글수정 </b></font>

<table border='0' width='600' cellpadding='0' cellspacing='0'>
	<tr>
		<td><hr size='1' noshade>
		</td>
	</tr>
</table>

<form Name='Modify' Action='modify_output.jsp' Method='POST' OnSubmit='return Check()'>
<input type='hidden' name='no' value='<%=no %>'>

<table border='0' width='600'>
	<tr>
		<td width='100' bgcolor='cccccc'>
			<font size='2'><center><b>작성자</b></center></font>
		</td>
		<td>
			<p><input type='text' size='12' name='id' value="<%=id %>"> * 필수 </p>
		</td>
	</tr>
	
	<tr>
		<td width='100' bgcolor='cccccc'>
			<font size='2'><center><b>비밀번호</b></center></font>
		</td>
		<td>
			<p><input type='text' size='12' name='pw'> * 필수 </p>
		</td>
	</tr>
	
	<tr>
		<td colspan='2'>
			<hr size='1' noshade>
		</td>
	</tr>
	
	<tr>
		<td width='100' bgcolor='cccccc'>
			<font size='2'><center><b>글 제목</b></center></font>
		</td>
		<td>
			<font size='2'><input type='text' size='70' maxlength='50' name='title' value="<%=title %>"></font>
		</td>
	</tr>
	
	<tr>
		<td bgcolor='cccccc'>
			<font size='2'><center><b>글 내용</b></center></font>
		</td>
		<td>
			<font size='2'>
			<textarea cols='70' rows='15' wrap='virtual' name='content'><%=content %></textarea>
			</font>
		</td>
	</tr>
	
	<tr>
		<td colspan='2'><hr size='1' noshade></td>
	</tr>
	
	<tr>
		<td align='center' colspan='2' width='100%'>
		<table>
			<tr>
				<td width='200' align='center'>
					<input type='Reset' value='다시 작성'>
				</td>
				<td width='200' align='center'>
					<input type='Submit' value='수정완료'>
				</td>
				<td width='200' align='center'>
					<input type='Button' value='목록' name='Page' onClick='list();'>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	
</table>

<%
}catch(SQLException e){
   	e.toString();
}catch(Exception ex){
   	ex.toString();
}finally{  
	rs.close();
	pstmt.close();
	conn.close();
}
%>

</body>
</html>