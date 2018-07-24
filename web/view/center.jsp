<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>

.one_quarter{
margin-left: 0;
margin-right: 2%;
margin-bottom: 20px;
}

</style>
<script>
	$(document).ready(function(){
		//setInterval(function(){},10000)
		$.ajax({
			url:'enjoylist.st',
			type:'POST',
			success:function(data){
				displayEnjoy(data);
			},
			error:function (error) {
			    alert('error'+error);
			}
		});
		
		$.ajax({
			url:'studylist.st',
			type:'POST',
			success:function(data){
				displayStudy(data);
			},
			error:function (error) {
			    alert('error'+error);
			}
		});
		
		function displayEnjoy(data){
			var result = '';
			result += '<h4>친목도모</h4>';
			result += '<ul class="nospace group">';
			$.each(data,function(index,item){
				result += '<li class="one_quarter><article>';
				result += '<img src="img\\';
				result += item.moimImg;
				result += '"/><div>';
				result += '<p>';
				result += item.categoryKind;
				result += '<span class="fl_right">';
				result += item.sdate;
				if(item.edate == item.sdate){
					result += ' ~ ';
					result += item.edate;
				}
				result += '</span></p>';
				result += '<h6 class="heading">';
				result += item.title;
				result += '</h6></div>';
				result += '<footer><a href="moimdetail.st?id=';
				result += item.moimId;
				result += '">More Detail</a></footer></article></li>';
				
			});
			result += '</ul>';
			
			$('#enjoy').html(result);
		}
		
		function displayStudy(data){
			var result = '';
			result += '<h4>스터디 및 정보 공유</h4>';
			result += '<ul class="nospace group">';
			$.each(data,function(index,item){
				result += '<li class="one_quarter><article>';
				result += '<img src="img/';
				result += item.moimImg;
				result += '"/><div>';
				result += '<p>';
				result += item.categoryKind;
				result += '<span class="fl_right">';
				result += item.sdate;
				if(item.edate == item.sdate){
					result += ' ~ ';
					result += item.edate;
				}
				result += '</span></p>';
				result += '<h6 class="heading">';
				result += item.title;
				result += '</h6></div>';
				result += '<footer><a href="moimdetail.st?id=';
				result += item.moimId;
				result += '">More Detail</a></footer></article></li>';
				
			});
			result += '</ul>';
			
			$('#study').html(result);
		}
	});

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
  <main class="hoc container clear">
    <!-- main body -->
    <div id="enjoy">
    </div>
    <p class="center" id="btn_more"><a class="btn inverse" href="moimlist.st?cmd=c1">더 보기</a></p>
    <div class="clear"></div>
  </main>
</div>

<!-- 스터디 및 취업정보 Section -->
<!-- ################################################################################################ -->
<div class="wrapper row3 coloured">
  <main class="hoc container clear">
    <div id="study">
    </div>
    <p class="center" id="btn_more"><a class="btn inverse" href="moimlist.st?cmd=c2">더 보기</a></p>
    <div class="clear"></div>
  </main>
</div>
</body>
</html>