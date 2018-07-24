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

.hoc{
	margin-top: 60px; 
}

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
	margin-bottom: 20px;
}

/* 박스 안 버튼 색깔 조정 */
.btn-dark:hover, .btn-dark, .btn-dark:active, .btn-dark:visited {
	background-color: #AE32C7;
	border-color: white;
}

.form-group {
	color: black;
}
</style>
<script>

	//ID double check
	$(document).ready(function(){
		$('#idCheck').click(function(){
			//alert($('#id').val());
			$.ajax({
				type:"POST",
				url:"idCheck.st",
				data:{
					"id": $('#id').val()
				},
				success:function(data){
					if($.trim(data.result)=="YES"){
						//alert('ID가 중복되었습니다. 다시 입력해주세요!');
						$('#sid').html('<span class="text-danger">ID가 중복되었습니다. 다시 입력해주세요!</span>')
					} else{
						//alert('사용가능 ID 입니다.');
						$('#sid').html('<span class="text-success">멋진 아이디네요!</span>');
					}
				}
			});
		});
	});
	
	function checkId() {
		// 영어로 시작하고 6자리 이상
		// 영문과 숫자가 반드시 입력
		var id = document.querySelector('#id');
		var sid = document.querySelector('#sid');
		
		if (id.value.length == 0) {
			sid.innerHTML = '<span class="text-danger">필수 정보입니다.</span>'
			return;
		}
		if (id.value.length > 0) {
				return;
		}else {
			sid.innerHTML = '<span class="text-danger">아이디가 너무 짧습니다!</span>'
			return;
		}

	};

	var pwdFlag = 0;
	function checkPwd() {
		// 영어로 시작하고 8자리 이상
		// 숫자와 특수문자가 반드시 포함
		var pwd = document.querySelector('#pwd');
		var spwd = document.querySelector('#spwd');

		if (pwd.value.length == 0) {
			spwd.innerHTML = '<span class="text-danger">필수 정보입니다.</span>'
			pwdFlag = 0;
			return;
		}

		if (pwd.value.length >= 8) {
			var exp = /(?=.*[a-z])(?=.*[0-9])(?=.*[^a-z0-9])/;
			if (!exp.test(pwd.value)) {
				spwd.innerHTML = '<span class="text-danger">8자리 이상의 영문, 숫자, 특수문자를 사용하세요.</span>'
				pwdFlag = 0;
				checkPwdCheck();
				return;
			} else {
				spwd.innerHTML = '<span class="text-success">정상 입력되었습니다.</span>'
				checkPwdCheck();
				return;
			}
		} else {
			spwd.innerHTML = '<span class="text-danger">8자리 이상의 영문, 숫자, 특수문자를 사용하세요.</span>'
			pwdFlag = 0;
			checkPwdCheck();
			return;
		}
	};
	
	function checkPwdCheck(){
		var pwd = document.querySelector('#pwd');
		var pwdCheck = document.querySelector('#pwdCheck');
		var exp = /(?=.*[a-z])(?=.*[0-9])(?=.*[^a-z0-9])/;
		
		if(pwd.value == pwdCheck.value && exp.test(pwd.value)){
			spwdCheck.innerHTML = '<span class="text-success">비밀번호가 확인되었습니다.</span>'
			pwdFlag = 1;
			return;
		}
		
		if(pwd.value != pwdCheck.value){
			spwdCheck.innerHTML = '<span class="text-danger">비밀번호를 다시 확인해주세요.</span>'
			pwdFlag = 0;
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

	var birthFlag = 0;
	function checkBirth() {
		var year = document.querySelector('#year');
		var month = document.querySelector('#month');
		var day = document.querySelector('#day');
		var sbirth = document.querySelector('#sbirth');

		if (year.value.length == 0 || month.value.length == 0 || day.value.length == 0) {
			sbirth.innerHTML = '<span class="text-danger">필수 정보입니다.</span>'
			birthFlag = 0;
			return;
		}

		if (year.value > 2018 || 1900 > year.value || month.value > 12 || month.value < 1 || day.value > 31 || day.value < 1) {
			sbirth.innerHTML = '<span class="text-danger">다시 입력해주세요.</span>'
			birthFlag = 0;
			return;
		} else {
			sbirth.innerHTML = '<span class="text-success">정상 입력되었습니다.</span>'
			birthFlag = 1;
			return;
		}
	};

	function register(f) {
		var id = document.querySelector('#id');
		var pwd = document.querySelector('#pwd');
		var year = document.querySelector('#year');
		var month = document.querySelector('#month');
		var day = document.querySelector('#day');
		var sregister = document.querySelector('#sregister');

		if (id.value.length != 0 && pwd.value.length != 0 && year.value.length != 0 &&
			month.value.length != 0 && day.value.length != 0 && pwdFlag == 1 && birthFlag == 1) {
			console.log(birthFlag);
			f.method = 'post';
			f.action = 'registerimpl.st';
			f.submit();
		} else {
			sregister.innerHTML = '<span class="text-danger">필수항목을 모두 입력해주세요.</span>'
		}
	};
	
</script>
</head>
<body id="top">
	<!-- Center -->
	<!-- ################################################################################################ -->
	<div class="hoc">
		<div>
			<div>
				<h1>회원가입</h1>
			</div>
			<form action="registerimpl.st" method="post" name="frm" id="frm">
				<div class="form-group">
					<label style="display: block;">아이디(닉네임) :</label> <input
						type="text" name="id" id="id" class="form-control"
						onblur="checkId();" style="width: 85%; display: inline;">
						
					<!-- ID double check button -->
					<input type="button" name="idCheck" id="idCheck"
						class="btn btn-link" value="ID 중복체크" style="display: inline;">
						
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
					<button class="btn btn-dark btn-lg btn-block" onclick="register(this.form);">회원가입</button>
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