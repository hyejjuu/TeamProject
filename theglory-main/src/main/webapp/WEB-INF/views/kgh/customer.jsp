<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
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
				<h2 class="fs-3 fw-bold">회원리스트 </h2>
			</div>
		</div>  		
		<div class="row my-3">			
			<div class="col">
				<table class="table table-hover ">
					<thead>					
						<tr class="table-dark">
							<th>아이디</th>
							<th>이름</th>
							<th>혈액형</th>
							<th>성별</th>
							<th>생년월일</th>
						    <th>지역</th>
						</tr>							
					</thead>
					<tbody class="text-secondary">								
							<c:forEach var="m" items="${member}">
								<tr>
									<td>	${m.id}</td>
									<td>
											${m.name}
									</td>
									<td>${m.bloodtype}</td>
									<td>	${m.gender}</td>
									<td>	${m.birth}</td>
									<td>	${m.address}</td>			                  	
								</tr>
							</c:forEach>
					</tbody>
				</table>
			</div>			
		</div>
     </div>
   </div>
 </div>

