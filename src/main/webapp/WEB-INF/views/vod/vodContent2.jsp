<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>LCK VOD</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <style>
	.wrap {
		width: 600px;
		margin: 0 auto;
		font-family: 'Nanum Gothic',sans-serif;
	}
	.warp h1 {
		padding: 10px 0 4px;
		border-bottom: 1px solid #aaa;
	}
	.fixed_img_col ul {
		border-bottom: 1px solid #aaa;
		8zoom: 1;
	}
	.fixed_img_col li {
		floot: left;
		width: 120px;
		height: 180px;
		padding: 20px 15px;
		margin-bottom: -1px;
		border-bottom: 1px solid #aaa;
	}
  </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="warp">
	<h1>VOD 게시판</h1>
	<div class="fixeed_img_col">
		<ul>
			<li>
				<a href="#">
					<span class="thumb">
						<img src="${ctp}/images/thumb/" alt="">
						<em>구분</em>
					</span>
				</a>
				<p>${vo.VDate}</p>
			</li>
			<li>
				<a href="#"><span class="thumb"><img src="${ctp}/images/thumb/" alt=""><em>${vo.part}</em><strong>${vo.title}</strong></span></a>
				<p>${vo.VDate}</p>
			</li>			
		</ul>
	</div>

</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>