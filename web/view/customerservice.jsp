<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><</title>
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
</style>
<script>
</script>
</head>
<body>
	<div id="pageintro" class="hoc clear">
		<div class="flexslider basicslider">
			<ul class="slides">
				<li>
					<article>
						<img src="images/demo/banner.png">
					</article>
				</li>
				<li>
					<article>
						<img src="images/demo/banner.png">
					</article>
				</li>
				<li>
					<article>
						<img src="images/demo/banner.png">
					</article>
				</li>
			</ul>
		</div>
	</div>
	<!-- 친목도모 Section -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3 coloured">
		<main class="hoc container clear"> <!-- main body -->
		<div id="enjoy">
			<ul class="nospace group">
				<c:forEach items="${enjoyList }" var="item">
					<li class="one_quarter">
						<article>
							<img src="img/${item.moimImg }">
							<div>
								<p>${item.categoryKind }<span class="fl_right">${item.sDate }

										<c:if test="${item.eDate == item.sDate }">
		              ~ ${item.eDate } </c:if>

									</span>
								</p>
								<h6 class="heading">${item.title }</h6>
							</div>
							<footer>
								<a href="moimdetail.st?id=${item.moimId }">More Detail</a>
							</footer>
						</article>
					</li>
				</c:forEach>
			</ul>
		</div>
		<p class="center" id="btn_more">
			<a class="btn inverse" href="moimlist.st?cmd=c1">더 보기</a>
		</p>
		<div class="clear"></div>
		</main>
	</div>

	<!-- 스터디 및 취업정보 Section -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3 coloured">
		<main class="hoc container clear">
		<div id="study">
			<ul class="nospace group">


				<c:forEach items="${studyList }" var="item">
					<li class="one_quarter">
						<article>
							<img src="img/${item.moimImg }">
							<div>
								<p>${item.categoryKind }<span class="fl_right">${item.sDate }

										<c:if test="${item.eDate == item.sDate }">
		              ~ ${item.eDate } </c:if>

									</span>
								</p>
								<h6 class="heading">${item.title }</h6>
							</div>
							<footer>
								<a href="moimdetail.st?id=${item.moimId }">More Detail</a>
							</footer>
						</article>
					</li>
				</c:forEach>

			</ul>
		</div>
		<p class="center" id="btn_more">
			<a class="btn inverse" href="moimlist.st?cmd=c2">더 보기</a>
		</p>
		<div class="clear"></div>
		</main>
	</div>
</body>
</html>