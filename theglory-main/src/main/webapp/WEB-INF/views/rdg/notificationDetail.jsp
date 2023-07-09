<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="resources/js/formcheck_rdg.js"></script>
<!-- content -->
<div class="container">
<div class="row my-5" id="global-content">
	<div class="col">
		<form name="checkForm" id="checkForm">
			<input type="hidden" name="no" id="no" value="${ notification.no }"/>
			<input type="hidden" name="pass" id="rPass" />
			<input type="hidden" name="pageNum" value="${ pageNum }" />
			
			<c:if test="${ searchOption }">
				<input type="hidden" name="type" value="${ type }" />
				<input type="hidden" name="keyword" value="${ keyword }" />
			</c:if>
		</form>
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">공지사항</h2>
			</div>
		</div> 
		<div class="row my-3">
			<div class="col">
				<table class="table table-bordered" >
					<tbody>					
						<tr>
							<th class="table-secondary">제 목</th>
							<td colspan="3">${ notification.title }</td>		
						</tr>
						<tr>
							<th>글쓴이</th>
							<td>${ notification.writer }</td>
							<th>작성일</th>
							<td><fmt:formatDate value="${ notification.regDate }" 
								pattern="yyyy-MM-dd HH:mm:ss" /></td>		
						</tr>
						<tr>		
							<th>비밀번호</th>
							<td>
								<div class="col-sm-8">
									<input class="form-control" type="password" name="pass" id="pass">
								</div>
							</td>
							<th>조회수</th>
							<td>${ notification.readCount }</td>
						</tr>	
						
						<tr>		
							<td colspan="4">
								<pre>${ notification.content }</pre>
							</td>
						</tr>	
					</tbody>
				</table>
			</div>
		</div>
		<div class="row my-3">
			<div class="col text-center">
				<input class="btn btn-warning" type="button" id="detailUpdate" value="수정하기"/>
				&nbsp;&nbsp;<input class="btn btn-danger"  type="button" id="detailDelete" value="삭제하기" />			
						
				<c:if test="${ not searchOption }">
					&nbsp;&nbsp;<input class="btn btn-primary" type="button" value="목록보기" 
					onclick="location.href='notificationList?pageNum=${pageNum}'"/>
				</c:if>

				<c:if test="${ searchOption }">
					&nbsp;&nbsp;<input class="btn btn-primary" type="button" value="목록보기" 
					onclick="location.href='notificationList?pageNum=${pageNum}&type=${ type }&keyword=${ keyword }'"/>
				</c:if>		
			</div>
		</div>
	</div>	
</div>
</div>