<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/chap08_member/pictureimgForm.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 사진 등록</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css" >
</head>
<body>
<h3>업로드</h3>
<form action="pictureimg" method="post" 
enctype="multipart/form-data">
  <input type="file" name="uploadpic">
  <input type="submit" value="사진등록">
</form>
</body>
</html>