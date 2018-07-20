<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
a {
	color: black;
}

a:hover {
	text-decoration: none;
	color: #353535;
}

#mainLogo {
	width: 40px;
	height: 40px;
}

h1 {
	color: black;
}

/* 회원가입 박스 사이즈 조정 */
@media (min-width: 1200px){
	.container {
	    max-width: 700px;
	}
}

@media (min-width: 992px){
	.container {
	    max-width: 700px;
	}
}

@media (min-width: 768px){
	.container {
	    max-width: 700px;
	}
}

.container > div > div > h1{
	text-align: center;
}

/* 박스 안 버튼 색깔 조정 */

.btn-outline-dark:visited, .btn-dark:hover, .btn-outline-dark:active,
	.btn-outline-dark:hover, .btn-dark, .btn-dark:active, .btn-dark:visited
	{
	background-color: #AE32C7;
	border-color: white;
}

.btn-outline-dark {
	border-color: #AE32C7;
}


</style>
<script>
</script>
</head>
<body id="top">
	<!-- Top Navigation -->
	<!-- ################################################################################################ -->
	<div class="wrapper row0">
		<div id="topbar" class="hoc clear">
			<div class="fl_right">
				<ul>
					<li><a href="main.st"><i class="fa fa-lg fa-home"></i></a></li>
					<c:choose>
						<c:when test="${userId == null} ">
							<li><a href="login.st">로그인</a></li>
							<li><a href="register.st">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="logout.st">로그아웃</a></li>
							<li><a href="mypage.st">마이페이지</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="#">고객센터</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Center -->
	<!-- ################################################################################################ -->
	<div class="container">
		<h1>
			<img src="../../images/logo.png" id="mainLogo"><a
				href="index.html"> Sticker</a>
		</h1>
		<div>
			<div>
				<h1>로그인</h1>
			</div>
			<form action="loginimpl.st" method="post">

				<div class="form-group">
					아이디 :<input type="text" name="id" id="id" class="form-control">
				</div>

				<div class="form-group">
					비밀번호 :<input type="password" name="pwd" id="pwd"
						class="form-control">
					<div id="spwd">
						<c:if test="${loginStatus == 0 }">
							<span style="color:red;">ID 혹은 Password를 다시 확인해주세요</span>
						</c:if>
					</div>
				</div>

				<div class="form-group">
					<button type="button" class="btn btn-dark btn-lg btn-block">로그인</button>
				</div>

			</form>

		</div>
	</div>

	<!-- JAVASCRIPTS -->
	<script src="../../layout/scripts/jquery.min.js"></script>
	<script src="../../layout/scripts/jquery.backtotop.js"></script>
	<script src="../../layout/scripts/jquery.mobilemenu.js"></script>
	<script src="../../layout/scripts/jquery.flexslider-min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>