<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



  <div class="container pt-5">
    <h2>헌혈의집 찾기</h2>
    <hr>
  </div>
 <form class="addressForm" name="adderessForm" method="post" action="searchAction">
    <div class="container pt-5">
       <div class="row justify-content-center border border-lightgray">
         <div class="col-2 border border-lightgray bg-light">모두선택</div>
         <div class="col-4 border border-lightgray">
           <input class="form-check-input" type="checkbox" value="" id="checkboxExample1">
           <label class="form-check-label" for="checkboxExample1">
              모두선택
          </label>
         </div>
       </div>     
         <div class="row justify-content-center border border-lightgray">
         <div class="col-2 border border-lightgray bg-light">헌혈종류 선택</div>
         <div class="col-4 border border-lightgray">
           <input class="form-check-input" type="checkbox" value="" id="checkboxExample2">
           <label class="form-check-label" for="checkboxExample2">
               전혈
          </label>
           <input class="form-check-input" type="checkbox" value="" id="checkboxExample3">
           <label class="form-check-label" for="checkboxExample3">
               혈장
          </label>
           <input class="form-check-input" type="checkbox" value="" id="checkboxExample4">
           <label class="form-check-label" for="checkboxExample4">
               혈소판
          </label>
         </div>
       </div>
         <div class="row justify-content-center border border-lightgray">
         <div class="col-2 border border-lightgray bg-light">운영정보 선택</div>
         <div class="col-4 border border-lightgray">
           <input class="form-check-input" type="checkbox" value="" id="checkboxExample5">
           <label class="form-check-label" for="checkboxExample5">
               평일
          </label>
           <input class="form-check-input" type="checkbox" value="" id="checkboxExample6">
           <label class="form-check-label" for="checkboxExample6">
              주말
          </label>
             <input class="form-check-input" type="checkbox" value="" id="checkboxExample7">
           <label class="form-check-label" for="checkboxExample7">
               공휴일
          </label>
             <input class="form-check-input" type="checkbox" value="" id="checkboxExample8">
           <label class="form-check-label" for="checkboxExample8">
            18시 이후 운영
          </label>
         </div>
       </div>  
         <div class="row justify-content-center border border-lightgray">
         <div class="col-2 border border-lightgray bg-light">편의시설 선택</div>
         <div class="col-4 border border-lightgray">
           <input class="form-check-input" type="checkbox" value="" id="checkboxExample9">
           <label class="form-check-label" for="checkboxExample9">
               주차가능
          </label>
             <input class="form-check-input" type="checkbox" value="" id="checkboxExample10">
           <label class="form-check-label" for="checkboxExample10">
               지하철인근
          </label>
             <input class="form-check-input" type="checkbox" value="" id="checkboxExample11">
           <label class="form-check-label" for="checkboxExample11">
               인터넷이용
          </label>
         </div>
       </div>
        <div class="row justify-content-center border border-lightgray">
         <div class="col-2 border border-lightgray bg-light">지역 선택</div>
         <div class="col-4 border border-lightgray d-flex align-items-center">
          <select class="form-control" style="width: 100px;" id="sido">
           <option value="">시도</option>
           <option value="서울">서울</option>
          <option value="경기">경기</option>
          <option value="수원">수원</option>
         </select>
            &nbsp;&nbsp;
           <select class="form-control" style="width: 100px;" id="sigungu" name="locationAddress">
           <option value="">시군구</option>
           <option value="option1">1</option>
          <option value="option2">2</option>
          <option value="option3">3</option>
         </select>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <button class="btn btn-primary" type="submit" id="button-addon2">검색</button>
         </div> 
       </div>
         <div class="row justify-content-center border border-lightgray">
         <div class="col-2 border border-lightgray bg-light">혈액원 선택</div>
         <div class="col-4 border border-lightgray">
  
          <select class="form-control bg-primary text-white" style="width: 100px;">
           <option value="">#</option>
           <option value="option1">서울</option>
          <option value="option2">경기</option>
          <option value="option3">수원</option>
         </select>
       </div>
       </div>  
         <div class="row justify-content-center border border-lightgray">
         <div class="col-4 border border-lightgray"> 
           <div class="input-group mb-3">
 
  <div class="input-group-append"> &nbsp;
   
  </div>
