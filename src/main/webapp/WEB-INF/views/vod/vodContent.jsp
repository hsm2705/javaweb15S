<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>${vodVO.title}</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp"/>
  <link rel="stylesheet" href="${ctp}/font/font.css"/>
  <style>
		.container, h4, h3 {font-family:'SUITE-Regular';}
	</style>
</head>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <div class="row">
    <div class="col p-3 text-center" style="border:1px solid #ccc">
		  <!-- ckEditor 이용해 VOD 출력 -->
		  <div>
		    "${ctp}/vod/"
		  </div>
		</div>
		<div class="col p-3 text-center">
			
		</div>
  </div>
  <br/><br/>
  <!-- VOD 설명 -->
  <div id="content" class="text-center"><br/>
  	<img src="${ctp}/vod/${fn:split(recipeVO.file,'/')[1]}">	
  </div>
</div>
<p><br/></p>
</body>
</html>