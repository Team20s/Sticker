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
<script></script>
</head>
<body>
<!-- 친목도모 Section -->
<!-- ################################################################################################ -->
<div class="wrapper row3 coloured">
  <main class="hoc container clear">
    <!-- main body -->
    <div id="introblocks">
        <h4 id="category">친목도모</h4>
      <ul class="nospace group">
      
      
      <c:forEach items="${moim }" var="item">
        <li class="one_quarter">
         <article>
           <img src="${item.imgname }" alt="">
           <div>
             <p>${item.category }<span class="fl_right">${item.sdate } ~ ${item.edate }</span></p>
             <h6 class="heading">${item.title }</h6>
           </div>
           <footer><a href="moim.st?cmd=detail&id=${item.id }">More Detail</a></footer>
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