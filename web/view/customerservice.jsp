<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<style>
.one_quarter {
	margin-left: 0;
	margin-right: 2%;
	margin-bottom: 20px;
}

.one_quarter img{
	width:251px;
	height:220px;
}
#title{
	align:center;
	padding-top:5%;
	padding-bottom:8%;
}
#content{
	width:80%;
	margin:0 auto;
}
#content img{
	width:20%;
	heigh:20%;
}
#photo_area > div{
	display:inline;
	margin-left:4%;
}
#name_area > div{
	background-color:gray;
	width:20%;
	height:20%;
	display:inline;
	margin-left:4%;
}
</style>
<script>
</script>
</head>
<body>
	<div id="title">
	<h1 style="text-align:center; color:#4C4C4C;"><strong>20's </strong>팀을 만나보세요.</h1>
	</div>
	<div id="content">
		<div id="photo_area">
			<div id="pro1"><img src="img/kde.jpg"></div>
			<div id="pro2"><img src="img/ksj.jpg"></div>
			<div id="pro3"><img src="img/lgw.jpg"></div>
			<div id="pro4"><img src="img/cdh.jpg"></div>
		</div>
		<div id="name_area">
			<div id="detail1"><h6><strong>Da-eun Kim</strong></h6></div>
			<div id="detail2"></div>
			<div id="detail3"></div>
			<div id="detail4"></div>
		</div>
	</div>
</body>
</html>