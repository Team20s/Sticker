<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
.one_quarter {
	margin-left: 1%;
	margin-right: 1%;
	margin-bottom: 20px;
}

.one_quarter img {
	width: 100%;
	height: 220px;
}

#main {
	padding: 30px 0;
}
</style>
<script>
</script>
</head>
<body>
	<div id="pageintro" class="container clear">
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
		<main class="hoc container clear" id="main"> <!-- main body -->
		<div id="introblocks">
			<ul class="nospace group">
				<c:forEach items="${enjoyList }" var="item">
					<li class="one_quarter">
						<article>
							<img src="img/${item.moimImg }">
							<div>
								<p>${item.categoryKind }<span class="fl_right"> <c:choose>
											<c:when test="${item.eDate == item.sDate }">
											${item.sDate } ${item.sTime } ~ ${item.eTime }
										</c:when>
											<c:otherwise>
											${item.sDate } ~ ${item.eDate } 
										</c:otherwise>
										</c:choose>
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
		<main class="hoc container clear" id="main">
		<div id="introblocks">
			<ul class="nospace group">


				<c:forEach items="${studyList }" var="item">
					<li class="one_quarter">
						<article>
							<img src="img/${item.moimImg }">
							<div>
								<p>${item.categoryKind }<span class="fl_right">
										<c:choose>
											<c:when test="${item.eDate == item.sDate }">
											${item.sDate } ${item.sTime } ~ ${item.eTime }
										</c:when>
											<c:otherwise>
											${item.sDate } ~ ${item.eDate } 
										</c:otherwise>
										</c:choose>
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