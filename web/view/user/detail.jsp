<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
td{
	width:60%;
}
.table_title{
	width:20%;
}

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

function change(n) {
	var apply = document.querySelector('#apply');
	var create = document.querySelector('#create');

	if (n == 1) {
		apply.innerHTML = '<button type="button" class="btn btn-dark btn-block" onclick="change(1);"> 신청한 모임 내역 </button>';
		create.innerHTML = '<button type="button" class="btn btn-outline-dark btn-block" onclick="change(2);"> 개설한 모임 내역 </button>';
	}

	if (n == 2) {
		apply.innerHTML = '<button type="button" class="btn btn-outline-dark btn-block" onclick="change(1);"> 신청한 모임 내역 </button>';
		create.innerHTML = '<button type="button" class="btn btn-dark btn-block" onclick="change(2);"> 개설한 모임 내역 </button>';
	}

};

</script>
</head>
<body>
<!-- 친목도모 Section -->
<!-- ################################################################################################ -->
<div class="wrapper row3 coloured">
  <main class="hoc container clear">
    <!-- main body -->
    <div class="container">
    	<h4>My Page</h4>
        <table class="table">
			<tr>
				<td class="table_title">아이디(닉네임)</td>
				<td>admin</td>
			</tr>        
			<tr>
				<td>이름</td>
				<td>김다은</td>
			</tr>        
			<tr>
				<td>비밀번호</td>
				<td><input type="button" value="수정하기" class="btn"></td>
			</tr>        
			<tr>
				<td>생년월일</td>
				<td>1992.12.8</td>
			</tr>        
        </table>
    </div>
    <div class="container">
    	<div class="btn-group">
			<div class="form-group">
					<div class="row">
						<div class="btn-group">
							<button type="button" name="apply" class="btn btn-outline-dark btn-block" onclick="change(1);"> 신청한 모임 내역 </button>
							<button type="button" name="create" class="btn btn-outline-dark btn-block" onclick="change(2);"> 개설한 모임 내역 </button>
						</div>
					</div>
				</div>		  
		</div>
		<div class="container">
			
		</div>
    </div>
    <p class="center" id="btn_more"><a class="btn inverse" href="#">더 보기</a></p>
    <div class="clear"></div>
  </main>
</div>

</body>
</html>