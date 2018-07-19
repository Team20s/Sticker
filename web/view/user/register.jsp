<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet"
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

	function checkId() {
		// 영어로 시작하고 6자리 이상
		// 영문과 숫자가 반드시 입력
		var id = document.querySelector('#id');
		var sid = document.querySelector('#sid');

		if (id.value.length == 0) {
			sid.innerHTML = '<span class="text-danger">필수 정보입니다.</span>'
			return;
		}

		if (id.value.length >= 6) {
			var exp = /^[a-zA-Z][a-zA-Z0-9]+/; // ^[a-zA-Z] : 알파벳으로 시작해야 하며, [a-zA-Z0-9]+ : 영어나 숫자로 이루어져야 한다
			if (!exp.test(id.value)) {
				sid.innerHTML = '<span class="text-danger">6자리 이상의 영문과 숫자만 사용 가능합니다.</span>'
				return;
			} else {
				sid.innerHTML = '<span class="text-success">멋진 아이디네요!</span>'
				return;
			}
		} else {
			sid.innerHTML = '<span class="text-danger">6자리 이상의 영문과 숫자만 사용 가능합니다.</span>'
			return;
		}


	}
	;
	function checkPwd() {
		// 영어로 시작하고 8자리 이상
		// 숫자와 특수문자가 반드시 포함
		var pwd = document.querySelector('#pwd');
		var spwd = document.querySelector('#spwd');

		if (pwd.value.length == 0) {
			spwd.innerHTML = '<span class="text-danger">필수 정보입니다.</span>'
			return;
		}

		if (pwd.value.length >= 8) {
			var exp = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9])/;
			if (!exp.test(pwd.value)) {
				spwd.innerHTML = '<span class="text-danger">8자리 이상의 영문 대 소문자, 숫자, 특수문자를 사용하세요.</span>'
				return;
			} else {
				spwd.innerHTML = '<span class="text-success">정상 입력되었습니다.</span>'
				return;
			}
		} else {
			spwd.innerHTML = '<span class="text-danger">8자리 이상의 영문 대 소문자, 숫자, 특수문자를 사용하세요.</span>'
			return;
		}
	};
	
	var pwdFlag = 0;
	function checkPwdCheck(){
		var pwd = document.querySelector('#pwd');
		var pwdCheck = document.querySelector('#pwdCheck');
		var exp = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9])/;
		
		if(pwd.value == pwdCheck.value && exp.test(pwd.value)){
			spwdCheck.innerHTML = '<span class="text-success">정상 입력되었습니다.</span>'
			pwdFlag = 1;
			return;
		}
		
		if(pwd.value != pwdCheck.value && !exp.test(pwd.value)){
			spwdCheck.innerHTML = '<span class="text-danger">비밀번호를 다시 확인해주세요.</span>'
			console.log(pwd.value);
			console.log(pwdCheck.value);
			return;
		}
		
	}

	function checkName() {
		var name = document.querySelector('#name');
		var sname = document.querySelector('#sname');

		if (name.value.length == 0) {
			sname.innerHTML = '<span class="text-danger">필수 정보입니다.</span>'
			return;
		} else {
			sname.innerHTML = '<span class="text-success">정상 입력되었습니다.</span>'
			return;
		}

	}
	;

	function checkBirth() {
		var year = document.querySelector('#year');
		var month = document.querySelector('#month');
		var day = document.querySelector('#day');
		var sbirth = document.querySelector('#sbirth');

		if (year.value.length == 0 || month.value.length == 0 || day.value.length == 0) {
			sbirth.innerHTML = '<span class="text-danger">필수 정보입니다.</span>'
			return;
		}

		if (year.value > 2018 || 1900 > year.value || month.value > 12 || month.value < 1 || day.value > 31 || day.value < 1) {
			sbirth.innerHTML = '<span class="text-danger">다시 입력해주세요.</span>'
			return;
		} else {
			sbirth.innerHTML = '<span class="text-success">정상 입력되었습니다.</span>'
			return;
		}
	}
	;

	function gender(g) {
		var man = document.querySelector('#man');
		var woman = document.querySelector('#woman');
		var sex = document.querySelector('#sex');

		if (g == 1) {
			man.innerHTML = '<button type="button" class="btn btn-dark btn-block" onclick="gender(1);">남자</button>';
			woman.innerHTML = '<button type="button" class="btn btn-outline-dark btn-block" onclick="gender(2);">여자</button>';
			sex.value = 'man';
			console.log(sex.value);
		}

		if (g == 2) {
			man.innerHTML = '<button type="button" class="btn btn-outline-dark btn-block" onclick="gender(1);">남자</button>';
			woman.innerHTML = '<button type="button" class="btn btn-dark btn-block" onclick="gender(2);">여자</button>';
			sex.value = 'woman';
			console.log(sex.value);
		}

	}
	;

	function register(f) {
		var id = document.querySelector('#id');
		var pwd = document.querySelector('#pwd');
		var year = document.querySelector('#year');
		var month = document.querySelector('#month');
		var day = document.querySelector('#day');
		var sex = document.querySelector('#sex');
		var sregister = document.querySelector('#sregister');

		if (id.value.length != 0 && pwd.value.length != 0 && year.value.length != 0 &&
			month.value.length != 0 && day.value.length != 0 && sex.value.length != 0 && pwdFlag == 1) {
			f.method = 'post';
			f.action = 'register';
			f.submit();
		} else {
			sregister.innerHTML = '<span class="text-danger">필수항목을 모두 입력해주세요.</span>'
		}
	}
	;
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
			<img src="images/logo.png" id="mainLogo"><a
				href="index.html"> Sticker</a>
		</h1>
		<div>
			<div>
				<h1>회원가입</h1>
			</div>
			<form action="registerimpl.hw" method="post">

				<div class="form-group">
					아이디 :<input type="text" name="id" id="id" class="form-control"
						onblur="checkId();">
					<div id="sid"></div>
				</div>

				<div class="form-group">
					비밀번호 :<input type="password" name="pwd" id="pwd"
						class="form-control" onblur="checkPwd();">
					<div id="spwd"></div>
				</div>
				
				<div class="form-group">
					비밀번호 확인 :<input type="password" name="pwdCheck" id="pwdCheck"
						class="form-control" onblur="checkPwdCheck();">
					<div id="spwdCheck"></div>
				</div>

				<div class="form-group">
					이름 :<input type="text" name="name" id="name" class="form-control"
						onblur="checkName();">
					<div id="sname"></div>
				</div>

				<div class="form-group">
					생년월일 :
					<div class="row">
						<div class="col-4">
							<span> <input type="number" name="year" id="year"
								class="form-control" placeholder="년(4자)" onblur="checkBirth();">
							</span>
						</div>

						<div class="col-4">
							<span> <input type="number" name="month" id="month"
								class="form-control" placeholder="월" onblur="checkBirth();">
							</span>
						</div>

						<div class="col-4">
							<span> <input type="number" name="day" id="day"
								class="form-control" placeholder="일" onblur="checkBirth();">
							</span>
						</div>
					</div>
					<div id="sbirth"></div>
				</div>

				<div class="form-group">
					성별 : <input type="hidden" id="sex" name="sex">
					<div class="row">
						<div id="man" class="col-6">
							<button type="button" name="man"
								class="btn btn-outline-dark btn-block" onclick="gender(1);">남자</button>
						</div>
						<div id="woman" class="col-6">
							<button type="button" name="woman"
								class="btn btn-outline-dark btn-block" onclick="gender(2);">여자</button>
						</div>
					</div>
					<div id="sgender"></div>
				</div>

				<div class="form-group">
					<button type="button" class="btn btn-dark btn-lg btn-block"
						onclick="register(this.form);">회원가입</button>
					<div id="sregister"></div>
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