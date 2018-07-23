<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="fmt3" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
span, p {
	color: black;
}

#moim_image {
	width: 100%;
	height: auto;
}

img{
	width:220px;
	height:220px;
}


</style>
<script></script>
</head>
<body>
	<!-- current day and time -->
	<jsp:useBean id="today" class="java.util.Date"/>
	<jsp:useBean id="systime" class="java.util.Date"/>
	
	<fmt2:formatDate value="${today }" pattern="yyyy-MM-dd" var="today"/>
	<fmt3:formatDate value="${systime }" pattern="HH:mm:ss" var="systime"/>

	<!-- String date format change Date. -->
	<fmt:parseDate value="${moimdetail.sDate }" var="sdate" pattern="yyyy-MM-dd"/>
	<fmt:parseDate value="${moimdetail.eDate }" var="edate" pattern="yyyy-MM-dd"/>
	<fmt:parseDate value="${moimdetail.applySDate }" var="applysdate" pattern="yyyy-MM-dd"/>
	<fmt:parseDate value="${moimdetail.applyEDate }" var="applyedate" pattern="yyyy-MM-dd"/>
	<fmt:parseDate value="${moimdetail.sTime }" var="stime" pattern="HH:mm"/>
	<fmt:parseDate value="${moimdetail.eTime }" var="etime" pattern="HH:mm"/>
	<fmt:parseDate value="${moimdetail.applySTime }" var="applystime" pattern="HH:mm"/>
	<fmt:parseDate value="${moimdetail.applyETime }" var="applyetime" pattern="HH:mm"/>
	
	<!-- date Pattern change -->
	<fmt:formatDate value="${sdate }" pattern="yyyy-MM-dd" var = "sdate"/>
	<fmt:formatDate value="${edate }" pattern="yyyy-MM-dd" var = "edate"/>
	<fmt:formatDate value="${applysdate }" pattern="yyyy-MM-dd" var = "applysdate"/>
	<fmt:formatDate value="${applyedate }" pattern="yyyy-MM-dd" var = "applyedate"/>
	<fmt:formatDate value="${stime }" pattern="HH:mm" var = "stime"/>
	<fmt:formatDate value="${etime }" pattern="HH:mm" var = "etime"/>
	<fmt:formatDate value="${applystime }" pattern="HH:mm" var = "applystime"/>
	<fmt:formatDate value="${applyetime }" pattern="HH:mm" var = "applyetime"/>
	
	<!-- Section -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3 coloured">
		<main class="hoc container clear">
		<div id="introblocks">
			<c:choose>
				<c:when test="${moimdetail.categoryKind == 'ENJOY' }">
					<h5 id="categoryId">친목도모</h5>
				</c:when>
				<c:otherwise>
					<h5 id="categoryId">스터디 및 정보공유</h5>
				</c:otherwise>
			</c:choose>
			<ul class="nospace group">
				<li class="one_quarter first">
					<div>
						<img src="img/${moimdetail.moimImg }" id="moim_image">
					</div>
					<div>
						<h5>개설자 정보</h5>
						<hr />
						<span>${moimdetail.userName }</span>
					</div>
				</li>
				<li class="three_quarter">
					<div>
						<h3 id="title">${moimdetail.title }</h3>
						<div>
							<span>모임기간 : </span> <span id="sdate">${sdate }
								${stime } ~ ${moimdetail.eTime }</span>
							<c:if test="${edate != sdate }">
  						 ~ <span id="edate">${edate } ${etime }</span>
							</c:if>
						</div>
						<div>
							<span>모임장소 : </span><span>${moimdetail.place }</span>
						</div>
						<div>
							<span>신청기간 : </span> <span id="applySdate">${applysdate }
								${applystime }</span> ~ <span id="applyEdate">${applyedate }
								${applyetime }</span>
						</div>
						<c:choose>
							<c:when test="${edate != sdate }">
								<c:choose>
									<c:when
										test="${applyedate < today && applyetime < systime}">
										<button type="button" class="btn" disabled>신청종료</button>
									</c:when>
									<c:when
										test="${applysdate > today && applystime > systime}">
										<button type="button" class="btn" disabled>신청기간 전</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn">신청하기</button>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when
										test="${moim.applyETime < systime }">
										<button type="button" class="btn" disabled>신청종료</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn" disabled>신청하기</button>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</div>
				</li>
			</ul>
			<h5>모임 상세정보</h5>
			<hr />
			<div>
				<p>${moimdetail.content }</p>
			</div>
		</div>
		</main>
	</div>
</body>
</html>