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
	width:80%;
}
#photo_area div{
text-align: center;
}
.name_area{
margin-top: 30px;
}

h1,h6{
	text-align:center;
	color:#4C4C4C;
}

.quarter {
    width: 22%;
    margin-right: 1%;
    margin-left: 1%;
    display: inline-block;
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
			<div class="quarter">
				<img src="img/kde.jpg">
				<div class="name_area">
					<h6><strong>Da-eun Kim</strong></h6>
					<h6>Model part</h6>
				</div>
			</div>
			<div class="quarter">
				<img src="img/ksj.jpg">
				<div class="name_area">
					<h6><strong>Sun-jae Kim</strong></h6>
					<h6>View part</h6>
				</div>
			</div>
			<div class="quarter">
				<img src="img/lgw.jpg">
				<div class="name_area">
					<h6><strong>Gu-won La</strong></h6>
					<h6>BUG fixer</h6>
				</div>
			</div>
			<div class="quarter">
				<img src="img/cdh.jpg">
				<div class="name_area">
					<h6><strong>Da-hoon Choi</strong></h6>
					<h6>Controller part</h6>
				</div>
			</div>
		</div>
	</div>
</body>
</html>