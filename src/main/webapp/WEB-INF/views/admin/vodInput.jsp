<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VOD 업로드</title>
  <link rel="stylesheet" href="${ctp}/font/font.css"/>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <style>
    th {
      text-align: center;
      background-color: #eee;
    }
	 h2 {font-family:'EF_watermelonSalad';font-weight:bold;}
	 .container {font-family:'SUITE-Regular';font-weight:bold;}
	 .star {
	    position: relative;
	    font-size: 2rem;
	    color: #ddd;
	  }
	  .star span {
	    width: 0;
	    position: absolute; 
	    left: 0;
	    color: red;
	    overflow: hidden;
	    pointer-events: none;
	  }
	  .star input {
	    width: 100%;
	    height: 100%;
	    position: absolute;
	    left: 0;
	    opacity: 0;
	    cursor: pointer;
	  }
	</style>
  <script>
    'use strict';
    
 		// 자료 올리기(등록처리)
    function fCheck() {
    	let fName = $("#thumbnail").val();
    	let maxSize = 1024 * 1024 * 50;	// 최대 50MByte 허용
    	
    	if(fName.trim() == "") {
    		alert("썸네일을 선택하세요.");
    		return false;
    	}
    	
    	// 파일 사이즈 처리..
    	let fileSize = 0;
    	
    	if(fName != "") {
    		fileSize += document.getElementById('thumbnail').files[0].size;
    	}

    	let ext = fName.substring(fName.lastIndexOf(".")+1).toUpperCase();

    	if(ext != "JPG" && ext != "JPEG" && ext != "PNG") {
    		alert("업로드 가능한 파일은 'jpg/jpeg/png' 파일입니다.");
    		return false;
    	}
    	
    	if(fileSize > maxSize) {
    		alert("업로드할 파일의 최대용량은 50MByte입니다.");
    		return false;
    	}
    	else {
    		// alert("파일사이즈 : " + fileSize);
	    	myform.fileSize.value = fileSize;
	    	myform.submit();
    	}
    }
  </script>
</head>
<body>
<p><br/></p>
<p><br/></p>
<div class="container">
  <h2 class="text-center">VOD 등록</h2>
  <hr style="border:2px solid #937062;margin-left:auto;margin-right:auto;" width="40%" />
  <!-- <form name="myform" method="post" enctype="multipart/form-data"> -->
  <form name="myform" method="post" enctype="multipart/form-data">
  	<table class="table table-borderless">
			<tr>
				<td style="text-align: center;">
					<label for="part" class="mr-4" style="font-weight:bold;margin-left:-260px;">분류</label>
						<select id="part" name="part" class="w3-input w3-border w3-round-xlarge text-center" style="width:100px;margin-left:453px;margin-top:-35px;" autofocus required>
				    	<option value="하이라이트">Highlight</option>
				    	<option value="인터뷰">Interview</option>
				    	<option value="FullVOD">Full VOD</option>
				    	<option value="기타">ETC</option>
		    		</select>
					<!-- <input type="text" id="title" name="title" class="w3-input w3-border w3-round-xlarge" autofocus required style="width: 220px; margin: 0 auto; display: inline-block;" /> -->
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<label for="text" style="font-weight:bold;">VOD 제목</label>
					<input type="text" id="vodName" name="vodName" class="w3-input w3-border w3-round-xlarge" required style="width: 250px; margin: 0 auto; margin-left:20px; display: inline-block;" />
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<label for="text" style="font-weight:bold;">썸네일</label>
					<input type="file" id="thumbnail" name="fName" class="form-control-file border w3-input w3-border w3-round-xlarge" accept=".jpg,.jpeg,.png" required style="width: 250px; margin: 0 auto; margin-left:20px; display: inline-block;" />
					<div>(업로드 가능파일:jpg, jpeg, png)</div>
				</td>
			</tr>
			<tr>
		       <th>상세정보</th>
		       <td><textarea rows="6" name="content" id="CKEDITOR" class="form-control" required></textarea></td>
		       <script>
		        CKEDITOR.replace("content",{
		        	height:480,
		        	filebrowserUploadUrl:"${ctp}/imageUpload",	/* 파일(이미지) 업로드시 매핑경로 */
		        	uploadUrl : "${ctp}/imageUpload"		/* 여러개의 그림파일을 드래그&드롭해서 올리기 */
		        });
		       </script>
		    </tr>
			<tr>
				<td style="text-align: center;">
					<label for="openSw" style="font-weight:bold;">공개여부</label>
						<input type="radio" id="openSw" name="openSw" value="OK" checked />공개 &nbsp;
	          <input type="radio" id="openSw" name="openSw" value="NO" />비공개
				</td>
			</tr>
			<tr>
				<td colspan="2" class="text-center">
					<input type="button" value="등록" onclick="fCheck()" class="w3-button w3-border w3-border-green w3-round" />
					<input type="reset" value="재입력" class="w3-button w3-border w3-border-purple w3-round" />
					<input type="button" value="돌아가기" onclick="location.href='${ctp}/admin/adminContent';" class="w3-button w3-round w3-red" />
					<input type="hidden" id="fileSize" value="fileSize" />
				</td>
			</tr>
		</table>
  </form>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>