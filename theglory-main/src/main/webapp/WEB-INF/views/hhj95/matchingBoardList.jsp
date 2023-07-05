<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold p-4">매칭 게시판</h2>
			</div>
		</div>
		<form name="searchForm" id="searchForm" action="#" class="row justify-content-center my-4">
			<div class="col-auto">
				<select name="type" class="form-select">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
					<option value="content">내용</option>
				</select>
			</div>
			<div class="col-4">
				<input type="text" name="keyword" class="form-control"/>
			</div>
			<div class="col-auto">
				<input type="submit" value="검 색" class="btn btn-primary"/>
			</div>
		</form>
		<div>
		<!-- 카테고리 -->
			<div class="container border">
				<div class="row">
					<div class="col-12">
						<div class="accordion accordion-flush" id="accordionFlushExample">
  							<div class="accordion-item">
    							<h2 class="accordion-header" id="flush-headingOne">
      								<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        								카테고리
      								</button>
    							</h2>
		    					<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
		     						<div class="accordion-body category">
		     						<!-- 카테고리1. 지역 -->
		     							<div class="accordion accordion-flush" id="accordionFlushExample">
  											<div class="accordion-item">
    											<h2 class="accordion-header" id="flush-headingOne">
      												<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        												지역
      												</button>
    											</h2>
		    									<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
		     										<div class="accordion-body">
		     											<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="서울" value="서울">
  																<label class="form-check-label" for="서울">서울</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="경기" value="경기">
  																<label class="form-check-label" for="경기">경기</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="인천" value="인천">
  																<label class="form-check-label" for="인천">인천</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="강원" value="강원">
  																<label class="form-check-label" for="강원">강원</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="대전" value="대전">
  																<label class="form-check-label" for="대전">대전</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="충남" value="충남">
  																<label class="form-check-label" for="충남">충남</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="충북" value="충북">
  																<label class="form-check-label" for="충북">충북</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="경북" value="경북">
  																<label class="form-check-label" for="경북">경북</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="경남" value="경남">
  																<label class="form-check-label" for="경남">경남</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="전남" value="전남">
  																<label class="form-check-label" for="전남">전남</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="전북" value="전북">
  																<label class="form-check-label" for="전북">전북</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="부산" value="부산">
  																<label class="form-check-label" for="부산">부산</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="울산" value="울산">
  																<label class="form-check-label" for="울산">울산</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="대구" value="대구">
  																<label class="form-check-label" for="대구">대구</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="광주" value="광주">
  																<label class="form-check-label" for="광주">광주</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="제주" value="제주">
  																<label class="form-check-label" for="제주">제주</label>
														</div>
		     										</div>
		    									</div>
  											</div>
  										</div>
  										<!-- 카테고리2. 혈액형 -->
  										<div class="accordion accordion-flush" id="accordionFlushExample">
  											<div class="accordion-item">
    											<h2 class="accordion-header" id="flush-headingOne">
      												<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        												혈액형
      												</button>
    											</h2>
		    									<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
		     										<div class="accordion-body">
		     											<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="A형" value="A형">
  																<label class="form-check-label" for="A형">A형</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="B형" value="B형">
  																<label class="form-check-label" for="B형">B형</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="AB형" value="AB형">
  																<label class="form-check-label" for="AB형">AB형</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="O형" value="O형">
  																<label class="form-check-label" for="O형">O형</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="기타" value="기타">
  																<label class="form-check-label" for="기타">기타</label>
														</div>
		     										</div>
		    									</div>
  											</div>
  										</div>
  										<!-- 카테고리3. 헌혈종류 -->
  										<div class="accordion accordion-flush" id="accordionFlushExample">
  											<div class="accordion-item">
    											<h2 class="accordion-header" id="flush-headingOne">
      												<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        												헌혈 종류
      												</button>
    											</h2>
		    									<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
		     										<div class="accordion-body">
		     											<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="전혈" value="전혈">
  																<label class="form-check-label" for="전혈">전혈</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="혈장" value="혈장">
  																<label class="form-check-label" for="혈장">혈장</label>
														</div>
														<div class="form-check form-check-inline">
  															<input class="form-check-input" type="checkbox" id="혈소판" value="혈소판">
  																<label class="form-check-label" for="혈소판">혈소판</label>
														</div>
		     										</div>
		    									</div>
  											</div>
  										</div>
		     						</div>
		    					</div>
  							</div>
  						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- 검색 요청일 경우 (일반 게시글 리스트로 이동할 수 있는 버튼 생성) -->
	<c:if test="${ searchOption }">
		<div class="row my-3">
			<div class="col text-center">
				"${ keyword }" 검색 결과
			</div>
		</div>
		<div class="row my-3">
			<div class="col-6">
				<a href="matchingBoardList" class="btn btn-outline-success"> 리스트 </a>
			</div>
			<div class="col-6 text-end">
				<a href="matchingWriteForm" class="btn btn-outline-success"> 글쓰기 </a>
			</div>
		</div>
	</c:if>
	<!-- 검색 요청이 아닐 경우 -->
	<c:if test="${ not searchOption }">
	<div class="row">
		<div class="col text-end mt-3">
			<a href="matchingWriteForm" class="btn btn-outline-success">글쓰기</a>
		</div>
	</div>
	</c:if>
	<div class="row my-3">
		<div class="col">
			<table class="table table-hover">
				<thead>
					<tr class="table-dark text-center">
						<th>NO</th>
						<th>카테고리</th>
						<th class="col-5">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody class="text-secondary text-center">
					<!-- 검색 요청이면서 검색 된 게시 글이 있는 경우 -->
					<c:if test="${ searchOption and not empty boardList }">
						<c:forEach var="b" items="${boardList}">
							<tr >
								<td>${ b.no }</td>
								<td>${ b.local } | ${ b.bloodtype } | ${ b.bloodDonation }</td>
								<td><a href="matchingBoardDetail?no=${b.no}&pageNum=${currentPage}&type=${type}&keyword=${keyword}" class="text-decoration-none link-secondary">
									${ b.title }
									</a>
								</td>
								<td>${ b.writer }</td>
								<td><fmt:formatDate value="${ b.writeDate }" pattern="yyyy-MM-dd"/></td>
								<td>${ b.readCount }</td>
							</tr>
						</c:forEach>
					</c:if>
					<!-- 일반 게시 글 리스트면서 게시 글 리스트가 존재할 경우 -->
					<c:if test = "${ not searchOption and not empty boardList }">
						<c:forEach var="b" items="${boardList}">
							<tr >
								<td>${ b.no }</td>
								<td>${ b.local } | ${ b.bloodtype } | ${ b.bloodDonation }</td>
								<td><a href="matchingBoardDetail?no=${b.no}&pageNum=${currentPage}" class="text-decoration-none link-secondary">
									${ b.title }
									</a>
								</td>
								<td>${ b.writer }</td>
								<td><fmt:formatDate value="${ b.writeDate }" pattern="yyyy-MM-dd"/></td>
								<td>${ b.readCount }</td>
							</tr>
						</c:forEach>
					</c:if>
					<!-- 검색 요청이면서 검색된 리스트가 존재하지 않을 경우 -->
					<c:if test="${ searchOption and empty boardList }">
						<tr>
							<td colspan="5" class="text-center"> "${ keyword }" 가 포함된 게시 글이 존재하지 않습니다. </td>
						</tr>
					</c:if>
					<!-- 일반 게시 글이면서 리스트가 존재하지 않을 겨우 -->
					<c:if test="${ not searchOption and empty boardList }">
						<tr>
							<td colspan="5" class="text-center">게시 글이 존재하지 않습니다. </td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 검색 요청이면서 검색된 리스트가 존재할 경우 페이지네이션 -->
	<c:if test="${ searchOption and not empty boardList }">
		<div class="row">
			<div class="col">
				<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">
						<c:if test="${ startPage > pageGroup }">
							<li class="page-item">
								<a class="page-link" href="matchingBoardList?pageNum=${ startPage - pageGroup }&type=${type}&keyword=${keyword}">이전</a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${ startPage }" end="${ endPage }">
							<c:if test="${ i == currentPage }">
								<li class="page-item active" aria-current="page">
									<span class="page-link">${ i }</span>
								</li>
							</c:if>
							<c:if test="${ i != currentPage }">
								<li class="page-item">
									<a class="page-link" href="matchingBoardList?pageNum=${ i }&type=${type}&keyword=${keyword}">${ i }</a>
								</li>
							</c:if>
						</c:forEach>
						<c:if test="${ endpage < pageCount }">
							<li class="page-item">
								<a class="page-link" href="matchingBoardList?pageNum=${ startPage + pageGroup }&type=${type}&keyword=${keyword}">다음</a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>		
	</c:if>
	<!-- 일반 게시글 요청이면서 검색된 리스트가 존재 할 경우 페이지네이션 -->
	<c:if test="${ not searchOption and not empty boardList }">
		<div class="row">
			<div class="col">
				<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">
						<c:if test="${ startPage > pageGroup }">
							<li class="page-item">
								<a class="page-link" href="matchingBoardList?pageNum=${ startPage - pageGroup }">이전</a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${ startPage }" end="${ endPage }">
							<c:if test="${ i == currentPage }">
								<li class="page-item active" aria-current="page">
									<span class="page-link">${ i }</span>
								</li>
							</c:if>
							<c:if test="${ i != currentPage }">
								<li class="page-item">
									<a class="page-link" href="matchingBoardList?pageNum=${ i }">${ i }</a>
								</li>
							</c:if>
						</c:forEach>
						<c:if test="${ endpage < pageCount }">
							<li class="page-item">
								<a class="page-link" href="matchingBoardList?pageNum=${ startPage + pageGroup }">다음</a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>		
	</c:if>
	</div>
</div>