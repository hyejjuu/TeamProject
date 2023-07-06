// DOM이 준비되면 실행될 콜백 함수
$(function() {

	// 회원 로그인 폼이 submit 될 때 폼 유효성 검사를 위한 이벤트 처리
	$("#loginForm").submit(function() {
		var id = $("#userId").val();
		var pass = $("#userPass").val();
		
		if(id.length <= 0) {
			alert("아이디가 입력되지 않았습니다.\n아이디를 입력해주세요");
			$("#userId").focus();
			return false;
		}
		if(pass.length <= 0) {
			alert("비밀번호가 입력되지 않았습니다.\n비밀번호를 입력해주세요");
			$("#userPass").focus();
			return false;
		}
	});
	
	$("#userId").on("keyup", function() {		
		// 아래와 같이 정규표현식을 이용해 영문 대소문자, 숫자만 입력되었는지 체크할 수 있다. 
		var regExp = /[^A-Za-z0-9]/gi;	
		if(regExp.test($(this).val())) {
			alert("영문 대소문자, 숫자만 입력할 수 있습니다.");
			$(this).val($(this).val().replace(regExp, ""));
		}
	});
	
	$("#pass1").on("keyup", inputCharReplace);	
	$("#pass2").on("keyup", inputCharReplace);	
	$("#emailId").on("keyup", inputCharReplace);	
	$("#emailDomain").on("keyup", inputEmailDomainReplace);
		
	/* 회원 가입 폼에서 아이디 중복확인 버튼이 클릭되면
	 * 아이디 중복을 확인할 수 있는 새 창을 띄워주는 함수
	 **/ 
	$("#btnOverlapId").on("click", function() {
		var id = $("#userId").val();
		url="overlapIdCheck.mvc?id=" + id;
		
		if(id.length == 0) {
			alert("아이디를 입력해주세요");
			return false;
		}
		
		if(id.length < 5) {
			alert("아이디는 5자 이상 입력해주세요.");
			return false;
		}
		
		window.open(url, "idCheck", "toolbar=no, scrollbars=no, resizeable=no, " 
				+  "status=no, memubar=no, width=500, height=400");
	});
	
	/* 새 창으로 띄운 아이디 찾기 폼에서
	 * 아이디 중복확인 버튼이 클릭되면 유효성 검사를 하는 함수	 
	 **/
	$("#idCheckForm").on("submit", function() {
		var id = $("#checkId").val();	
		
		if(id.length == 0)  {
			alert("아이디를 입력해주세요");
			return false;
		}
		
		if(id.length < 5) {
			alert("아이디는 5자 이상 입력해주세요.");
			return false;
		}
	});
		
	/* 새 창으로 띄운 아이디 중복확인 창에서 "아이디 사용 버튼"이 클릭되면 
	 * 새 창을 닫고 입력된 아이디를 부모창의 회원가입 폼에 입력 */
	$("#btnIdCheckClose").on("click", function() {
		var id = $(this).attr("data-id-value");
		opener.document.joinForm.id.value = id;
		opener.document.joinForm.isIdCheck.value = true;
		window.close();
	});
		
	// 이메일 입력 셀렉트 박스에서 선택된 도메인을 설정하는 함수 
	$("#selectDomain").on("change", function() {
		var str = $(this).val();
		
		if(str == "직접입력") {	
			$("#emailDomain").val("");
			$("#emailDomain").prop("readonly", false);
		} else if(str == "네이버"){	
			$("#emailDomain").val("naver.com");			
			$("#emailDomain").prop("readonly", true);
			
		} else if(str == "다음") {		
			$("#emailDomain").val("daum.net");
			$("#emailDomain").prop("readonly", true);
			
		} else if(str == "한메일"){	
			$("#emailDomain").val("hanmail.net");
			$("#emailDomain").prop("readonly", true);
			
		} else if(str == "구글") {		
			$("#emailDomain").val("gmail.com");
			$("#emailDomain").prop("readonly", true);
		}
	});
		
	// 회원 가입 폼이 서브밋 될 때 이벤트 처리 - 폼 유효성 검사
	$("#joinForm").on("submit", function() {
		
		return joinFormCheck(true);
	});
	
	/* 회원정보 수정 폼에서 "비밀번호 확인" 버튼이 클릭될 때 이벤트 처리
	 * 기존 비밀번호가 맞는지를 Ajax 통신을 통해 확인 */
	$("#btnPassCheck").click(function() {
		var oldId = $("#userId").val();
		var oldPass = $("#oldPass").val();
		
		if($.trim(oldPass).length == 0) {
			alert("기존 비밀번호가 입력되지 않았습니다.\n기존 비밀번호를 입력해주세요");
			return false;
		}
		var data = "id=" + oldId + "&pass="+oldPass;
		console.log("data : " + data);
		
		$.ajax({
			"url": "passCheck.ajax",
			"type": "get",
			"data": data,
			"dataType": "json",			
			"success": function(resData) {				
				if(resData.result) {
					alert("비밀번호가 확인되었습니다.\n비밀번호를 수정해주세요");
					$("#btnPassCheck").prop("disabled", true);
					$("#oldPass").prop("readonly", true);
					$("#pass1").focus();
					
				} else {
					alert("비밀번호가 다릅니다.\n비밀번호를 다시 확인해주세요");
					$("#oldPass").val("").focus();
				}
			},
			"error": function(xhr, status) {
				console.log("error : " + status);
			}
		});
		
	});
	
	// 회원정보 수정 폼 수정하기 버튼
	$("#memberUpdateForm").on("submit", function() {
		
		if(! $("#btnPassCheck").prop("disabled")) {
			alert("기존 비밀번호를 확인해야 비밀번호를 수정할 수 있습니다.\n"
				+ "기존 비밀번호를 입력하고 비밀번호 확인 버튼을 클릭해 주세요");
			return false;
		}
		 
		return joinFormCheck(false);
	});
	
	var smsResult = null;
	
	//휴대폰 번호 인증	
	$("#sendSms").click(function(){
		//alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
		var phone = $("#phone").val();
		if(phone.length < 11) {
			alert("휴대폰 번호가~~~	");
			return;
		}
		$.ajax({
	        "type":"POST",
	        "url": "sendSms",
	        "data": {"phone": phone},
	        "dataType": "json",
	        "success" :function(data){		
	        		$("#phone2").attr("disabled", false);      		
	        		$("#phone").attr("readonly",true);	        		
	        		console.log(data);	
	        		smsResult = data;
	        },
	        "error" : function(xhr, status, error) {
	        	console.log("인증번호 발송 처리 에러");
	        }
	    });
	});
	
	//휴대폰 인증번호 대조
	$("#phoneChk2").click(function(){
	
		if($("#phone2").val() == smsResult.certNum){
			$("#resultMsg").text("인증번호가 일치합니다.").css("color","blue");			
			$("#phone2").attr("disabled",true);
			$("#sendSms").attr("disabled",true);
			
		}else{
			$("#resultMsg").text("인증번호가 일치하지 않습니다. 다시 확인해 주세요").css("color","red");			
			$("#phone2").attr("autofocus", true);
		}
	});
				
});

