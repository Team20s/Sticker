<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
Template Name: Brickary
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html>
<head>
<title>Sticker</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <style>
/*   Global */
	a:hover{
		text-decoration: none;
	}
  
  
/* Header */
    #subnav{
      height: 20px;
      background: #CBCBCB;
    }
    #mainLogo{
    	width: 40px;
    	height: 40px;
    }
    #searchDiv{
    border: 1px solid #ced4da;;
    }
    #searchInput{
    border-color: white;
    }
    #searchBtn{
    background: white;
    border-color: white;
    }
/* Section */
    #btn_more{
      padding-top: 50px;
    }
  </style>
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
        	<c:when test="${userId == null}">
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
<!-- Header -->
<!-- ################################################################################################ -->
<div class="bgded overlay">
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <div class="group demo">
        <div class="one_third first"><div id="logo" class="fl_left">
          <h1><a href="main.st"><img src="images/logo.png" id="mainLogo"> Sticker</a></h1>
        </div></div>
        <div class="one_third "><div id="logo">
          <div class="input-group mb-3" id="searchDiv">
			  <input type="text" class="form-control" id="searchInput">
			  <div class="input-group-append">
			    <button class="btn btn-link" type="submit" id="searchBtn"><i class="fa fa-search" aria-hidden="true"></i></button> 
			  </div>
			</div>
        </div></div>
      </div>
    </header>
  </div>
<!-- Sub Navigation -->
<!-- ################################################################################################ -->
  <div class="wrapper row1">
    <nav id="header" class="hoc clear">
      <nav id="mainav" class="fl_left">
        <ul class="clear">
          <li><a href="moimlist.st?cmd=c1">친목도모</a></li>
          <li><a href="moimlist.st?cmd=c2">스터디 및 취업정보</a></li>
          <li>|</li>
          <c:choose>
          	<c:when test="${userId == null}">          	
          		<li><a href="#">모임개설</a></li>
          	</c:when>
          	<c:otherwise>          	
          		<li><a href="createmoim.st">모임개설</a></li>
          	</c:otherwise>
          </c:choose>
        </ul>
      </nav>
    </nav>
  </div>
  <hr style="margin: 0.1rem;"/>
<!-- Center -->
<!-- ################################################################################################ -->
	<c:choose>
		<c:when test="${centerpage !=null }">
			<jsp:include page="${centerpage }.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="center.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>
<!-- Footer -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
  </div>
</div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>

<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="layout/scripts/jquery.flexslider-min.js"></script>
</body>
</html>