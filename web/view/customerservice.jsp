<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<style>
#title{
	align:center;
	padding-top:5%;
	padding-bottom:8%;
}
#content{
	width:80%;
	margin:0 auto;
}
img{
	width:20%;
	heigh:20%;
}
#photo_area div{
	display:inline;
	margin-left:4%;
	
}
#name_area{
	padding-top:1%;
}
#name_area div{
	width:20%;
	height:20%;
	margin-left:4%;
	display:inline;
}
h1,h6{
	text-align:center;
	color:#4C4C4C;
}

</style>
<script>
</script>
</head>
<body>
	<div id="title">
	<h1><strong>20's </strong>팀을 만나보세요.</h1>
	</div>
	<div id="content">
		<div id="photo_area">
			<div><img src="img/kde.jpg"></div>
			<div><img src="img/ksj.jpg"></div>
			<div><img src="img/lgw.jpg"></div>
			<div><img src="img/cdh.jpg"></div>
		</div>
		<div id="name_area">
			<div id="pro1">
				<h6><strong>Da-eun Kim</strong></h6>
				<h6>Model part</h6>
			</div>
			<div id="pro2">
				<h6><strong>Sun-jae Kim</strong></h6>
				<h6>View part</h6>
			</div>
			<div id="pro3">
				<h6><strong>Gu-won La</strong></h6>
				<h6>Controller part</h6>
			</div>
			<div id="pro4">
				<h6><strong>Da-hoon Choi</strong></h6>
				<h6>Controller part</h6>
			</div>
		</div>
	</div>
</body>
</html>