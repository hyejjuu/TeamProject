   window.onload = function () { buildCalendar(); }    // 웹 페이지가 로드되면 buildCalendar 실행

	let tempMonth = new Date();
	tempMonth.setDate(tempMonth.getDate() + 1);  // 현재 달을 페이지를 로드한 날의 달로 초기화
    let nowMonth = tempMonth;
   
    let today = new Date();     // 페이지를 로드한 날짜를 저장 
    let nextDay = today.setDate(today.getDate() + 1);			// 페이지를 로드한 다음날 - 초기 접속시 예약 리스트는 오늘 다음날을 보여줌
    today.setHours(0,0,0,0);    // 비교 편의를 위해 today의 시간을 초기화
    

    // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
    function buildCalendar() {       

        let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
        let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날

        let tbody_Calendar = document.querySelector(".Calendar > tbody");
        document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
        document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신

        while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
            tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
        }

        let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           

        for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
            let nowColumn = nowRow.insertCell();        // 열 추가
        }

        for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

            let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
            nowColumn.innerText = leftPad(nowDay.getDate());      // 추가한 열에 날짜 입력

        
            if (nowDay.getDay() == 0) {                 // 일요일인 경우 글자색 빨강으로
                nowColumn.style.color = "#DC143C";
            }
            if (nowDay.getDay() == 6) {                 // 토요일인 경우 글자색 파랑으로 하고
                nowColumn.style.color = "#0000CD";
                nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
            }

            if (nowDay < today) {                       // 지난날인 경우
                nowColumn.className = "pastDay";
            }
          	else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
               nowColumn.className = "today";
               nowColumn.onclick = function () { 
                	choiceDate(this); 
                	buildReservationList();
                }
            }
            else {                                      // 미래인 경우
                nowColumn.className = "futureDay";
                //nowColum.addEventListener("click", function() {});
                nowColumn.onclick = function () { 
                	choiceDate(this); 
                	buildReservationList();
                }
                
            }
        }

    }
	
	
	
    // 날짜 선택
    function choiceDate(nowColumn) {
    
        if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
            document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
        }
        nowColumn.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가
								
		//nowColumn.onclick = function() {
		// 클릭 이벤트 핸들러 함수 내용을 여기에 작성합니다.
		// 예시로 "클릭됨"을 콘솔에 출력하는 동작을 추가했습니다.
			//console.log("클릭됨");
		//};        
		
		// 선택된 날짜
		var selectedDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), parseInt(nowColumn.innerText));
			console.log("선택된 날짜 :", selectedDate);
					
		// 날짜 선택되면 resvBldHousStep2.jsp에 출력하게 하는 코드
		var selectedDateElement = document.getElementById("selectedDate");
		
		var year = selectedDate.getFullYear();
		var month = selectedDate.getMonth() + 1;
		var day = selectedDate.getDate();
		var weekdays = ['일', '월', '화', '수', '목', '금', '토'];
		var weekday = weekdays[selectedDate.getDay()];
		var formatDate = year
				
		selectedDateElement.textContent = year + "년 " + (month < 10 ? '0'+month :month) 
									+ "월 " + (day<10?'0'+day : day) + "일 (" + weekday + ") 예약 현황";
					
		//	$.ajax({
		//	  url: "resvBldHousStep3",
		//	  type: "POST",
		//	  data: { selectedDate: selectedDate },
		//	  success: function(response) {
		//	    console.log("서버 응답:", response);
		//	  },
		//	  error: function(xhr, status, error) {
		//	    console.error("오류:", error);
		//	  }
		//	});
			
		
    }
    
    // 이전달 버튼 클릭
    function prevCalendar() {
        nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
        buildCalendar();    // 달력 다시 생성
    }
    // 다음달 버튼 클릭
    function nextCalendar() {
        nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
        buildCalendar();    // 달력 다시 생성
    }
	
    // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
    function leftPad(value) {
        if (value < 10) {
            value = "0" + value;
            return value;
        }
        return value;
    }
    
    function buildReservationList() { 
    
	    // 예약 테이블의 행과 열의 개수 지정
	    const rowCnt = 6;
		const columnCnt = 8;
		
		let res_table = document.querySelector("#reservationTable");
		
		console.log(res_table);
		for (let i = 0; i < rowCnt; i++) {
					
			let nowRow = res_table.insertRow();
			
			  
		  	for (let j = 0; j < columnCnt; j++)  {
		  		let nowColumn = nowRow.insertCell();
		  		
		  		if(i % 2 ==0) { // 짝수 행 - th 행
		  			nowRow.style.backgroundColor = "#EAEAEA";
		  			
			  		if(j == 0) { // 첫 번째 열
            			nowColumn.innerText = "시간";
			  			nowColumn.style.color = "#0000FF";
					  		
				  	} else {
						
						switch(j) {
							case 1:
								nowColumn.innerText = "09:00";
								break;
							case 2:
								nowColumn.innerText = "09:00";
								break;
							case 3:
								nowColumn.innerText = "10:00";
								break;
							case 4:
								nowColumn.innerText = "10:30";
								break;
							case 5:
								nowColumn.innerText = "11:00";
								break;
							case 6:
								nowColumn.innerText = "11:30";
								break;
							case 7:
								nowColumn.innerText = "12:00";	
								break;				
							case 8:
					              nowColumn.innerText = "12:30";
					              break; // 12:30 추가
						}						
						// 행이 짝수일 때 시간부터 시작하도록 변경
						if (i % 2 !== 0 && j === 0) {
							const startTime = 9 + Math.floor(j / 2); // 시작 시간 계산
							nowColumn.innerText = startTime.toString().padStart(2, "0") + ":30";
							}
						
					}
			    
		  		} else { // 홀수 행
		  			if(j == 0) { // 첫 번째 열	
		  				nowColumn.innerHTML = "예약 가능<br>헌혈 종류";
					  		
				  	} else {
				  		nowColumn.innerHTML = '<label> <input type="radio" name="donationType" value="1">전혈</label><br>'
				  		+ ' <label> <input type="radio" name="donationType" value="2">혈장 </label><br>'
				  		+ ' <label> <input type="radio" name="donationType" value="3"> 혈소판 </label><br>'
				  		+ ' <label> <input type="radio" name="donationType" value="4"> 혈액 성분 </label><br>';
					
					}
					
				}		  	
			}		  	
		}    
    }
    
	function checkRadio() {
	    var radios = document.getElementsByName("donationType");
	    var selectedValue = "";
	    for (var i = 0; i < radios.length; i++) {
	        if (radios[i].checked) {
	            selectedValue = radios[i].value;
	            break;
	        }
	    }
	    if (selectedValue !== "") {
	        document.getElementById("reservationChk").submit();
	    } else {
	        alert("헌혈 종류를 선택해주세요.");
	    }	    
	    
	    $("input[name='donationType']:checked").val()
		// score의 라디오 중 체크된 것의 값만 가져옴
		// 아무것도 선택안되어있으면, undefined

		$("input[name='donationType']").is(':checked')
		// 전체 radio 중에서 하나라도 체크되어 있는지 확인
		// 아무것도 선택안되어있으면, false
		}


        
      


        
        
        