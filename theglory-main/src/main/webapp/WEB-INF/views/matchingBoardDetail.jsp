<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="resources/js/matchReply.js"></script>
<script src="resources/js/matchFormcheck.js"></script>

<div class="row my-5" id="global-content">
	<div class="col">
		<form name="checkForm" id="checkForm">
			<input type="hidden" name="no" id="no" value="${ board.no }"/>
			<input type="hidden" name="pass" id="rPass" />
			<input type="hidden" name="pageNum" value="${ pageNum }" />
			<c:if test="${ searchOption }">
				<input type="hidden" name="type" value="${ type }" />
				<input type="hidden" name="keyword" value="${ keyword}" />
			</c:if>
		</form>
		<div class="row text-center">
			<div class="col">
				<h1 class="fs-3 fw-bold">매칭 게시판</h1>
			</div>
		</div>
	<div class="row my-3">
		<div class="col">
			<div class="p-3 mb-2 bg-secondary text-white fs-3 text-center">
				${ board.title }
			</div>
		<table class="table table-borderless table-sm">
			<tr>
				<td>${ board.local } | ${ board.bloodtype } | ${ board.bloodDonation }</td>
				<td class="text-end">${ board.writer } | 
					<fmt:formatDate value="${ board.writeDate }" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
			</tr>
			<tr>
				<td>조회수 ${ board.readCount }</td>
				<td class="col-sm-3">
					<input class="form-control" type="password" name="pass" id="pass" placeholder="비밀번호를 입력해주세요.">
				</td>
			</tr>
		</table>
	</div>
</div>
		<div class="col-12">
			<label for="content" class="form-label">${board.content}</label>
		</div>
		<div class="row my-5">
			<div class="col text-center">
				<input class="btn btn-warning" type="button" id="detailUpdate" value="수정하기"/>
					&nbsp;&nbsp;
				<input class="btn btn-danger" type="button" id="detailDelete" value="삭제하기" />
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
		</div>
		<!-- 추천/떙큐 영역 -->
		<div class="row my-5">
			<div class="col border p-3">
				<div id="recommend" class="text-end">
					<span id="commend" class="btnCommend text-primary" style="cursor:pointer;">
						<img src="resources/img/recommend.png" alt="추천하기" style="width: 20px; height: 20px;" />&nbsp;추천
						<span class="recommend">(${ board.recommend })</span>
					</span> |
					<span id="thank" class="btnCommend text-primary" style="cursor:pointer;">
					<img src="resources/img/smile.png" alt="땡큐" style="width: 20px; height: 20px;" />&nbsp;땡큐
					<span class="recommend">(${ board.thank }) </span>
					</span> |
					<span id="replyWrite" class="text-primary" style="cursor: pointer;">
						<i class="bi bi-file-earmark-text-fill" style="color:cornflowerblue;"></i>댓글쓰기
					</span>
				</div>
			</div>
		</div>
		
		<!-- 댓글 헤더 영역 -->
		<div class="row" id="replyTitle">
			<div class="col p-2 text-center">
				<h2 class="fs-4">댓글</h2>
			</div>
		</div>
		
		<!-- 댓글 리스트 영역 -->
		<!-- 댓글이 존재하는 경우 -->
		<c:if test="${ not empty replyList }">
			<div class="row mb-3">
				<div class="col" id="replyList">
					<c:forEach var="reply" items="${ replyList }">
						<div class="replyRow row">
							<div class="col">
								<div class="row bg-light p-2">
									<div class="col-4">
										<span>${ reply.replyWriter }</span>
									</div>
									<div class="col-8 text-end">
										<span class="me-3">
											<fmt:formatDate value="${ reply.regDate }" pattern="yyyy-MM-dd HH:mm:ss" />
										</span>
										<button class="modifyReply btn btn-outline-success btn-sm" data-no="${ reply.no }">
											<i class="bi bi-journal-text">수정</i>
										</button>
										<button class="deleteReply btn btn-outline-warning btn-sm" data-no="${ reply.no }">
											<i class="bi bi-trash">삭제</i>
										</button>
										<button class="btn btn-outline-danger btn-sm" onclick="reportReply('${reply.no}')">
											<i class="bi bi-telephone-outbound">신고</i>
										</button>
									</div>
								</div>
								<div class="row">
									<div class="col p-3">
										<pre>${ reply.replyContent }</pre>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</c:if>
		
		<!-- 댓글이 존재하지 않는 경우 -->
		<c:if test="${ empty replyList }">
			<div class="row mb-5" id="replyList">
				<div class="col text-center border p-5">
					<div>이 게시 글에 대한 댓글이 존재하지 않습니다.</div>
				</div>
			</div>
		</c:if>
		
		<!-- 댓글 쓰기 폼 -->
		<div class="row my-3 d-none" id="replyForm">
			<div class="col">
				<form name="replyWriteForm" id="replyWriterForm">
					<input type="hidden" name="matchNo" value="${ board.no }" />
					<input type="hidden" name="replyWriter" value="${ sessionScope.member.id }" />
						<div class="row bg-light my-3 p-3 border">
							<div class="col">
								<div class="row">
									<div class="col text-center">
										<span>악의적인 댓글은 예고 없이 삭제될 수 있으며 글쓰기 제한과 아이디 삭제 처리됩니다. </span>
									</div>
								</div>
								<div class="row my-3">
									<div class="col-md-10">
										<textarea name="replyContent" id="replyContent" class="form-control" rows="4"></textarea>
									</div>
									<div class="col-md">
										<input type="submit" value="댓글쓰기" class="btn btn-primary h-100 w-100" id="replyWriteButton">
									</div>
								</div>
							</div>
						</div>
				</form>
			</div>
		</div> <!-- end replyForm -->
		
	</div>
</div>