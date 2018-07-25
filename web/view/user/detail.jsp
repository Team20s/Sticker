<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="fmt3" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
td {
	width: 60%;
}

td>input {
	width: 100%;
}

.table_title {
	width: 30%;
}

.table_content {
	position: relative;
	height: 240px;
}

span, p {
	color: black;
}

#moim_image {
	width: 100%;
	height: 220px;
}

#btn_cancel1 {
	position: absolute;
	background: red;
	color: white;
	right: 110px;
	bottom: 10px;
}

#btn_cancel {
	position: absolute;
	background: red;
	color: white;
	right: 10px;
	bottom: 10px;
}

#btn_close {
	background: red;
	color: white;
	border-color: red;
}

#btn_edit {
	background: green;
	color: white;
	border-color: green;
}

.btn-group {
	margin-left: 8px;
	margin-bottom: 10px;
	height: 40px;
}
</style>
<script>

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

function register(f) {
	var pwd = document.querySelector('#pwd');
	var pwdCheck = document.querySelector('#pwdCheck');

	if (pwdCheck.value.length != 0 && pwd.value.length != 0 && pwdFlag == 1) {
		f.method = 'post';
		f.action = 'pwdupdateimpl.st';
		f.submit();
	} 
};

	
</script>
</head>
<body>
	<!-- current day and time -->
	<jsp:useBean id="today" class="java.util.Date" />
	<jsp:useBean id="systime" class="java.util.Date" />

	<fmt2:formatDate value="${today }" pattern="yyyy-MM-dd" var="today" />
	<fmt3:formatDate value="${systime }" pattern="HH:mm:ss" var="systime" />

	<!-- 친목도모 Section -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3 coloured">
		<main class="hoc container clear"> <!-- main body -->
		<div class="container">
			<h4>My Page</h4>
			<table class="table">
				<tr>
					<td class="table_title">아이디(닉네임)</td>
					<td>${userId }</td>
				</tr>
				<tr>
					<td class="table_title">이름</td>
					<td>${user.name }</td>
				</tr>
				<tr>
					<td class="table_title">비밀번호</td>
					<td>
						<button type="button" class="btn" data-toggle="modal"
							data-target="#myModal">수정하기</button>
					</td>
				</tr>
				<tr>
					<td class="table_title">생년월일</td>
					<td>${user.birth }</td>
				</tr>
			</table>
		</div>

		<div class="modal" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">비밀번호 수정</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<form action="pwdupdateimpl.st" method="post" name="frm" id="frm">
						<div class="modal-body">

							<table class="table">
								<tr>
									<td class="table_title">새 비밀번호</td>
									<td><input type="password" id="pwd" name="pwd"
										onblur="checkPwd();"></td>
								</tr>
								<tr>
									<td class="table_title">새 비밀번호 확인</td>
									<td><input type="password" id="pwdCheck" name="pwdCheck"
										onblur="checkPwdCheck();"></td>
								</tr>
							</table>
							<div id="spwd"></div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<input id="btn_edit" type="submit" class="btn btn-success"
								data-dismiss="modal" value="수정" onclick="register(this.form);">
							<button id="btn_close" type="button" class="btn btn-danger"
								data-dismiss="modal">닫기</button>
						</div>

					</form>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="btn-group">
				<div class="form-group">
					<div class="row">
						<div class="btn-group">
							<a id="apply" class="btn" href="mypage.st?cmd=join"> 신청한 모임내역 </a> 
							<a id="create" class="btn" href="mypage.st?cmd=my"> 개설한 모임 내역 </a>
						</div>
					</div>
				</div>
			</div>
			<table class="table">
				<% int count = 0; %>
				<c:forEach items="${list }" var="item" varStatus="forStatus">
					<!-- String date format change Date. -->
					
					<fmt:parseDate value="${item.sDate }" var="sdate"
						pattern="yyyy-MM-dd" />
					<fmt:parseDate value="${item.eDate }" var="edate"
						pattern="yyyy-MM-dd" />
					<fmt:parseDate value="${item.applySDate }" var="applysdate"
						pattern="yyyy-MM-dd" />
					<fmt:parseDate value="${item.applyEDate }" var="applyedate"
						pattern="yyyy-MM-dd" />
					<fmt:parseDate value="${item.sTime }" var="stime"
						pattern="HH:mm" />
					<fmt:parseDate value="${item.eTime }" var="etime"
						pattern="HH:mm" />
					<fmt:parseDate value="${item.applySTime }" var="applystime"
						pattern="HH:mm" />
					<fmt:parseDate value="${item.applyETime }" var="applyetime"
						pattern="HH:mm" />

					<!-- date Pattern change -->
					<fmt:formatDate value="${sdate }" pattern="yyyy-MM-dd" var="sdate" />
					<fmt:formatDate value="${edate }" pattern="yyyy-MM-dd" var="edate" />
					<fmt:formatDate value="${applysdate }" pattern="yyyy-MM-dd"
						var="applysdate" />
					<fmt:formatDate value="${applyedate }" pattern="yyyy-MM-dd"
						var="applyedate" />
					<fmt:formatDate value="${stime }" pattern="HH:mm" var="stime" />
					<fmt:formatDate value="${etime }" pattern="HH:mm" var="etime" />
					<fmt:formatDate value="${applystime }" pattern="HH:mm"
						var="applystime" />
					<fmt:formatDate value="${applyetime }" pattern="HH:mm"
						var="applyetime" />
					<tr>
						<td class="table_title"><a href="#"><img
								src="img/${item.moimImg }" id="moim_image"></a></td>
						<td>
							<div class="table_content">
								<div>
									<button type="button" class="btn" disabled>
									
										<c:choose>
											<c:when test="${sdate > today}">
												진행 전
											</c:when>
											<c:when test="${edate < today}">
												모임종료
											</c:when>
											<c:otherwise>
												진행 중
											</c:otherwise>
										</c:choose>
									</button>
								</div>
								<div>
									<h3>${title }</h3>
									<span>모임기간 : </span> <span id="sdate">${sdate }
										${stime }</span>
									<c:choose>
										<c:when test="${edate == sdate }">
										 ~ <span id="edate">${etime }</span>
										</c:when>
										<c:otherwise>
										 ~ <span id="edate">${edate } ${etime }</span>
										</c:otherwise>
									</c:choose>
								</div>
								<div>
									<span>모임장소 : </span><span>${item.place }</span>
								</div>
								<c:choose>
									<c:when test="${check == 'my' }">
										<a id="btn_cancel1" class="btn btn_danger" href="deletemoim.st?cmd=my&moimId=${item.moimId }">개설취소</a>
										<a id="btn_cancel" class="btn btn_danger" href="updatemoim.st?moimId=${item.moimId }">정보수정</a>
									</c:when>
									<c:when test="${sdate > today}">
										<a id="btn_cancel" class="btn btn_danger" href="deletemoim.st?cmd=join&moimId=${item.moimId }">신청취소</a>
									</c:when>
								</c:choose>
							</div>
						</td>
					</tr>
					<% count++;%>
				</c:forEach>
			</table>
		</div>
		<div class="clear"></div>
		</main>
	</div>

</body>
</html>