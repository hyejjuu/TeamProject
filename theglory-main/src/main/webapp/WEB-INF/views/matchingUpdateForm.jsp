<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/matchFormcheck.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">게시 글 수정</h2>
			</div>
		</div> 
		<form name="matchingUpdateForm" action="update" id="matchingUpdateForm" class="row g-3 border-primary" method="post">
			<div class="col-4 offset-md-2">
				<label for="writer" class="form-label">작성자</label>
				<input type="text" class="form-control" name="writer" id="writer" placeholder="작성자를 입력해 주세요" value="${board.writer}">
				<input type="hidden" name="no" value="${board.no}">
				<input type="hidden" name="pageNum" value="${ pageNum }" />
				<c:if test="${ searchOption }">
					<input type="hidden" name="type" value="${ type }" />
					<input type="hidden" name="keyword" value="${ keyword}" />
				</c:if>
		 	</div>
		 	<div class="col-4 ">
		 		<label for="pass" class="form-label">비밀번호</label>
		 		<input type="password" class="form-control" name="pass" id="pass" >
		 	</div>
		 	<div class="col-8 offset-md-2">
		 		<label for="title" class="form-label">제 목</label>
		 		<input type="text" class="form-control" name="title" id="title" value="${board.title}">
		 	</div>
		 	<div class="col-2 offset-md-2">
				<label for="local" class="col-form-label px-3">지역</label>
			 		<select name="local" id="local">
			 			<option value="서울" <c:if test="${board.local == '서울'}"> selected </c:if>> 서울 </option>
			 			<option value="경기" <c:if test="${board.local == '경기'}"> selected </c:if>> 경기 </option>
			 			<option value="인천" <c:if test="${board.local == '인천'}"> selected </c:if>> 인천 </option>
			 			<option value="강원" <c:if test="${board.local == '강원'}"> selected </c:if>> 강원 </option>
			 			<option value="대전" <c:if test="${board.local == '대전'}"> selected </c:if>> 대전 </option>
			 			<option value="충남" <c:if test="${board.local == '충남'}"> selected </c:if>> 충남 </option>
			 			<option value="충북" <c:if test="${board.local == '충북'}"> selected </c:if>> 충북 </option>
			 			<option value="경북" <c:if test="${board.local == '경북'}"> selected </c:if>> 경북 </option>
			 			<option value="경남" <c:if test="${board.local == '경남'}"> selected </c:if>> 경남 </option>
			 			<option value="전남" <c:if test="${board.local == '전남'}"> selected </c:if>> 전남 </option>
			 			<option value="전북" <c:if test="${board.local == '전북'}"> selected </c:if>> 전북 </option>
			 			<option value="부산" <c:if test="${board.local == '부산'}"> selected </c:if>> 부산 </option>
			 			<option value="울산" <c:if test="${board.local == '울산'}"> selected </c:if>> 울산 </option>
			 			<option value="대구" <c:if test="${board.local == '대구'}"> selected </c:if>> 대구 </option>
			 			<option value="광주" <c:if test="${board.local == '광주'}"> selected </c:if>> 광주 </option>
			 			<option value="제주" <c:if test="${board.local == '제주'}"> selected </c:if>> 제주 </option>
			 		</select>
		 	</div>
		 	<div class="col-3 offset-md-1">
		 		<label for="bloodtype" class="col-form-label px-3">혈액형</label>
			 		<select name="bloodtype" id="bloodtype">
			 			<option value="A형" <c:if test="${board.bloodtype == 'A형'}"> selected </c:if>> A형 </option>
			 			<option value="B형" <c:if test="${board.bloodtype == 'B형'}"> selected </c:if>> B형 </option>
			 			<option value="O형" <c:if test="${board.bloodtype == 'O형'}"> selected </c:if>> O형 </option>
			 			<option value="AB형" <c:if test="${board.bloodtype == 'AB형'}"> selected </c:if>> AB형 </option>
			 			<option value="기타" <c:if test="${board.bloodtype == '기타'}"> selected </c:if>> 기타 </option>
			 		</select>
		 	</div>
		 	<div class="col-4">
		 		<label for="bloodDonation" class="col-form-label px-3">헌혈 종류</label>
			 		<select name="bloodDonation" id="bloodDonation">
			 			<option value="전혈" <c:if test="${board.bloodDonation == '전혈'}"> selected </c:if>> 전혈 </option>
			 			<option value="혈장" <c:if test="${board.bloodDonation == '혈장'}"> selected </c:if>> 혈장 </option>
			 			<option value="혈소판" <c:if test="${board.bloodDonation == '혈소판'}"> selected </c:if>> 혈소판 </option>
			 		</select>
		 	</div>
			<div class="col-8 offset-md-2">
		 		<label for="content" class="form-label">내 용</label>
		 		<textarea class="form-control" name="content" id="content" rows="10">${board.content}</textarea>
		 	</div>
		 	<div class="col-8 offset-md-2 text-center mt-5">
		 		<input type="submit" value="수정하기" class="btn btn-primary"/>
					&nbsp;&nbsp;
				<!-- 일반 게시 글 리스트 요청이면 일반 게시 글 리스트로 돌려보냄 -->
				<c:if test="${ not searchOption }">
					<input class="btn btn-primary" type="button" value="목록보기" onclick="location.href='matchingBoardList?pageNum=${pageNum}'"/>
				</c:if>
				<!-- 검색 리스트 요청이면 검색 리스트의 동일한 페이지로 돌려보냄 -->
				<c:if test="${ searchOption }">
					<input class="btn btn-primary" type="button" value="목록보기" 
						onclick="location.href='matchingBoardList?pageNum=${pageNum}&type=${ type }&keyword=${ keyword }'"/>
				</c:if>
		 	</div>
		</form>
	</div>
</div>