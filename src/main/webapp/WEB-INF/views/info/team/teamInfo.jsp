<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>LCK Team</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <style>
      .image-container {
          display: flex;
          flex-wrap: wrap;
          justify-content: center;
      }
      .image-box {
          width: 50%;
          text-align: center;
          padding: 10px;
      }
      .image-box img {
          width: 60%;
      }
  </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="w-3 container w3-center" id="team">
  <h2>LCK 소속 10팀의 정보를 확인해볼 수 있습니다.</h2><br/>
  <p>2023 LCK summer 참가 팀 목록</p>
    <div class="image-container">
        <div class="image-box">
            <a href="${ctp}/info/team/gen"><img src="${ctp}/images/team/gen.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/t1"><img src="${ctp}/images/team/t1.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/kt"><img src="${ctp}/images/team/kt.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/hle"><img src="${ctp}/images/team/hle.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/dk"><img src="${ctp}/images/team/dk.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/lsb"><img src="${ctp}/images/team/lsb.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/kdf"><img src="${ctp}/images/team/kdf.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/bro"><img src="${ctp}/images/team/bro.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/drx"><img src="${ctp}/images/team/drx.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
        <div class="image-box">
            <a href="${ctp}/info/team/ns"><img src="${ctp}/images/team/ns.jpg" style="margin:50px" class="w3-hover-opacity" /></a>
        </div>
           
    </div>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>