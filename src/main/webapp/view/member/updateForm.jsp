<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop Homepage</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css">
<script>
	function input_check(f) {
		<c:if test="${id ne 'admin'}">
		if (f.pass.value == "") {
			alert("��й�ȣ�� �Է��ϼ���");
			f.pass.focus();
			return false;
		}
		</c:if>
		return true;
	}
	function passchg_winopen() {
		var op = "width=500, height=230, left=50, top=150";
		open("passwordForm", "", op);
	}
	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", "", op);
	}
</script>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="main">Shop</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<!-- 
					<li class="nav-item active"><a class="nav-link" href="#">�Ұ�
							<span class="sr-only">(current)</span>
					</a></li>
					 -->

					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/project/Cart.jsp?id=${id}">��ٱ���</a></li>

					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/member/myPage?id=${id}">����������</a></li>

					<c:if test="${id eq ''}">
						<li class="nav-item"><a class="nav-link" href="loginForm">�α���</a></li>
					</c:if>
					<c:if test="${id ne ''}">
						<li class="nav-item"><a class="nav-link" href="logout">�α׾ƿ�</a></li>
					</c:if>

					<li class="nav-item"><a class="nav-link" href="joinForm">ȸ������</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=outer">����</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=top">����</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=bottom">����</a>
			<a class="nav-category-item"
				href="\project/project/projectServlet?command=catagory&kind=etc">��Ÿ</a>
			<a class="nav-category-item" href="/project/board/list">����</a><a
				class="nav-category-item" href="getCouponForm?id=${id}">����</a>
			<c:if test="${id eq 'admin'}">
				<a class="nav-category-item" href="addCouponForm?id=${id}">��������</a>
				<a class="nav-category-item" href="listCoupon?id=${id}">��������</a>
				<a class="nav-category-item" href="memberList">ȸ�����</a>
			</c:if>
		</div>
	</nav>


	<form class="container-md p-3 col-8 mb-5 mx-auto" action="update"
		name="f" method="post" onsubmit="return input_check(this)">
		</br>
		</br>
		</br>
		</br>
		</br>

		<div class="mb-3">
			<label for="inputPicture" class="form-label">���� </label><img
					src="<%=request.getContextPath()%>/memimg/${member.picture}" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">��������</a></font>
		</div>

		<div class="mb-3">
			<label for="inputId" class="form-label">���̵�: </label> <input
				type="hidden" class="form-control" id="inputId" name="id"
				value="${member.id}">${member.id}
		</div>

		<div class="mb-3">
			<label for="inputPassword" class="form-label">��й�ȣ</label> <input
				type="password" class="form-control" id="inputPassword" name="pass">
			<a data-role="button" href="passwordForm">��й�ȣ ����</a>
		</div>

		<div class="mb-3">
			<label for="inputName" class="form-label">�̸�: </label> <input
				type="hidden" class="form-control" id="inputName" name="name"
				value="${member.name}">${member.name}
		</div>

		<div class="mb-3">
			<label for="inputName" class="form-label">������</label> <input
				type="hidden" class="form-control" id="inputName" name="join_date"
				value="${member.join_date}">${member.join_date}
		</div>

		<div class="mb-3">
			<label for="inputBirth" class="form-label">�������: </label> <input
				type="hidden" class="form-control" id="inputBirth" name="birthday"
				value="${member.birthday}">${member.birthday}
		</div>

		<div class="mb-3">
			<label for="inputPhone" class="form-label">��ȭ��ȣ</label> 
			<input type="text" class="form-control" id="inputPhone" name="tel"
				value="${member.tel}">
		</div>

		<div class="mb-3">
			<label for="inputEmail" class="form-label">�̸���</label> <input
				type="text" class="form-control" id="inputEmail" name="email"
				value="${member.email}">
		</div>

		<div class="mb-3">
			<label for="inputAddress" class="form-label">�ּ�</label> <input
				type="text" class="form-control" id="inputAddress" name="address"
				value="${member.address}">
		</div>

		<div class="mb-3">
			<label for="inputAddress" class="form-label">�ݷ����� ����</label> <input
				type="text" class="form-control" id="inputPet_kind" name="pet_kind"
				value="${member.pet_kind}">
		</div>

		<div class="mb-3">
			<label for="inputAddress" class="form-label">�ݷ����� �̸�</label> <input
				type="text" class="form-control" id=inputPet_name name="pet_name"
				value="${member.pet_name}">
		</div>

		<div class="mb-3">
			<label for="inputAddress" class="form-label">�ݷ����� ����</label> <input
				type="text" class="form-control" id="inputPet_age" name="pet_age"
				value="${member.pet_age}">
		</div>



		<button type="submit" class="w-100 btn btn-lg btn-primary mb-5">�Ϸ�</button>

	</form>
	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>�������� : XXXX-XXXX</span> <span>&emsp;</span> <span>���̽���</span>
				<span>�ν�Ÿ�׷�</span>
			</p>
		</div>

		<hr style="width: 90%; border-color: gray;">

		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Shop 2021</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>

</body>

</html>