</div>
         </div>
       </div>             
    </div> 
    
</form>    
<div class="container pt-5">    
 
      <div class="row justify-content-center border border-lightgray">
         <div class="col-2 border border-lightgray bg-light">입력</div>
         <div class="col-4 border border-lightgray"> 
           <div class="input-group mb-3">
  				    <input type="text" class="form-control" name="locationAddress2" placeholder="주소를 입력하세요" aria-label="주소를 입력하세요" aria-describedby="button-addon2">
     	      <div class="input-group-append"> &nbsp;
                    <button class="btn btn-danger" type="submit" id="adButton">검색</button>
               </div>
            </div>
         </div>
       </div>      
    
</div>

<div class="container pt-5">
    
전혈은 운영 종료시간 30분 전, 혈장은 1시간, 혈소판은 1시간 30분 전에 헌혈 접수가 마감되며 현장 상황에 따라 접수가 조기 마감될 수 있으니 헌혈의집 방문전에 참고하시기 바랍니다.
    
</div>

<div class="container pt-5">
<h4>헌혈의집 지도 표시</h4>
</div>

<div class="container p-5">
  <div class="row">
    <div class="col-12">

<div class="row featurette justify-content-center">

<div id="map" style="width:70%;height:500px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=742f90c577057b60c33f80faeadf9ee0"></script>
<script>

document.getElementById("sido").addEventListener("change", function() {
	  var sidoValue = this.value;
	  var sigunguSelect = document.getElementById("sigungu");
	  
	  // 기존의 시군구 선택 옵션을 모두 제거합니다.
	  sigunguSelect.innerHTML = "";
	  
	  // 서울이 선택된 경우에만 시군구 선택 옵션을 생성합니다.
	  if (sidoValue === "서울") {
	    var seoulDistricts = [
	      "종로구", "중구", "용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구",
	      "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구",
	      "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구", "강동구"
	    ];
	    
	    for (var i = 0; i < seoulDistricts.length; i++) {
	      var option = document.createElement("option");
	      option.value = seoulDistricts[i]; // 구 이름을 option의 value로 설정
	      option.text = seoulDistricts[i];
	      sigunguSelect.appendChild(option);
	    }
	  } else if (sidoValue === "경기") {
		    var gyeonggiDistricts = [
		        "수원시", "성남시", "의정부시", "안양시", "부천시", "광명시", "평택시", "동두천시",
		        "안산시", "고양시", "과천시", "구리시", "남양주시", "오산시", "시흥시", "군포시",
		        "의왕시", "하남시", "용인시", "파주시", "이천시", "안성시", "김포시", "화성시",
		        "광주시", "양주시", "포천시", "여주시", "연천군", "가평군", "양평군"
		      ];

		      for (var i = 0; i < gyeonggiDistricts.length; i++) {
		        var option = document.createElement("option");
		        option.value = gyeonggiDistricts[i]; // 시군구 이름을 option의 value로 설정
		        option.text = gyeonggiDistricts[i];
		        sigunguSelect.appendChild(option);
		      }
		    }	  
	});


var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.5132936, 126.925679), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
//마커를 표시할 위치와 title 객체 배열입니다 

console.log("${location}");

var positions = [
	<c:forEach var="l" items="${location}" varStatus="status">  
    {    
        title: '${l.locationName}', 
        latlng: new kakao.maps.LatLng(${l.latitude}, ${l.longitude})    
    }${!status.last ? ',' : ''}
   </c:forEach>
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}
</script>

</div>
</div>
</div>
</div>

<div class="container pt-5">
<p>Total 건</p>
       <div class="row justify-content-center bg-light border-top border-dark border-3">
      <!--   <div class="col border-bottom-3 border-lightgray py-4">지역</div> -->
        <div class="col border-bottom-3 border-lightgray py-4">헌협의집</div>

        <div class="col border-bottom-3 border-lightgray py-4">주소</div>

        <div class="col border-bottom-3 border-lightgray py-4">전화번호</div>
   <c:forEach var="l" items="${location}" varStatus="status">       
        <div class="row">
         <div class="col">${l.locationName}</div>
         <div class="col">${l.locationAddress}</div>
         <div class="col">${l.tel}</div>
        </div>    
   </c:forEach>    
       </div>
</div>

