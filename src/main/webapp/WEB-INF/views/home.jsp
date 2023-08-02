<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>LCK.GG</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		body {font-family: "Lato", sans-serif}
		.mySlides {display: none}
	</style>
	
</head>
<body>
<!-- 메뉴(nav)... -->
<jsp:include page="/WEB-INF/views/include/nav.jsp" />

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

<!-- Slide Show -->
<jsp:include page="/WEB-INF/views/include/slide.jsp" />



  <!-- The Tour Section -->
  
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
    <h1 class="w3-center">We Make Legends</h1>
    <p class="w3-justify w3-center">
    <br/>
    League of Legends Champions Korea, 통칭 LCK는 라이엇 게임즈가 주최하고 주관하는 대한민국 지역의 리그 오브 레전드 프로 1군 리그이며, LOL e스포츠 4대 메이저 리그에 속한다.
    LCK는 오랫동안 국제 대회의 패권을 쥐고 있었으며, 4대 메이저리그 중 가장 선수들의 질이 높은 리그로 유명하며 현재 1군에 등록된 선수들은 전부 대한민국 국적으로 4대 메이저리그 중 유일하게 단일국적 선수로 이루어진 리그입니다.
  	<br/></p>
    <p><br/></p>
    <h3 class="w3-center">다른 정보를 확인하고 싶다면</h3>
	 
      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
      
        <div class="w3-third w3-margin-bottom">
          <div class="w3-container w3-white">
            <p><b>League of Legends</b></p>
            <p class="w3-opacity">리그 오브 레전드</p>
            <p>리그 오브 레전드를<br/>직접 플레이하고 즐겨보세요!</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="location.href='https://www.leagueoflegends.com/ko-kr/';">League of Legends</button>
          </div>
        </div>
        
        <div class="w3-third w3-margin-bottom">
          <div class="w3-container w3-white">
            <p><b>LoL Esports</b></p>
            <p class="w3-opacity">타 리그 및 국제대회 정보</p>
            <p>더욱 다양한 리그들의 중계가<br/>필요하다면 확인해보세요!</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="location.href='https://lolesports.com/';">LoL Esports</button>
          </div>
        </div>
        
        <div class="w3-third w3-margin-bottom">
          <div class="w3-container w3-white">
            <p><b>LCK LEGENDARIES</b></p>
            <p class="w3-opacity">LCK 최초의 디지털 콜렉터블</p>
            <p>좋아하는 선수의 명장면을<br/>카드로 소장해보세요!</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="location.href='https://lck.legendaries.com/ko';">LCK LEGENDARIES</button>
          </div>
        </div>
        
      </div>
    </div>
  </div>
</div>

<!-- footer -->
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
