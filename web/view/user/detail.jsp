<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
td{
	width:60%;
}
td > input{
	width:100%;
}
.table_title{
	width:30%;
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
#btn_close{
	background: red;
	color: white;
	border-color: red;
}
#btn_edit{
	background: green;
	color: white;
	border-color: green;
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
				<td>${user.id }</td>
			</tr>        
			<tr>
				<td class="table_title">이름</td>
				<td>${user.name }</td>
			</tr>        
			<tr>
				<td class="table_title">비밀번호</td>
				<td>
					<button type="button" class="btn" data-toggle="modal" data-target="#myModal">
						수정하기
					</button>
				</td>
			</tr>        
			<tr>
				<td class="table_title">생년월일</td>
				<td>${user.birth }</td>
			</tr>        
        </table>
    </div>
    
    <div class="modal" id="myModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
		      <!-- Modal Header -->
		      <div class="modal-header">
		        <h4 class="modal-title">비밀번호 수정</h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body">
		      
		      	<table class="table">
		      		<tr>
		      			<td class="table_title">비밀번호</td>
		      			<td><input type="password"></td>
		      		</tr>
		      		<tr>
		      			<td class="table_title">새 비밀번호</td>
		      			<td><input type="password"></td>
		      		</tr>
		      		<tr>
		      			<td class="table_title">새 비밀번호 확인</td>
		      			<td><input type="password"></td>
		      		</tr>
		      	</table>
		      
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button id="btn_edit" type="button" class="btn btn-success" data-dismiss="modal">수정</button>
		        <button id="btn_close" type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
		      </div>
		
		    </div>
		  </div>
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
			<c:forEach items="${moim }" var="item">
				<tr>
					<td class="table_title"><a href="#"><img src="${item.imgname }" id="moim_image"></a></td>
					<td>
						<div class="table_content">
							<div>
								<button type="button" class="btn" disabled>
									<c:choose>
										<c:when test="${item.edate == item.sdate }">
											<c:choose>
												<c:when test="${item.edate > item.sdate }">
													모임종료
												</c:when>
												<c:when test="${item.sdate > currentDate }">
													진행 전
												</c:when>
												<c:otherwise>
													진행 중
												</c:otherwise>
											</c:choose>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${item.sdate > currentDate }">
													진행 전
												</c:when>
												<c:otherwise>
													모임종료
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</button>
							</div>
							<div>
								<span>모임기간 : </span>
		  						<span id="sdate">${item.sdate } ${item.stime }</span> 
		  						
		  						<c:if test="${item.edate == item.sdate }">
		  						~ <span id="edate">${item.edate } ${item.etime }</span>
		  						</c:if>
		  						
							</div>
							<div>
		  						<span>모임장소 : </span><span>${item.place }</span>
		  					</div>
							<input id="btn_cancel" type="button" class="btn btn_danger" value="신청취소">
						</div>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
    <p class="center" id="btn_more"><a class="btn inverse" href="#">더 보기</a></p>
    <div class="clear"></div>
  </main>
</div>

</body>
</html>