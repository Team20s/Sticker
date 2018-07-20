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
tr{
	height: 69.375px;
}
#moim_image{
	width:100%;
	height: auto;
}


</style>
<script></script>
</head>
<body>

<!-- 친목도모 Section -->
<!-- ################################################################################################ -->
<div class="wrapper row3 coloured">
  <main class="hoc container clear">
  	<div id="introblocks">
  	<form>
  	 	<ul class="nospace group">
  			<h4>개설하기</h4>
  			<li  class="one_quarter first">
  				<div>
					<img src="images/demo/gallery/01.png" id="moim_image">
					<input type="file">
	        	</div>
  			</li>
  			<li  class="three_quarter">
  				<div>
	        		<table class="table">
	        			<tr>
	        				<td>카테고리/모임명</td>
	        				<td>
								<select>
									<option value="volvo">Volvo</option>
									<option value="saab">Saab</option>
									<option value="opel">Opel</option>
								</select>
							</td>
	        				<td colspan="5">
	        					<input type="text">
	        				</td>
	        			</tr>
	        			<tr>
	        				<td>모임일시</td>
	        				<td><input type="date"></td>
	        				<td><input type="time"></td>
	        				<td>부터</td>
	        				<td><input type="date"></td>
	        				<td><input type="time"></td>
	        				<td>까지</td>
	        			</tr>
	        			<tr>
	        				<td>접수기간</td>
	        				<td><input type="date"></td>
	        				<td><input type="time"></td>
	        				<td>부터</td>
	        				<td><input type="date"></td>
	        				<td><input type="time"></td>
	        				<td>까지</td>
	        			</tr>
	        			<tr>
	        				<td>모임장소</td>
	        				<td colspan="6">
		        				<div class="input-group mb-3">
								  <input type="text" class="form-control" placeholder="Search">
								  <div class="input-group-append">
								    <button class="btn btn-success" type="submit">Go</button> 
								  </div>
								</div>
	        				</td>
	        			</tr>
	        		</table>
	        	</div>
  			</li>
  			
  		</ul>
  		<div>
  			<textarea class="form-control"></textarea>
  		</div>
  		</form>
    </div>
  </main>
</div>
</body>
</html>