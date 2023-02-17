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
if (idsearch.name.value.length < 1){
	alert("이름을 입력하세요.");
	idsearch.pass.focus();
	return false;
	}

if (idsearch.phone.value.length < 1){
	alert("전화번호를 입력하세요.");
	idsearch.name.focus();
	return false;
	}

idsearch.submit();
}

</SCRIPT>     
</head>
<body>
<center><font size='3'><b> 아이디 찾기 </b></font>  
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<FORM Name='idsearch' Method='post' Action='id_ok.jsp'>

<TABLE bgcolor='282828' border='0' cellSpacing=0 cellPadding=5 align=center>
<TR>
	<TD align='center'>
		<font color=ffffff size='2'>이 름</font>
	</TD>
	<TD >
		<input type='text' maxLength='10' size='10' name='name'>
	</TD>
</TR>
<TR>
	<TD align='center'>
		<font color=ffffff size='2'>전 화 번 호</font>
	</TD>
	<TD>
		<input type='text' maxlength='20' size='20' name='phone'>
	</TD>
</TR>
</TABLE>
<TABLE bgcolor='282828' border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>
<TABLE bgcolor='282828'>
<TR>
	<TD colspan='2' align='center'>
		<input type='button' onclick="location.href='member.jsp'" value='돌아가기'>
		<input type='button' OnClick='Check()' value='아이디 찾기'>
	</TD>
</TR>
</TABLE>
</body>
</html>