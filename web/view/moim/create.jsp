<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>
	
<title>Insert title here</title>
<style>

#moim_image {
	width: 100%;
	height: auto;
}

.mb-3, .my-3 {
	margin-bottom: 0.3rem !important;
}

#introblocks > ul > li {
    text-align: center;
    border: none;
}

#introblocks{
	z-index: 0;
}

.modal-backdrop{
z-index: -1;
}

/* MAP CSS */

.map_wrap, .map_wrap * {margin:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;z-index: 0;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#placesList {padding-left: 0;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}

/* Summernote */

#summernote_out{
	margin-top:10px;
}

#submit{
	position: absolute;
    margin-top: 10px;
    right: 0;
}

.note-popover .popover-content, .card-header.note-toolbar{
	z-index:0;
}

</style>
<script>
$(document).ready(function(){
	
	$('#searchP').click(function(){
		ps.keywordSearch($('#keyword').val(), placesSearchCB); 
	});
	
	$("#fileUpload").on('change', function() {
        //Get count of selected files
        var countFiles = $(this)[0].files.length;
        var imgPath = $(this)[0].value;
        var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
        var image_holder = $("#image-holder");
        image_holder.empty();
        if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg") {
          if (typeof(FileReader) != "undefined") {
            //loop for each file selected for uploaded.
            for (var i = 0; i < countFiles; i++) 
            {
              var reader = new FileReader();
              reader.onload = function(e) {
                $("<img />", {
                  "src": e.target.result,
                  "class": "thumb-image",
                  "style" : "height: 250px; width:250px;"
                }).appendTo(image_holder);
              }
              image_holder.show();
              reader.readAsDataURL($(this)[0].files[i]);
            }
          } else {
            alert("�������� �ʴ� ������ �Դϴ�.");
          }
        } else {
          alert("���������� ���ϸ� ÷�����ּ���.");
        }
      });
	
	$('#submit').click(function(){
		
		$('#hiddenContent').val($('.note-editable card-block').val());
		console.log($('.card-block').val());
		
		$('#createForm').attr('method','post');
		$('#createForm').attr('action','createmoimimpl.st');
		$('#createForm').attr('enctype','multipart/form-data');
// 		$('#createForm').submit();
	});
	
});
</script>
</head>
<body>
	<!-- ģ�񵵸� Section -->
	<!-- ################################################################################################ -->
	<div class="wrapper row3 coloured">
		<main class="hoc container clear">
		<div id="introblocks">
		<h4>�����ϱ�</h4>
		<form action="createmoimimpl.st" method="post" enctype="multipart/form-data" id="createForm">
			<ul class="nospace group">
					<li class="one_quarter first">
							<div id="image-holder"><img src="images/demo/gallery/01.png" id="moim_image"></div>
							<div id="wrapper" style="margin-top: 20px;">
							<input id="fileUpload" multiple="multiple" type="file" name="moimMultiImg"/> 
							</div>
					</li>
					<li class="three_quarter">
						<div>
							<table class="table">
								<tr>
									<td>ī�װ�/���Ӹ�</td>
									<td><select name="categoryId">
											<option value="c1">ģ�����</option>
											<option value="c2">���͵� �� ��������</option>
									</select></td>
									<td colspan="5"><input type="text" style="width: 100%" name="title"></td>
								</tr>
								<tr>
									<td>�����Ͻ�</td>
									<td><input type="date" name="sDate"></td>
									<td><input type="time" name="sTime"></td>
									<td>����</td>
									<td><input type="date" name="eDate"></td>
									<td><input type="time" name="eTime"></td>
									<td>����</td>
								</tr>
								<tr>
									<td>�����Ⱓ</td>
									<td><input type="date" name="applySDate"></td>
									<td><input type="time" name="applySTime"></td>
									<td>����</td>
									<td><input type="date" name="applyEDate"></td>
									<td><input type="time" name="applyETime"></td>
									<td>����</td>
								</tr>
								<tr>
									<td>�������</td>
									<td colspan="6">
										<input type="text" style="width: 100%" name="address" id="address" readonly>
									</td>
								</tr>
								<tr>
									<td>���ּ�</td>
									<td colspan="6">
										<input type="text" style="width: 100%" name="address2" id="address2">
									</td>
								</tr>
							</table>
						</div>
					</li>
			</ul>
			<textarea class="form-control" name="content" id="hiddenContent" hidden></textarea>
			</form>
				<div class="map_wrap">
					<div id="map"
						style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
					<div id="menu_wrap" class="bg_white">
						<div class="option">
							<div class="input-group mb-3">
							  <input type="text" class="form-control" placeholder="Search" id="keyword">
							  <div class="input-group-append">
							    <button class="btn" id="searchP">�˻�</button> 
							  </div>
							</div>
						</div>
						<hr>
				        <ul id="placesList"></ul>
				        <div id="pagination"></div>
					</div>
				</div>
			<div id="summernote_out">
				<div id="summernote">
				
				</div>
			</div>
			<input type="button" value="�����ϱ�" class="btn fl-right" id="submit"><br>
		</div>
		</main>
	</div>
	<script>
	
	 $('#summernote').summernote({
	        placeholder: 'Hello bootstrap 4',
	        tabsize: 2,
	        height: 100
	      });
	
	
