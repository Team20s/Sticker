<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
  		<h5 id="categoryId">스터디 및 취업정보</h5>
  	 	<ul class="nospace group">
  			<li class="one_quarter first">
  				<div>
					<img src="${moim.imgname }" id="moim_image">
	        	</div>
	        	<div>
	        		<h5>개설자 정보</h5>
	        		<hr/>
	        		<span>${moim.userId }</span>
	        	</div>
  			</li>
  			<li class="three_quarter">
  				<div>
  					<h3 id="title">${moim.title }</h3>
  					<div>
  						<span>모임기간 : </span>
  						<span id="sdate">${moim.sdate } ${moim.stime }</span> ~ 
  						<span id="edate">${moim.edate } ${moim.etime }</span>
  					</div>
  					<div>
  						<span>모임장소 : </span><span>경기도 성남시 분당구 판교로 289번길 20층</span>
  					</div>
  					<div>
  						<span>신청기간 : </span>
  						<span id="applySdate">${moim.applySdate } ${moim.applyStime }</span> ~ 
  						<span id="applyEdate">${moim.applyEdate } ${moim.applyEtime }</span>
  					</div>
  					<input type="button" value="신청하기" class="btn">
	        	</div>
  			</li>
  		</ul>
  		<h5>모임 상세정보</h5>
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