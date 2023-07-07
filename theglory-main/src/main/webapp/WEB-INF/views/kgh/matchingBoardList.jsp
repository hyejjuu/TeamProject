<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<style>

    .pagination .page-link {
        background-color: black; /* 페이징 박스의 배경색을 변경 */
        color: white; /* 페이징 박스의 텍스트 색상을 변경 */
        border-color: black; /* 페이징 박스의 테두리 색상을 변경 */
    }

    .pagination .page-item.active .page-link {
        background-color: gray; /* 활성화된 페이지 칸의 배경색을 변경 */
        color: #33FF33;
    }
     .table-dark th {
        color: #33FF33;
    }

</style>

<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold p-4">매칭 게시글 리스트</h2>
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
		
		</div>
	</c:if>
	<!-- 검색 요청이 아닐 경우 -->
	<c:if test="${ not searchOption }">
	<div class="row">
		<div class="col text-end mt-3">
			
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
						<th>비고</th>
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
								<td><input class="btn btn-danger"  type="button" id="detailDelete" value="삭제하기" /></td>
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
								<td><input class="btn btn-danger"  type="button" id="detailDelete" value="삭제하기" /></td>
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
									<span class="page-link bg-dark">${ i }</span>
								</li>
							</c:if>
							<c:if test="${ i != currentPage }">
								<li class="page-item">
									<a class="page-link bg-dark" href="matchingBoardList?pageNum=${ i }">${ i }</a>
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