// 	MAP
	
	var markers = [];

	var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
	    mapOption = {
	        center: new daum.maps.LatLng(37.501529, 127.039643), // ������ �߽���ǥ
	        level: 3 // ������ Ȯ�� ����
	    };  

	// ������ �����մϴ�    
	var map = new daum.maps.Map(mapContainer, mapOption); 

	// ��� �˻� ��ü�� �����մϴ�
	var ps = new daum.maps.services.Places();  

	// �˻� ��� ����̳� ��Ŀ�� Ŭ������ �� ��Ҹ��� ǥ���� ���������츦 �����մϴ�
	var infowindow = new daum.maps.InfoWindow({zIndex:1});

	// Ű����� ��Ҹ� �˻��մϴ�

	// Ű���� �˻��� ��û�ϴ� �Լ��Դϴ�
	function searchPlaces() {

	    var keyword = document.getElementById('keyword').value;

	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('Ű���带 �Է����ּ���!');
	        return false;
	    }

	    // ��Ұ˻� ��ü�� ���� Ű����� ��Ұ˻��� ��û�մϴ�
	    ps.keywordSearch( keyword, placesSearchCB); 
	}

	// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
	function placesSearchCB(data, status, pagination) {
	    if (status === daum.maps.services.Status.OK) {

	        // ���������� �˻��� �Ϸ������
	        // �˻� ��ϰ� ��Ŀ�� ǥ���մϴ�
	        displayPlaces(data);

	        // ������ ��ȣ�� ǥ���մϴ�
	        displayPagination(pagination);

	    } else if (status === daum.maps.services.Status.ZERO_RESULT) {

	        alert('�˻� ����� �������� �ʽ��ϴ�.');
	        return;

	    } else if (status === daum.maps.services.Status.ERROR) {

	        alert('�˻� ��� �� ������ �߻��߽��ϴ�.');
	        return;

	    }
	}

	// �˻� ��� ��ϰ� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
	function displayPlaces(places) {

	    var listEl = document.getElementById('placesList'), 
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(), 
	    bounds = new daum.maps.LatLngBounds(), 
	    listStr = '';
	    
	    // �˻� ��� ��Ͽ� �߰��� �׸���� �����մϴ�
	    removeAllChildNods(listEl);

	    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
	    removeMarker();
	    
	    for ( var i=0; i<places.length; i++ ) {

	        // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
	        var placePosition = new daum.maps.LatLng(places[i].y, places[i].x),
	            marker = addMarker(placePosition, i), 
	            itemEl = getListItem(i, places[i]); // �˻� ��� �׸� Element�� �����մϴ�
	            
	        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
	        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
	        bounds.extend(placePosition);

	        // ��Ŀ�� �˻���� �׸� mouseover ������
	        // �ش� ��ҿ� ���������쿡 ��Ҹ��� ǥ���մϴ�
	        // mouseout ���� ���� ���������츦 �ݽ��ϴ�
	        (function(marker, title) {
	            daum.maps.event.addListener(marker, 'mouseover', function() {
	                displayInfowindow(marker, title);
	            });

	            daum.maps.event.addListener(marker, 'mouseout', function() {
	                infowindow.close();
	            });
	            
	            itemEl.onmouseover =  function () {
	                displayInfowindow(marker, title);
	            };

	            itemEl.onmouseout =  function () {
	                infowindow.close();
	            };
	        })(marker, places[i].place_name);
	        
	        (function(marker, address) {
	            daum.maps.event.addListener(marker, 'click', function() {
					$('#address').val(address);
	            });
	        })(marker, places[i].road_address_name);

	        fragment.appendChild(itemEl);
	    }

	    // �˻���� �׸���� �˻���� ��� Elemnet�� �߰��մϴ�
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;

	    // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
	    map.setBounds(bounds);
	}

	// �˻���� �׸��� Element�� ��ȯ�ϴ� �Լ��Դϴ�
	function getListItem(index, places) {

	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';

	    if (places.road_address_name) {
	        itemStr += '    <span>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           

	    el.innerHTML = itemStr;
	    el.className = 'item';

	    return el;
	}

	// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
	function addMarker(position, idx, title) {
	    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
	        imageSize = new daum.maps.Size(36, 37),  // ��Ŀ �̹����� ũ��
	        imgOptions =  {
	            spriteSize : new daum.maps.Size(36, 691), // ��������Ʈ �̹����� ũ��
	            spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
	            offset: new daum.maps.Point(13, 37) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
	        },
	        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new daum.maps.Marker({
	            position: position, // ��Ŀ�� ��ġ
	            image: markerImage 
	        });

	    marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
	    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�

	    return marker;
	}

	// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}

	// �˻���� ��� �ϴܿ� ��������ȣ�� ǥ�ô� �Լ��Դϴ�
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 

	    // ������ �߰��� ��������ȣ�� �����մϴ�
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }

	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;

	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }

	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}

	// �˻���� ��� �Ǵ� ��Ŀ�� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
	// ���������쿡 ��Ҹ��� ǥ���մϴ�
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}

	 // �˻���� ����� �ڽ� Element�� �����ϴ� �Լ��Դϴ�
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	
	
</script>
	</body>
</html>