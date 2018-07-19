<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
   #mainLogo{
   	width: 40px;
   	height: 40px;
   }
   h1 {
   	color: black;
   }
   #pageintro{
   	margin-top: 70px;
   }
</style>
<script></script>
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
<div id="pageintro" class="hoc clear">
	<h1><a href="index.html"><img src="../../images/logo.png" id="mainLogo"> Sticker</a></h1>
	<div>
		<div>
			<h1>회원가입</h1>
		</div>
		<form>
			<div>
				<table>
					<tbody>
						<tr>
							<td>닉네임(아이디)</td>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="pwd"></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" name="pwdCheck"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>
</div>



<!-- JAVASCRIPTS -->
<script src="../../layout/scripts/jquery.min.js"></script>
<script src="../../layout/scripts/jquery.backtotop.js"></script>
<script src="../../layout/scripts/jquery.mobilemenu.js"></script>
<script src="../../layout/scripts/jquery.flexslider-min.js"></script>
</body>
</html>