<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
span, p{
	color:black;
}
#moim_image{
	width:100%;
	height: auto;
}
</style>
<script></script>
</head>
<body>

<!-- Section -->
<!-- ################################################################################################ -->
<div class="wrapper row3 coloured">
  <main class="hoc container clear">
  	<div id="introblocks">
  		<h5 id="categoryId">���͵� �� �������</h5>
  	 	<ul class="nospace group">
  			<li class="one_quarter first">
  				<div>
					<img src="${moim.imgname }" id="moim_image">
	        	</div>
	        	<div>
	        		<h5>������ ����</h5>
	        		<hr/>
	        		<span>${moim.userId }</span>
	        	</div>
  			</li>
  			<li class="three_quarter">
  				<div>
  					<h3 id="title">${moim.title }</h3>
  					<div>
  						<span>���ӱⰣ : </span>
  						<span id="sdate">${moim.sdate } ${moim.stime }</span>
  						<c:if test="${moim.edate != moim.sdate }">
  						 ~ <span id="edate">${moim.edate } ${moim.etime }</span>
  						</c:if>
  					</div>
  					<div>
  						<span>������� : </span><span>${moim.place }</span>
  					</div>
  					<div>
  						<span>��û�Ⱓ : </span>
  						<span id="applySdate">${moim.applySdate } ${moim.applyStime }</span> ~ 
  						<span id="applyEdate">${moim.applyEdate } ${moim.applyEtime }</span>
  					</div>
						<c:choose>
							<c:when test="${moim.edate == moim.sdate }">
								<c:choose>
									<c:when test="${moim.applyEdate > moim.applySdate && moim.applyEtime > moim.applyStime}">
										<button type="button" class="btn" disabled>��û����</button>
									</c:when>
									<c:when test="${moim.applySdate > currentDate && moim.applyStime > currentTime}">
										<button type="button" class="btn" disabled>��û�Ⱓ ��</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn">��û�ϱ�</button>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${moim.applySdate > applyEdate && moim.applyStime > applyEtime }">
										<button type="button" class="btn" disabled>��û����</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn" disabled>��û����</button>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
	        	</div>
  			</li>
  		</ul>
  		<h5>���� ������</h5>
  		<hr/>
  		<div>
  			<p>
  				${moim.content }
  			</p>
  		</div>
    </div>
  </main>
</div>
</body>
</html>