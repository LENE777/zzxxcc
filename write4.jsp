<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE>게시판</TITLE>

<SCRIPT language="JavaScript">
	function Check() {
		if (write4.pw.value.length < 1) {
			alert("비밀번호를 입력하세요.");
			write4.pw.focus();
			return false;
		}

		if (write4.title.value.length < 1) {
			alert("글제목을 입력하세요.");
			write4.title.focus();
			return false;
		}

		if (write4.content.value.length < 1) {
			alert("글내용을 입력하세요.");
			write4.content.focus();
			return false;
		}

		write4.submit();
	}
</SCRIPT>
</HEAD>
<style type='text/css'>
<!--
	a:link		{font-family:"";color:white;text-decoration:none;}
	a:visited	{font-family:"";color:white;text-decoration:none;}
	a:hover		{font-family:"";color:white;text-decoration:underline;}
-->
</style>
<BODY>

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
		<table border=0 width=600 cellpadding=0 cellspacing=0>
			<tr>
				<td align=center bgcolor='282828'><font color='ffffff' size='3'>게시판 글쓰기</font></td>
			</tr>
		</table>
		<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
			<TR>
				<TD bgcolor='282828'><hr size='1' noshade></TD>
			</TR>
		</TABLE>

		<FORM Name='write' Action='write_input4.jsp' Method='post'
			OnSubmit='return Check()'>

			<TABLE border='2' width='600' cellpadding='5' cellspacing='0'>
				<TR>
					<TD width='100' bgcolor='282828'><font color='ffffff' size='2'><center>
								<b>비밀번호</b>
							</center></font></TD>
					<TD width='500' bgcolor='282828'>
						<p>
							<input type='password' size='12' name='pw'><font
								color='ffffff' size='2'>&nbsp;* 필수 (게시물 수정 삭제시 필요합니다.)</font>
						</p>
					</TD>
				</TR>
				<TR>
					<TD width='100' bgcolor='282828'><font color='ffffff' size='2'><center>
								<b>글 제목</b>
							</center></font></TD>
					<TD width='500' bgcolor='282828'><font size='2'><input
							type='text' size='50' maxlength='50' name='title'></font></TD>
				</TR>

				<TR>
					<TD bgcolor='282828'><font color='ffffff' size='2'><center>
								<b>글 내용</b>
							</center></font></TD>
					<TD width='500' bgcolor='282828'><font size='2'> <textarea
								cols='60' rows='15' wrap='virtual' name='content'></textarea>
					</font></TD>
				</TR>
			</table>
			<table border='0' width='600' cellpadding='0' cellspacing='0'>
				<TR>
					<TD bgcolor='282828' colspan='2'>
						<hr size='1' noshade>
					</TD>
				</TR>
			</table>

			<TABLE>
				<TR>
					<TD width='100' align='center'><input Type='Reset'
						Value='다시 작성'></TD>
					<TD width='200' align='center'><input Type='Submit' Value='등록'>
					</TD>
				</TR>
			</TABLE>




		</FORM>
</BODY>
</HTML>