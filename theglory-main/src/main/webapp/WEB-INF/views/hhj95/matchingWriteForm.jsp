<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/matchFormcheck.js"></script>
<div class="container">
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">게시 글쓰기</h2>
			</div>
		</div> 
		<form name="matchingWriteForm" action="matchingWriteProcess" id="matchingWriteForm" class="row g-3 border-primary" method="post">
			<div class="col-4 offset-md-2">
				<label for="writer" class="form-label">작성자</label>
				<input type="text" class="form-control" name="writer" id="writer" placeholder="작성자를 입력해주세요.">
		 	</div>
		 	<div class="col-4 ">
		 		<label for="pass" class="form-label">비밀번호</label>
		 		<input type="password" class="form-control" name="pass" id="pass" >
		 	</div>
		 	<div class="col-8 offset-md-2">
		 		<label for="title" class="form-label">제 목</label>
		 		<input type="text" class="form-control" name="title" id="title" >
		 	</div>
		 	<div class="col-2 offset-md-2">
				<label for="local" class="col-form-label px-3">지역</label>
			 		<select name="local" id="local">
			 			<option value="서울">서울</option>
			 			<option value="경기">경기</option>
			 			<option value="인천">인천</option>
			 			<option value="강원">강원</option>
			 			<option value="대전">대전</option>
			 			<option value="충남">충남</option>
			 			<option value="충북">충북</option>
			 			<option value="경북">경북</option>
			 			<option value="경남">경남</option>
			 			<option value="전남">전남</option>
			 			<option value="전북">전북</option>
			 			<option value="부산">부산</option>
			 			<option value="울산">울산</option>
			 			<option value="대구">대구</option>
			 			<option value="광주">광주</option>
			 			<option value="제주">제주</option>
			 		</select>
		 	</div>
		 	<div class="col-3 offset-md-1">
		 		<label for="bloodtype" class="col-form-label px-3">혈액형</label>
			 		<select name="bloodtype" id="bloodtype">
			 			<option value="A형">A형</option>
			 			<option value="B형">B형</option>
			 			<option value="O형">O형</option>
			 			<option value="AB형">AB형</option>
			 			<option value="기타">기타</option>
			 		</select>
		 	</div>
		 	<div class="col-4">
		 		<label for="bloodDonation" class="col-form-label px-3">헌혈 종류</label>
			 		<select name="bloodDonation" id="bloodDonation">
			 			<option value="전혈">전혈</option>
			 			<option value="혈장">혈장</option>
			 			<option value="혈소판">혈소판</option>
			 		</select>
		 	</div>
			<div class="col-8 offset-md-2">
		 		<label for="content" class="form-label">내 용</label>
		 		<textarea class="form-control" name="content" id="content" rows="10"></textarea>
		 	</div>
		 	<div class="col-8 offset-md-2 text-center mt-5">
		 		<input type="submit" value="등록하기" class="btn btn-primary"/>
					&nbsp;&nbsp;
				<input type="button" value="목록보기" onclick="location.href='matchingBoardList'" class="btn btn-primary"/>
		 	</div>
		</form>
	</div>
</div>
</div>