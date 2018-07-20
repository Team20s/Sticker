<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
td{
	width:60%;
}
.table_title{
	width:20%;
}
.table_content{
	position: relative;
	height: 240px;
}

span, p{
	color:black;
}
#moim_image{
	width:100%;
	height: auto;
}
#btn_cancel{
	position: absolute;
	background: red;
	color: white;
	right:10px;
	bottom:10px;
}
.btn-group{
	margin-left: 8px;
	margin-bottom: 10px;
    height: 40px;
}
</style>
<script>
</script>
</head>
<body>
<!-- 친목도모 Section -->
<!-- ################################################################################################ -->
<div class="wrapper row3 coloured">
  <main class="hoc container clear">
    <!-- main body -->
    <div class="container">
    	<h4>My Page</h4>
        <table class="table">
			<tr>
				<td class="table_title">아이디(닉네임)</td>
				<td>admin</td>
			</tr>        
			<tr>
				<td class="table_title">이름</td>
				<td>김다은</td>
			</tr>        
			<tr>
				<td class="table_title">비밀번호</td>
				<td><input type="button" value="수정하기" class="btn"></td>
			</tr>        
			<tr>
				<td class="table_title">생년월일</td>
				<td>1992.12.8</td>
			</tr>        
        </table>
    </div>
		<div class="container">
			<div class="btn-group">
				<div class="form-group">
						<div class="row">
							<div class="btn-group">
							  <button id="apply" type="button" class="btn"> 신청한 모임 내역 </button>
							  <button id="create" type="button" class="btn"> 개설한 모임 내역 </button>
							</div>
						</div>
					</div>		  
			</div>
			<table class="table">
<%-- 				<c:forEach items="${moim }" var="item"> --%>
					<tr>
						<td class="table_title"><a href="#"><img src="images/demo/gallery/01.png" id="moim_image"></a></td>
						<td>
							<div class="table_content">
								<div>
									<input type="button" class="btn" disabled value="진행 중">
								</div>
								<div>
									<span>모임기간 : </span>
			  						<span id="sdate">8월 20일(월)9시 00분</span> ~ 
			  						<span id="edate">8월 31일(금)17시 00분</span>
								</div>
								<div>
			  						<span>모임장소 : </span><span>경기도 성남시 분당구 판교로 289번길 20층</span>
			  					</div>
								<input id="btn_cancel" type="button" class="btn btn_danger" value="신청취소">
							</div>
						</td>
					</tr>
					<tr>
						<td class="table_title"><a href="#"><img src="images/demo/gallery/01.png" id="moim_image"></a></td>
						<td>
							<div class="table_content">
								<div>
									<input type="button" class="btn" disabled value="진행 중">
								</div>
								<div>
									<span>모임기간 : </span>
			  						<span id="sdate">8월 20일(월)9시 00분</span> ~ 
			  						<span id="edate">8월 31일(금)17시 00분</span>
								</div>
								<div>
			  						<span>모임장소 : </span><span>경기도 성남시 분당구 판교로 289번길 20층</span>
			  					</div>
								<input id="btn_cancel" type="button" class="btn btn_danger" value="신청취소">
							</div>
						</td>
					</tr>
					<tr>
						<td class="table_title"><a href="#"><img src="images/demo/gallery/01.png" id="moim_image"></a></td>
						<td>
							<div class="table_content">
								<div>
									<input type="button" class="btn" disabled value="진행 중">
								</div>
								<div>
									<span>모임기간 : </span>
			  						<span id="sdate">8월 20일(월)9시 00분</span> ~ 
			  						<span id="edate">8월 31일(금)17시 00분</span>
								</div>
								<div>
			  						<span>모임장소 : </span><span>경기도 성남시 분당구 판교로 289번길 20층</span>
			  					</div>
								<input id="btn_cancel" type="button" class="btn btn_danger" value="신청취소">
							</div>
						</td>
					</tr>
					<tr>
						<td class="table_title"><a href="#"><img src="images/demo/gallery/01.png" id="moim_image"></a></td>
						<td>
							<div class="table_content">
								<div>
									<input type="button" class="btn" disabled value="진행 중">
								</div>
								<div>
									<span>모임기간 : </span>
			  						<span id="sdate">8월 20일(월)9시 00분</span> ~ 
			  						<span id="edate">8월 31일(금)17시 00분</span>
								</div>
								<div>
			  						<span>모임장소 : </span><span>경기도 성남시 분당구 판교로 289번길 20층</span>
			  					</div>
								<input id="btn_cancel" type="button" class="btn btn_danger" value="신청취소">
							</div>
						</td>
					</tr>
<%-- 				</c:forEach> --%>
			</table>
		</div>
    <p class="center" id="btn_more"><a class="btn inverse" href="#">더 보기</a></p>
    <div class="clear"></div>
  </main>
</div>

</body>
</html>