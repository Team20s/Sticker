<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
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
@media ( min-width : 1200px) {
	.hoc {
		max-width: 700px;
	}
}

@media ( min-width : 992px) {
	.hoc {
		max-width: 700px;
	}
}

@media ( min-width : 768px) {
	.hoc {
		max-width: 700px;
	}
}

.hoc>div>div>h1 {
	text-align: center;
}

.hoc{
	margin-top: 60px; 
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

td {
	color: black;
}

.form-control {
	display: inline;
	width: 70%;
}

.table{
	border-color: white;
	text-align: center;
}

.td1{
	padding: 
}
</style>
<script>
	
</script>
</head>
<body id="top">
	<!-- Center -->
	<!-- ################################################################################################ -->
	<div class="hoc">
		<div>
			<div>
				<h1>로그인</h1>
			</div>
			<form action="loginimpl.st" method="post">
				<table class="table table-borderless">
					<tr>
						<td class="td1">아이디(닉네임)</td>
						<td><div class="form-group">
								<input type="text" name="id" id="id" class="form-control">
							</div></td>
					</tr>
					<tr>

						<td class="td1">비밀번호</td>
						<td><div class="form-group">
								<input type="password" name="pwd" id="pwd" class="form-control">
							</div></td>

					</tr>
					<tr>
						<td colspan="2">
							<div id="spwd">
								<c:if test="${loginStatus == 0 }">
									<span style="color: red;">ID 혹은 Password를 다시 확인해주세요</span>
								</c:if>
							</div>
						</td>
					</tr>
				</table>
				<br>
				<div class="form-group">
					<input type="submit" id="btn_login"
						class="btn btn-dark btn-lg btn-block" value="로그인">
				</div>
			</form>

		</div>
	</div>

	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
	<script src="layout/scripts/jquery.flexslider-min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>