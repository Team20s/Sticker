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

img{
	width:220px;
	height:220px;
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
    <div id="introblocks">
    <c:choose>
    	<c:when test="${moimKind == 'ENJOY' }">
        	<h4 id="category">친목도모</h4>    	
    	</c:when>
    	<c:otherwise>
        	<h4 id="category">스터디 및 정보공유</h4>
    	</c:otherwise>
    </c:choose>
      <ul class="nospace group">
      
      
      <c:forEach items="${moimlist }" var="item">
        <li class="one_quarter">
         <article>
           <img src="img/${item.moimImg }">
           <div>
             <p>${item.categoryKind }<span class="fl_right">${item.sDate }
		             
		             <c:if test="${item.eDate == item.sDate }">
		              ~ ${item.eDate } </c:if>
		              
		              </span></p>
             <h6 class="heading">${item.title }</h6>
           </div>
           <footer><a href="moimdetail.st?id=${item.moimId }">More Detail</a></footer>
         </article>
       </li>
      </c:forEach>
      
      </ul>
    </div>
    <div class="clear"></div>
  </main>
</div>
</body>
</html>