<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!-- Navbar -->

<div class="w3-top">
  <div class="w3-bar w3-black w3-card"><b>
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="${ctp}/" class="w3-bar-item w3-button w3-padding-large">LCK.GG</a>
    <!-- <a href="http://49.142.157.251:9090/javawebS" class="w3-bar-item w3-button w3-padding-large">HOME</a> -->
    <%-- <a href="${ctp}/" class="w3-bar-item w3-button w3-padding-large">HOME</a> --%>
    <a href="${ctp}/info/infoMain" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LCK</a>
	<a href="${ctp}/news/newsList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">뉴스</a>
	<a href="${ctp}/info/teamInfo" class="w3-bar-item w3-button w3-padding-large w3-hide-small">팀</a>
    <c:if test="${sLevel <= 1}">
		<a href="${ctp}/dbShop/dbProductList" class="w3-bar-item w3-button w3-padding-large w3-hide-small">상품</a>
	    <div class="w3-dropdown-hover w3-hide-small">
	      <button class="w3-padding-large w3-button" onclick="location.href='${ctp}/member/memberMain';" title="More">MyPage <i class="fa fa-caret-down"></i></button>     
	      <div class="w3-dropdown-content w3-bar-block w3-card-4">
	        <a href="${ctp}/dbShop/dbCartList" class="w3-bar-item w3-button">장바구니</a>
	        <a href="${ctp}/dbShop/dbMyOrder" class="w3-bar-item w3-button">주문확인</a>
	        <a href="${ctp}/inquiry/inquiryList" class="w3-bar-item w3-button">1:1문의</a>
	        <c:if test="${sLevel==0}"><a href="${ctp}/admin/adminMain" class="w3-bar-item w3-button">관리자</a></c:if>
	      </div>
	    </div>
    </c:if>
    <c:if test="${empty sLevel}">
	    <a href="${ctp}/member/memberLogin" class="w3-bar-item w3-button w3-padding-large w3-hide-small">로그인</a>
	    <a href="${ctp}/member/memberJoin" class="w3-bar-item w3-button w3-padding-large w3-hide-small">회원가입</a>
    </c:if>
    <c:if test="${!empty sLevel}">
	    <a href="${ctp}/member/memberLogout" class="w3-bar-item w3-button w3-padding-large w3-hide-small">로그아웃</a>
    </c:if>
  </b></div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <hr/>
  <a href="${ctp}/news/newsList" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">뉴스</a>
  <a href="${ctp}/info/teamInfo" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">팀</a>
  <hr/>
  <a href="${ctp}/member/memberLogin" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">로그인</a>
  <a href="${ctp}/member/memberJoin" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">회원가입</a>
</div>

<script>
  function memberDelete() {
	  let ans = confirm("탈퇴하시겠습니까?");
	  if(ans) {
		  ans = confirm("계정의 모든 기록이 삭제됩니다. 정말로 탈퇴하시겠습니까?");
		  if(ans) location.href = "${ctp}/member/memberDelete";
	  }
  }
  
</script>