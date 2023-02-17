<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<SCRIPT LANGUAGE="JavaScript">
function Check() 
{
if (idsearch.id.value.length < 1){
	alert("아이디를 입력하세요.");
	Member_Input.id.focus();
	return false;
	}

if (idsearch.phone.value.length < 1){
	alert("비밀번호를 입력하세요.");
	Member_Input.pass.focus();
	return false;
	}

if (idsearch.email.value.length < 1){
	alert("이름을 입력하세요.");
	Member_Input.name.focus();
	return false;
	}

idsearch.submit();
}

</SCRIPT>     
</head>
<body>
<center><font size='3'><b> 비밀번호 찾기 </b></font>  
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<FORM Name='member_input' Method='post' Action='member_output.jsp'>

<TABLE  border='2' cellSpacing=0 cellPadding=5 align=center>
<TR>
	<TD bgcolor='000000' align='center'>
		<font color=ffffff size='2'>아 이 디</font>
	</TD>
	<TD bgcolor='000000'>
		<input type='text' maxLength='10' size='10' name='name'>
	</TD>
</TR>
<TR>
	<TD bgcolor='000000' align='center'>
		<font color=ffffff size='2'>이 름</font>
	</TD>
	<TD bgcolor='000000'>
		<input type='text' maxLength='10' size='10' name='name'>
	</TD>
</TR>
<TR>
	<TD bgcolor='000000' align='center'>
		<font color=ffffff size='2'>전 화 번 호</font>
	</TD>
	<TD bgcolor='000000'>
		<input type='text' maxlength='20' size='20' name='phone'>
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
		<input type='button' onclick="location.href='member.jsp'" value='돌아가기'>
		<input type='button' OnClick='Check()' value='비밀번호 찾기'>
	</TD>
</TR>
</TABLE>
</body>
</html>