$(function(){
	// 게시 글쓰기 폼 유효성 검사
	$("#matchingWriteForm").on("submit", function(){
		
		if($("#writer").val().length <= 0) {
			alert("작성자를 입력해주세요.");
			$("#writer").focus();
			return false;
		}
		if($("#title").val().length <= 0) {
			alert("제목을 입력해주세요.");
			$("#title").focus();
			return false;
		}
		if($("#pass").val().length <= 0) {
			alert("비밀번호를 입력해주세요.");
			$("#pass").focus();
			return false;
		}
		if($("#local").val().length <= 0) {
			alert("지역을 선택해주세요.");
			return false;
		}
		if($("#bloodtype").val().length <= 0) {
			alert("혈액형을 선택해주세요.");
			return false;
		}
		if($("#bloodDonation").val().length <= 0) {
			alert("헌혈 종류를 선택해주세요.");
			return false;
		}
		if($("#content").val().length <= 0) {
			alert("내용을 입력해주세요.");
			$("#content").focus();
			return false;
		}
		
	});
	
		// 게시 글 수정 폼 요청 처리
		$("#detailUpdate").on("click", function(){
		
			var pass = $("#pass").val();
		
			if(pass.length <= 0) {
				alert("비밀번호를 입력해주세요.");
				return false;
			}
			$("#rPass").val(pass);
			$("#checkForm").attr("action", "update");
			$("#checkForm").submit();
	});
	
	// 게시 글 수정 폼 유효성 검사
	$("#updateForm").on("submit", function(){
	
		if($("#writer").val().length <= 0) {
			alert("작성자를 입력해주세요");
			$("#writer").focus();
			return false;
		}
		if($("#title").val().length <= 0) {
			alert("제목을 입력해주세요.");
			$("#title").focus();
			return false;
		}
		if($("#pass").val().length <= 0) {
			alert("비밀번호를 입력해주세요.");
			$("#pass").focus();
			return false;
		}
		if($("#local").val().length <= 0) {
			alert("지역을 선택해주세요.");
			return false;
		}
		if($("#bloodtype").val().length <= 0) {
			alert("혈액형을 선택해주세요.");
			return false;
		}
		if($("#bloodDonation").val().length <= 0) {
			alert("헌혈 종류를 선택해주세요.");
			return false;
		}
		if($("#content").val().length <= 0) {
			alert("내용을 입력해주세요.");
			$("#content").focus();
			return false;
		}
	});
	
		$("#detailDelete").on("click", function(){
			
			var pass = $("#pass").val();
			
			if(pass.length <= 0){
				alert("비밀번호를 입력해주세요.");
				return false;
				}
			
			$("#rPass").val(pass);
			
			var result = confirm("게시 글을 삭제하시겠습니까?");
			
			if (result) {
			
				$("#checkForm").attr("action", "delete");
				$("#checkForm").attr("method", "post");
				$("#checkForm").submit();
			
			} else {
				return false;
			}
	});
});