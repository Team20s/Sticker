<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt2" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="fmt3" uri="http://java.sun.com/jstl/fmt_rt"%>
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
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d34028354e373bc549b73c7d2ebcfd3&libraries=services,clusterer,drawing"></script>
<title>Insert title here</title>
<style>
span, p {
	color: black;
}

#moim_image {
	width: 100%;
	height: auto;
}

.map_wrap, .map_wrap * {margin:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}

img {
	width: 220px;
	height: 220px;
}

#ul {
	position: relative;
	margin-bottom: 40px;
}

#categoryId{
	margin-bottom: 40px;
}

#detail_div{
	padding: 30px 0;
}

#apply_btn{
	position: absolute;
	right: 10px;
	bottom: 0;
}

</style>
<script></script>
</head>
<body>
	<!-- current day and time -->
	<jsp:useBean id="today" class="java.util.Date" />
	<jsp:useBean id="systime" class="java.util.Date" />

	<fmt2:formatDate value="${today }" pattern="yyyy-MM-dd" var="today" />
	<fmt3:formatDate value="${systime }" pattern="HH:mm:ss" var="systime" />

	<!-- String date format change Date. -->

	<fmt:parseDate value="${moimdetail.sDate }" var="sdate"
		pattern="yyyy-MM-dd" />
	<fmt:parseDate value="${moimdetail.eDate }" var="edate"
		pattern="yyyy-MM-dd" />
	<fmt:parseDate value="${moimdetail.applySDate }" var="applysdate"
		pattern="yyyy-MM-dd" />
	<fmt:parseDate value="${moimdetail.applyEDate }" var="applyedate"
		pattern="yyyy-MM-dd" />
	<fmt:parseDate value="${moimdetail.sTime }" var="stime" pattern="HH:mm" />
	<fmt:parseDate value="${moimdetail.eTime }" var="etime" pattern="HH:mm" />
	<fmt:parseDate value="${moimdetail.applySTime }" var="applystime"
		pattern="HH:mm" />
	<fmt:parseDate value="${moimdetail.applyETime }" var="applyetime"
		pattern="HH:mm" />

	<!-- date Pattern change -->
	<fmt:formatDate value="${sdate }" pattern="yyyy-MM-dd" var="sdate" />
	<fmt:formatDate value="${edate }" pattern="yyyy-MM-dd" var="edate" />
	<fmt:formatDate value="${applysdate }" pattern="yyyy-MM-dd"
		var="applysdate" />
	<fmt:formatDate value="${applyedate }" pattern="yyyy-MM-dd"
		var="applyedate" />
	<fmt:formatDate value="${stime }" pattern="HH:mm" var="stime" />
	<fmt:formatDate value="${etime }" pattern="HH:mm" var="etime" />
	<fmt:formatDate value="${applystime }" pattern="HH:mm" var="applystime" />
	<fmt:formatDate value="${applyetime }" pattern="HH:mm" var="applyetime" />

	<!-- Section -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3 coloured">
		<main class="hoc container clear">
		<form action="joinimpl.st?moimId=${moimdetail.moimId }" method="post">
			<div class="container" id="detail_div">
				<c:choose>
					<c:when test="${moimdetail.categoryKind == 'ENJOY' }">
						<h5 id="categoryId">친목도모</h5>
					</c:when>
					<c:otherwise>
						<h5 id="categoryId">스터디 및 정보공유</h5>
					</c:otherwise>
				</c:choose>
				<ul class="nospace group" id="ul">
					<li class="one_quarter first">
						<div>
							<img src="img/${moimdetail.moimImg }" id="moim_image">
						</div>
					</li>
					<li class="three_quarter">
						<div>
							<h3 id="title">${moimdetail.title }</h3>
							<h5>${moimdetail.userName }님의 모임</h5>
							<div>
								<span>모임기간 : </span> <span id="sdate">${sdate } ${stime }</span>
								<c:choose>
									<c:when test="${edate == sdate }">
										<span>~ ${moimdetail.eTime }</span>
									</c:when>
									<c:otherwise>
	  									<span id="edate">~ ${edate } ${etime }</span>
									</c:otherwise>
								</c:choose>
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
										<c:when test="${applyedate < today && applyetime < systime}">
											<button type="button" class="btn"  id="apply_btn" disabled>신청종료</button>
										</c:when>
										<c:when test="${applysdate > today && applystime > systime}">
											<button type="button" class="btn" id="apply_btn" disabled>신청기간 전</button>
										</c:when>
										<c:otherwise>
											<button type="submit" class="btn" id="apply_btn" >신청하기</button>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${moim.applyETime < systime }">
											<button type="button" class="btn" id="apply_btn" disabled>신청종료</button>
										</c:when>
										<c:otherwise>
											<button type="submit" class="btn" id="apply_btn" >신청하기</button>
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

			<div class="map_wrap">
				<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
			</div>
		</form>
		</main>
	</div>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		
		
	    mapOption = {
	        center: new daum.maps.LatLng(37.501529, 127.039643), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption); 
		
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new daum.maps.MapTypeControl();

		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
		
		map.setDraggable(false);
		
		var markerPosition  = new daum.maps.LatLng(37.501529, 127.039643); 

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${moimdetail.place }', function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === daum.maps.services.Status.OK) {

		        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new daum.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new daum.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
	</script>
</body>
</html>