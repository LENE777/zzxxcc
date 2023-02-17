<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE> 회원 가입 </TITLE> 

<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type='text/css'>
<!--
	a:link		{font-family:"";color:white;text-decoration:none;}
	a:visited	{font-family:"";color:white;text-decoration:none;}
	a:hover		{font-family:"";color:white;text-decoration:underline;}
-->
</style>

<SCRIPT LANGUAGE="JavaScript">
function Check() 
{
if (member_input.id.value.length < 1){
	alert("아이디를 입력하세요.");
	member_input.id.focus();
	return false;
	}

if (member_input.pw.value.length < 1){
	alert("비밀번호를 입력하세요.");
	member_input.pw.focus();
	return false;
	}

if (member_input.name.value.length < 1){
	alert("이름을 입력하세요.");
	member_input.name.focus();
	return false;
	}
member_input.submit();
}
function Check_id() 
{
browsing_window = window.open("checkid.jsp?id="+member_input.id.value, "_idcheck","height=200,width=300, menubar=no,directories=no,resizable=no,status=no,scrollbars=yes");
browsing_window.focus();
}

</SCRIPT>     
</HEAD>
<BODY>
<center><font size='3'><b> 회원 가입 </b></font>  
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<FORM Name='member_input' Method='post' Action='member_output.jsp'>

<TABLE  border='2' cellSpacing=0 cellPadding=5 align=center>
<TR>
	<TD bgcolor=282828 align='center'>
		<font color=ffffff size='2'>아 이 디</font>
	</TD>
	<TD bgcolor=282828>
		<input type='text' maxLength='10' size='10' name='id'>
		<input type='button' OnClick='Check_id()' value='ID 중복검사'>
	</TD>
</TR>
<TR>
	<TD bgcolor=282828 align='center' >
		<font color=ffffff size='2'>비 밀 번 호</font>
	</TD>
	<TD bgcolor=282828>
		<input type='password' maxLength='10' size='10' name='pw'>
	</TD>
</TR>
<TR>
	<TD bgcolor=282828 align='center'>
		<font color=ffffff size='2'>이 름</font>
	</TD>
	<TD bgcolor=282828>
		<input type='text' maxLength='10' size='10' name='name'>
	</TD>
</TR>
<TR>
	<TD bgcolor=282828 align='center'>
		<font color=ffffff size='2'>전 화 번 호</font>
	</TD>
	<TD bgcolor=282828>
		<input type='text' maxlength='20' size='20' name='phone'>
	</TD>
</TR>
<TR>
	<TD bgcolor=282828 align='center'>
		<font color=ffffff size='2'>E - M a i l</font>
	</TD>
	<TD bgcolor=282828>
		<input type='text' maxlength='50' size='50' name='email'>
	</TD>
</TR>
<TR>
	<TD bgcolor=282828 align='center'>
		<font color=ffffff size='2'>주 소</font>
	</TD>
	<TD bgcolor=282828>
		<input type='text' maxlength='50' size='50' name='addr'><BR>
		
	</TD>
</TR>
</TABLE>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<TABLE>
<TR>
	<TD colspan='2' align='center'>
		<input type='button' OnClick='Check()' value='회원가입'>
		<input type='button' onclick="location.href='member.jsp'" value='돌아가기'>
	</TD>
</TR>
</TABLE>

</FORM>

</BODY>
</HTML>