<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Time"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/monthCal.css">
<style>
.Calendar {
	border: 1px solid black;
}
</style>
<script src="resources/js/monthCal.js"></script>
<script type="text/javascript">
	
</script>
<title>달력</title>
</head>
<form name="reservationChkProcess" id="reservationChkProcess"
	method="post">
	<!-- <input type="hidden" name="no" id="no" value="${b1.no}" /> -->
	<%-- <input type="hidden" name="pageNum" value="${ pageNum }" /> --%>
</form>
<body>
	<form id="reservationChk" name="reservationChk"
		action="reservationChkProcess">
		<table class="Calendar mt-5">
			<thead>
				<tr>
					<td onClick="prevCalendar();" style="cursor: pointer;">&#60;</td>
					<td colspan="5"><span id="calYear"></span>년 <span
						id="calMonth"></span>월</td>
					<td onClick="nextCalendar();" style="cursor: pointer;">&#62;</td>
				</tr>
				<tr>
					<td>일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td>토</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<!-- 달력에  -->
		<div id="selectedDate" class="text-center mt-3"></div>

		<!-- 캘린더 날짜 클릭하면 시간 나옴 -->
		<div id="s-eTime" class="d-flex justify-content-center mt-4">
			<table id="reservationTable">
			</table>
		</div>
		
		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!--    <script>
    $(document).ready(function() {
      // 라디오 버튼 체크 이벤트 처리
      $("input[name='donationType']").change(function() {
        var selectedValue = $("input[name='donationType']:checked").val();
        console.log("선택된 값: " + selectedValue);
        // 선택된 값에 따라 원하는 동작 수행
      });
    });
  </script>-->
  
  

		<button type="submit" value="예약하기">선택</button>
	</form>
</body>
</html>

<div class="p-4 row">
	<div class="col text-end">
		<input type="button" value="예약"
			onclick="location.href='resvBldHousStep4'" class="btn btn-warning" />
	</div>
</div>

<!-- 다른ver 
<div class="container">
	<div class="row">
		<div class="col-2 border border-lightgray">시간</div>
		<div class="col-2 border border-lightgray">종류</div>
	</div>
	<c:forEach var="b" items="${reservation}">
		<div class="row">
			<div class="col-2 border border-lightgray">
				${b.reservationTime}</div>

			<div class="col-2 border border-lightgray">
				<input type="text" placeholder="전혈" value="전혈"
					${b.donationtypeName =='전혈'?'style="display:none;"':''}> <input
					type="text" placeholder="혈소판" value="혈소판"
					${b.donationtypeName =='혈소판'?'style="display:none;"':'' }>
				<input type="text" placeholder="혈장" value="혈장"
					${b.donationtypeName =='혈장'?'style="display:none;"':'' }> <input
					type="text" placeholder="혈소판혈장" value="혈소판혈장"
					${b.donationtypeName =='혈소판혈장'?'style="display:none;"':''}>

			</div>
		</div>
	</c:forEach>
</div> -->
<%-- 
	<div class="row my-10" id="global-content">
		<div class="col">
			<div class="row my-2 p-3 text-center">
				<div class="col-8 offset-2">
					<h2 class="fs-3 fw-bold">예약선택</h2>
				</div>
			</div>
		</div>
		<div class="container offset-2 p-2">
			<div class="row my-2 text-center">
				<table class="table table-hover">
					<c:forEach var="b" items="${bList}">
						<div class="col-6 col-sm-2">
							<tr>
								<th class="table" colspan="4">${b.donationtypeNo}이선택되었습니다.</th>
							</tr>
						</div>
						<div class="col-6 col-sm-2"></div>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
 --%>

<!--resvBldHousStep4?locationNo=1&reservationDate=20220711&reservationTime=0900  -->
<!-- <a href="khj/"><button type="button" class="btn btn-primary">예약</button></a> -->
