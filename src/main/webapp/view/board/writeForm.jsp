<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/board/writeForm.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ��� �۾���</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
<script>
function board_submit() {
	var f = document.f;
	if (f.name.value=="") {
		alert("�̸��� �Է��ϼ���")
		f.name.focus();
		return ;
	}
	if (f.pass.value=="") {
		alert("��й�ȣ�� �Է��ϼ���")
		f.pass.focus();
		return ;
	}
	
	if (f.subject.value=="") {
		alert("������ �Է��ϼ���")
		f.subject.focus();
		return ;
	}
	
	if (f.content.value=="") {
		alert("������ �Է��ϼ���")
		f.content.focus();
		return ;
	}
	f.submit();
}


</script>
</head>
<body>
<form action="write" method="post" 
       enctype="multipart/form-data" name="f">
  <table>
   <caption>MODEL1 �Խ��� �۾���</caption>
   <tr><td>�۾���</td><td><input type="text" name="name"></td></tr>
   <tr><td>��й�ȣ</td><td><input type="password" name="pass"></td></tr>
   <tr><td>����</td><td><input type="text" name="subject"></td></tr>
   <tr><td>����</td><td><textarea rows="15" name="content"></textarea></td></tr>
   <tr><td>÷������</td><td><input type="file" name="uploadfile"></td></tr>
   <tr><td colspan="2">
     <a href="javascript:board_submit()">[�Խù����]</a></td></tr>
  </table></form></body></html>