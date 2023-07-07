<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
<!-- content -->
<div class="container" >
<div class="row my-5">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">공지사항 리스트</h2>
			</div>
		</div>  		
		<form name="searchForm" id="searchForm" action="#" class="row justify-content-center my-3">
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
		
		<c:if test="${ searchOption }">
			<div class="row my-3">
				<div class="col text-center">
					"${ keyword }" 검색 결과
				</div>
			</div>
			 
  			<div class="row my-3">
				<div class="col-6">
				<a href="notificationList" class="btn btn-outline-success">리스트</a>
				</div>
				<div class="col-6 text-end">
				<a href="notificationWriteForm" class="btn btn-outline-secondary">공지사항추가</a>
				</div>
			</div>
		</c:if>
  		
		<c:if test="${ not searchOption }">
			<div class="row my-3">
				<div class="col text-end">
					<a href="notificationWriteForm" class="btn btn-outline-secondary">공지사항추가</a>
				</div>
			</div>
		</c:if>  		
		<div class="row my-3">			
			<div class="col">
				<table class="table table-hover text-center">
					<thead>					
						<tr class="table-dark">
							<th>NO</th>
							<th>작성자</th>	
						    <th>제목</th>
							<th>작성일</th>		
						    <th>비고</th>
						    <th>비고</th>
						</tr>	
					</thead>
					<tbody class="text-secondary">
					
						<c:if test="${ searchOption and not empty notificationList }">
							<c:forEach var="b" items="${notificationList}" varStatus="status">
								<tr>
									<td>${ b.no }</td>
									<td>
										<a href="notificationDetail?no=${b.no}&pageNum=${currentPage}&type=${ type }&keyword=${ keyword }" 
										class="text-decoration-none link-secondary" onclick="showNotificationDetail()">${ b.title }</a>
									</td>
									<td>${ b.writer }</td>
									<td>${ b.regDate }</td>
									<td>${ b.readCount }</td>
									<td><input class="btn btn-warning" type="button" id="detailUpdate" value="수정하기"/></td>
			                        <td><input class="btn btn-danger"  type="button" id="detailDelete" value="삭제하기" /></td>			
								</tr>
							</c:forEach>
						</c:if>
						
						<c:if test="${ not searchOption and not empty notificationList }">
							<c:forEach var="b" items="${notificationList}" varStatus="status">
								<tr>
									<td>${ b.no }</td>
									<td><a href="notificationDetail?no=${b.no}&pageNum=${currentPage}" class="text-decoration-none link-secondary">${ b.title }</a></td>
									<td>${ b.writer }</td>
									<td>${ b.regDate }</td>
			
									<td>
									<a href="#" onclick="showNotificationDetail(${b.no},${currentPage})">
									<input class="btn btn-secondary text-white" type="button" id="detailUpdate" value="수정하기"/>
									</a>
									</td>       
			                        <td><input class="btn btn-danger"  type="button" id="detailDelete" value="삭제하기" /></td>	
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>			
		</div>
		
		<c:if test="${ searchOption and not empty notificationList }">
			<div class="row">
				<div class="col">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							 
							<c:if test="${ startPage > pageGroup }">
							 	<li class="page-item">
							 		<a class="page-link bg-dark text-#33FF33" href="notificationList?pageNum=${ startPage - pageGroup }&type=${ type }&keyword=${ keyword }">Pre</a>
 								</li>
 							</c:if>
 
							 <c:forEach var="i" begin="${startPage}" end="${endPage}">
							 	<c:if test="${i == currentPage }">
							 		<li class="page-item active" aria-current="page">
										 <span class="page-link bg-dark text-#33FF33">${i}</span> 
									 </li>
							 	</c:if>
							 	<c:if test="${i != currentPage }">
							 		<li class="page-item">
							 			<a class="page-link bg-dark text-#33FF33" href="notificationList?pageNum=${ i }&type=${ type }&keyword=${ keyword }">${i}</a>
							 		</li>
							 	</c:if> 
							 </c:forEach>
														 
							<c:if test="${ endPage < pageCount }">
								<li class="page-item">
									<a class="page-link" href="notificationList?pageNum=${ startPage + pageGroup }&type=${ type }&keyword=${ keyword }">Next</a>
							 	</li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</c:if>
							
		<c:if test="${ not searchOption and not empty notificationList }">
			<div class="row">
				<div class="col">
					<nav aria-label="Page navigation">
						 <ul class="pagination justify-content-center">
							 
							 <c:if test="${ startPage > pageGroup }">
							 	<li class="page-item">
							 		<a class="page-link" href="notificationList?pageNum=${ startPage - pageGroup }">Pre</a>
							 	</li>
							 </c:if>
							 
							 <c:forEach var="i" begin="${startPage}" end="${endPage}">
							 	<c:if test="${i == currentPage }">
							 		<li class="page-item active" aria-current="page">
							 			<span class="page-link bg-dark text-#33FF33">${i}</span>
							 		</li>
							 	</c:if>
							 	<c:if test="${i != currentPage }">
							 		<li class="page-item bg-dark text-#33FF33"><a class="page-link" href="notificationList?pageNum=${ i }">${i}</a></li>
							 	</c:if> 
							 </c:forEach>
							 
							<c:if test="${ endPage < pageCount }">
								<li class="page-item">
									<a class="page-link" href="notificationList?pageNum=${ startPage + pageGroup }">Next</a>
							 	</li>
							 </c:if>
						</ul>
					</nav>
				</div>
			</div>
		</c:if>
	</div>
</div>
</div>
<script type="text/javascript">

</script>