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
				alert(data);
			},
			error:function (jqXHR, textStatus, errorThrown) {
			    alert(errorThrown);
			}
		});
		
		function displayEnjoy(data){
			
		}
		
		function displayStudy(data){
			
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
        <h4>친목도모</h4>
        <!-- 
      <ul class="nospace group">
      
             <c:forEach items="${moim }" var="item">
		        <li class="one_quarter">
		         <article>
		           <img src="${item.imgname }" alt="">
		           <div>
		             <p>${item.category }<span class="fl_right">${item.sdate }
		             
		             <c:if test="${item.edate == item.sdate }">
		              ~ ${item.edate } </c:if>
		              
		              </span></p>
		             <h6 class="heading">${item.title }</h6>
		           </div>
		           <footer><a href="moim.st?cmd=detail&id=${item.id }">More Detail</a></footer>
		         </article>
		       </li>
		      </c:forEach>
		      
      </ul> -->
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
        <h4>스터디 및 취업정보</h4>
      <ul class="nospace group">
      <!-- 
             <c:forEach items="${moim }" var="item">
		        <li class="one_quarter">
		         <article>
		           <img src="${item.imgname }" alt="">
		           <div>
		              <p>${item.category }<span class="fl_right">${item.sdate }
		             
		             <c:if test="${item.edate == item.sdate }">
		              ~ ${item.edate } </c:if>
		              
		              </span></p>
		             <h6 class="heading">${item.title }</h6>
		           </div>
		           <footer><a href="moim.st?cmd=detail&id=${item.id }">More Detail</a></footer>
		         </article>
		       </li>
		      </c:forEach>  -->
      
      </ul>
    </div>
    <p class="center" id="btn_more"><a class="btn inverse" href="moimlist.st?cmd=c2">더 보기</a></p>
    <div class="clear"></div>
  </main>
</div>
</body>
</html>