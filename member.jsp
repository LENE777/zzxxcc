<%@ page contentType="text/html; charset=UTF-8"%>

<HTML>
<HEAD>
<TITLE>로그인</TITLE>

<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<SCRIPT language="JavaScript">
	function Check() {
		if (Member.id.value.length < 1) {
			alert("아이디를 입력하세요.");
			Member.id.focus();
			return false;
		}

		if (Member.pw.value.length < 1) {
			alert("비밀번호를 입력하세요.");
			Member.pw.focus();
			return false;
		}
		Member.submit();
	}
</SCRIPT>

</HEAD>

<BODY>

	<center>
		<font size='3'><b> 로 그 인 </b></font>

		<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
			<TR>
				<TD><hr size='1' noshade></TD>
			</TR>
		</TABLE>


		<FORM Name='Member' Method='post' Action='member_ok.jsp'>

			<TABLE align=center width='300' border='0' cellpadding='10'
				cellspacing='0'>
				<TR>
					<TD bgcolor='282828' align='right'><font color=ffffff size='2'>ID :</font></TD>
					<TD bgcolor='282828' align='center'><input type=text maxlength=10 size=10 name=id></TD>
					<TD bgcolor='282828' align='left'><input onclick='Check()' type='button' value='로그인'></TD>
				</TR>
				<TR>
					<TD bgcolor='282828' align='right'><font color=ffffff size='2'>비밀번호	: </TD>
					<TD bgcolor='282828' align='center'><input type='password'	maxlength='10' size='10' name='pw'></TD>
					<TD bgcolor='282828'><font size='2'> <a href="member_input.jsp">[회원가입]</a></font></TD>
				</TR>


			</TABLE>
			<table align=center width=300 border=0 cellpadding=2 cellspacing=0>
				<tr>
					<td bgcolor=282828 align=center>
						<font size=2>
						<a href=idsearch.jsp>아이디 찾기</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href=pwsearch.jsp>비밀번호 찾기</a></font></td>
				</tr>
			</table>
		</FORM>
</BODY>
</HTML>