/* 회원 아이디, 비밀번호, 비밀번호 확인, 이메일 아이디 폼 컨트롤에 사용자가 입력한 값이 영문 대소문자, 숫자 만 입력되도록 수정 */
function inputCharReplace() {
	// 아래와 같이 정규표현식을 이용해 영문 대소문자, 숫자만 입력되었는지 체크
	var regExp = /[^A-Za-z0-9]/gi;	
	if(regExp.test($(this).val())) {
		alert("영문 대소문자, 숫자만 입력할 수 있습니다.");
		$(this).val($(this).val().replace(regExp, ""));
	}
}

/* 이메일 도메인 입력 폼 컨트롤에 사용자가 입력한 값이 영문 대소문자, 숫자, 점(.)만 입력되도록 수정 */ 
function inputEmailDomainReplace() {
	var regExp = /[^a-z0-9\.]/gi;	
	if(regExp.test($(this).val())) {
		alert("이메일 도메인은 영문 소문자, 숫자, 점(.)만 입력할 수 있습니다.");
		$(this).val($(this).val().replace(regExp, ""));
	}
}


/* 회원 가입 폼과 회원정보 수정 폼의 유효성 검사 */
function joinFormCheck(isJoinForm) {
	var name = $("#name").val();
	var id = $("#userId").val();
	var pass1 = $("#pass1").val();
	var pass2 = $("#pass2").val();
	var birth = $("#birth").val();
	var gender = $("#gender").val();
	var bloodtype = $("#bloodtype").val();
	var address = $("#address").val();
	var emailId = $("#emailId").val();
	var emailDomain = $("#emailDomain").val();
	var phone = $("#phone").val();
	var isIdCheck = $("#isIdCheck").val();
	
	if(name.length == 0) {		
		alert("이름이 입력되지 않았습니다.\n이름을 입력해주세요");
		return false;
	}	
	if(id.length == 0) {		
		alert("아이디가 입력되지 않았습니다.\n아이디를 입력해주세요");
		return false;
	}		
	if(isJoinForm && isIdCheck == 'false') {		
		alert("아이디 중복 체크를 하지 않았습니다.\n아이디 중복 체크를 해주세요");
		return false;
	}	
	if(pass1.length == 0) {		
		alert("비밀번호가 입력되지 않았습니다.\n비밀번호를 입력해주세요");
		return false;
	}
	
	if(pass2.length == 0) {		
		alert("비밀번호 확인이 입력되지 않았습니다.\n비밀번호 확인을 입력해주세요");
		return false;
	}
	if(pass1 != pass2) {
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
		return false;
	}
	if(birth.length == 0) {		
		alert("생일이 입력되지 않았습니다.\n생일을 입력해주세요");
		return false;
	}	
	if(gender.length == 0) {		
		alert("성별이 입력되지 않았습니다.\n성별을 입력해주세요");
		return false;
	}	
	if(bloodtype.length == 0) {		
		alert("혈액형이 입력되지 않았습니다.\n혈액형을 입력해주세요");
		return false;
	}	
	if(address.length == 0) {		
		alert("주소가 입력되지 않았습니다.\n주소를 입력해주세요");
		return false;
	}	
	if(emailId.length == 0) {		
		alert("이메일 아이디가 입력되지 않았습니다.\n이메일 아이디를 입력해주세요");
		return false;
	}	
	if(emailDomain.length == 0) {		
		alert("이메일 도메인이 입력되지 않았습니다.\n이메일 도메인을 입력해주세요");
		return false;
	}	
	if(phone.length == 0) {		
		alert("휴대폰 번호가 입력되지 않았습니다.\n휴대폰 번호를 입력해주세요");
		return false;
	}
}

