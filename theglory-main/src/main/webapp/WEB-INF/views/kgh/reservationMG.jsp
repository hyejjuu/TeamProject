<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"crossorigin="anonymous"></script>

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


<div class="container" >
<div class="row my-5">
	<div class="col">
		<div class="row text-center">
			<div class="col">
				<h2 class="fs-3 fw-bold">예약리스트</h2>
			</div>
		</div>  		
		<div class="row my-3">			
			<div class="col">
				<table class="table table-hover ">
					<thead>					
						<tr class="table-dark">
							<th>날짜</th>
							<th>시간</th>
							<th>종류</th>
							<th>장소</th>
							<th>진행상태</th>
						    <th>지역</th>
						    <th>비고</th>
						    <th>비고</th>
						</tr>									
					</thead>
					<tbody class="text-secondary">								
						<c:forEach var="r" items="${rsv}">
								<tr>
									<td>	${r.rdate}</td>
									<td>
												${r.rtime}
									</td>
									<td> ${r.dname}</td>
									<td>	 ${r.lname}</td>
									<td>	${m.birth}</td>
									<td>	${r.rstate}</td>
								    <td>	${r.rNo}</td>		
								    <td>
								        <c:if test="${r.stateNo == 1}">
								    	<a href="stateUpdate?rNo=${r.rNo}"><button class="btn btn-danger" type="button">확정</button></a>
								    	</c:if>
								    </td>										   		                  	
								</tr>
							</c:forEach>						
					</tbody>
				</table>
			</div>			
		</div>
     </div>
   </div>
 </div>

