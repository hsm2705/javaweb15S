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
  <title>LCK 뉴스</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <style>
    th {
      text-align: center;
      background-color: #eee;
    }
  </style>
  <script>
    'use strict';
    
    // 좋아요버튼 클릭시 하트그림 빨강색처리(세션처리)...(세션이 끈어지면 다시 하트그림이 원래색으로 돌아가게 된다.)
    function goodCheck() {
    	
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/news/newsGoodCheckAjax",
    		data  : {idx : ${vo.idx}},
    		success:function(res) {
    			if(res == "0") alert("이미 좋아요 버튼을 클릭하셨습니다.");
    			else location.reload();
    		},
    		error : function() {
    			alert("전송 오류~~");
    		}
    	});
    }
    
    // 좋아요 Plus버튼누르면 1증가처리(세션처리).. (Minus버튼클릭시 1감소처리)
    function goodCheckPlusMinus(flag) {
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/news/newsGoodPlusMinus",
    		data  : {
    			idx : ${vo.idx},
    			goodCnt : flag
    		},
    		success:function(res) {
    			if(res == "1") alert("이미 누르셨습니다.");
    			else location.reload();
    		}
    	});
    }
    
    // DB를 활용한 좋아요 토글처리...
    function goodDBCheck(idx) {
    	if(idx == "") idx = 0;
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/news/newsGoodDBCheck",
    		data  : {
    			idx  : idx,
				  part : 'news',
				  partIdx : ${vo.idx},
				  mid  : '${sMid}'
				},
    		success:function() {
    			location.reload();
    		},
    		error : function() {
    			alert("전송 오류~~");
    		}
    	});
    }
    
    // 게시글 삭제처리
    function newsDelete() {
    	let ans = confirm("현 게시글을 삭제하시겠습니까?");
    	if(ans) location.href="${ctp}/news/newsDelete?idx=${vo.idx}&pag=${pageVO.pag}&pageSize=${pageVO.pageSize}&nickName=${vo.nickName}";
    }
  </script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center">글 내 용 보 기</h2>
  <br/>
  <table class="table table-bordered">
    <tr>
      <th>글쓴이</th>
      <td>${vo.nickName}</td>
      <th>글쓴날짜</th>
      <td>${fn:substring(vo.WDate,0,fn:length(vo.WDate)-2)}</td>
    </tr>
    <tr>
      <th>글제목</th>
      <td colspan="3">${vo.title}</td>
      
    </tr>
    <tr>
      <th>전자메일</th>
      <td>${vo.email}</td>
      <th>조회수</th>
      <td>${vo.readNum}</td>
    </tr>
    <tr>
      <th>좋아요</th>
      <td>
		<a href="javascript:goodCheck()">
          <c:if test="${sSw == '1'}"><font color="red">❤</font></c:if>
          <c:if test="${sSw != '1'}">❤</c:if>
        </a>
        ${vo.good} ,
        <a href="javascript:goodCheckPlusMinus(1)">👍</a>
        <a href="javascript:goodCheckPlusMinus(-1)">👎</a> ,
        <a href="javascript:goodDBCheck(${goodVo.idx})">
          <c:if test="${!empty goodVo}"><font color="red">❤</font></c:if>
          <c:if test="${empty goodVo}">❤</c:if>(토글DB) ,
        </a>
      </td>
    </tr>
    <tr>
      <th>글내용</th>
      <td colspan="3" style="height:220px">${fn:replace(vo.content, newLine, "<br/>")}</td>
    </tr>
    <tr>
      <td colspan="4" class="text-center">
        <c:if test="${flag == 'search'}"><input type="button" value="돌아가기" onclick="location.href='${ctp}/news/newsSearch?search=${search}&searchString=${searchString}&pag=${pag}&pageSize=${pageSize}';" class="btn btn-primary"/></c:if>
        <c:if test="${flag == 'searchMember'}"><input type="button" value="돌아가기" onclick="location.href='${ctp}/news/newsSearchMember?pag=${pag}&pageSize=${pageSize}';" class="btn btn-primary"/></c:if>
        <c:if test="${flag != 'search' && flag != 'searchMember'}"><input type="button" value="돌아가기" onclick="location.href='${ctp}/news/newsList?pag=${pag}&pageSize=${pageSize}';" class="btn btn-primary"/></c:if>
        &nbsp;
      	<c:if test="${sMid == vo.mid || sLevel < 1}">
        	<input type="button" value="수정하기" onclick="location.href='${ctp}/news/newsUpdate?idx=${vo.idx}&pag=${pag}&pageSize=${pageSize}';" class="btn btn-warning"/> &nbsp;
        	<input type="button" value="삭제하기" onclick="newsDelete()" class="btn btn-danger"/>
      	</c:if>
      </td>
    </tr>
  </table>
  
  <c:if test="${flag != 'search' && flag != 'searchMember'}">
	  <!-- 이전글/ 다음글 처리 -->
	  <table class="table table-borderless">
	    <tr>
	      <td>
	        <c:if test="${!empty pnVos[1]}">
	          ☝ <a href="${ctp}/news/newsContent?idx=${pnVos[1].idx}&pag=${pag}&pageSize=${pageSize}">다음글 : ${pnVos[1].title}</a><br/>
	        </c:if>
	        <c:if test="${vo.idx < pnVos[0].idx}">
	        	☝ <a href="${ctp}/news/newsContent?idx=${pnVos[0].idx}&pag=${pag}&pageSize=${pageSize}">다음글 : ${pnVos[0].title}</a><br/>
	        </c:if>
	        <c:if test="${vo.idx > pnVos[0].idx}">
	        	👇 <a href="${ctp}/news/newsContent?idx=${pnVos[0].idx}&pag=${pag}&pageSize=${pageSize}">이전글 : ${pnVos[0].title}</a><br/>
	        </c:if>
	      </td>
	    </tr>
	  </table>
  </c:if>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>