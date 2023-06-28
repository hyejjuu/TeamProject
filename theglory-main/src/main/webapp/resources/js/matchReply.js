$(document).ready(function(){

	// 신고하기 버튼 임시 이벤트
	function reportReply(elemId) {
		var result = confirm("이 댓글을 신고하시겠습니까?");
		if(result == true) {
			alert("report - " + result);
		}
	}

	// 댓글 삭제 버튼이 클릭될 떄 이벤트 처리
	$(document).on("click", ".deleteReply", function(){
		
		var no = $(this).attr("data-no");
		var writer = $(this).parent().prev().find("span").text();
		var matchNo = $("replyForm input[name=matchNo]").val();
		var params = "no=" + no + "&matchNo=" + matchNo;
		
		$replyForm = $("#replyForm").slideUp(300);
		
		var result = confirm(writer + "님이 작성한 댓글을 삭제하시겠습니까?");
		
		if(result){
			$.ajax({
				"url" : "replyDelete.ajax",
				"type" : "post",
				"data" : params,
				"dataType" : "json",
				"success" : function(resData, status, xhr){
				
					// 반복문을 통해서 html 형식으로 작성
					$("#replyList").empty();
					
					$.each(resData, function(i, v){
						
						var date = new Date(v.regDate);
						var strDate = date.getFullYear() + "-" + ((date.getMonth() + 1 < 10) ? "0" + (date.getMonth() + 1) : (date.getMonth() + 1)) + "-"
												+ (date.getDate() < 10 ? "0" + date.getDate() : date.getDate()) + " "
												+ (date.getHours() < 10 ? "0" + date.getHours() : date.getHours()) + ":"
												+ (date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes()) + ":"
												+ (date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds());
						
						var result =
							'<div class="replyRow row border border-top-0">'
							+	'<div class="col">'
							+		'<div class="row bg-light p-2">'
							+			'<div class="col-4">'
							+				'<span>' + v.replyWriter + '</span>'
							+			'</div>'
							+			'<div class="col-8 text-end">'
							+				'<span class="me-3">' + strDate + '</span>'
							+				'<button class="modifyReply btn btn-outline-success btn-sm" data-no="' + v.no + '">'
							+					'<i class="bi bi-journal-text">수정</i>'
							+				'</button>'
							+				'<button class="deleteReply btn btn-outline-warning btn-sm" data-no="' + v.no + '">'
							+					'<i class="bi bi-trash">삭제</i>'
							+				'</button>'
							+				'<button class="btn btn-outline-danger btn-sm" onclick="reportReply(\'' + v.no + '>'
							+					'<i class="bi bi-telephone-outbound">신고</i>'
							+				'</button>'
							+			'</div>'
							+		'</div>'
							+		'<div class="row">'
							+			'<div class="col p-3">'
							+				'<pre>' + v.replyContent + '</pre>'
							+			'</div>'
							+		'</div>'
							+	'</div>'
							+'</div>'
							
							$("#replyList").append(result);
							
						}); // end $.each()
						
						$("#replyContent").val("");
						$replyForm.css("display", "none");
						$("#global-content > div.col").append($replyForm);
				},
				error : function(xhr, status, error){
					alert("ajax 실패 : " + status + " - " + xhr.status);
				}
				
		});

	}
	
	return false;
		
});

	// 댓글 수정 버튼이 클릭될 때 이벤트 처리
	$(document).on("click", ".modifyReply", function(){
		
		var $replyRow = $(this).parents(".replyRow");
		
		if($("#replyForm").is(":visible")){
		
			var $next = $replyRow.next();
			
			if(! $next.is("#replyForm")){
				$("replyForm").slideUp(300);
			}
			setTimeout(function(){
				$("#replyForm").insertAfter($replyRow).slideDown(300);
			}, 300);
		} else {
			$("#replyForm").removeClass("d-none").css("display", "none").insertAfter($replyRow).slideDown(300);
		}
		
		$("#replyForm").find("form").attr({"id" : "replyUpdateForm", "data-no" : $(this).attr("data-no") });
		$("replyWriteButton").val("댓글수정");
		
		var reply = $(this).parent().parent().next().find("pre").text();
		$("replyContent").val($.trim(reply));
		
	});
	
	// 댓글 수정 폼이 submit 될 때
	$(document).on("submit", "#replyUpdateForm", function(){
		
		$replyForm = $("#replyForm").slideUp(300);
		
		var params = $(this).serialize() + "&no=" + $(this).attr("data-no");
		
		$.ajax({
			"url" : "replyUpdate.ajax",
			"type" : "post",
			"data" : params,
			"dataType" : "json",
			"success" : function(resData, status, xhr){
			
				// 반복문을 통해서 html 형식으로 작성
				$("#replyList").empty();
				
				$.each(resData, function(i, v){
					
					var date = new Date(v.regDate);
					var strDate = date.getFullYear() + "-" + ((date.getMonth() + 1 < 10) ? "0" + (date.getMonth() + 1) : (date.getMonth() + 1)) + "-"
											+ (date.getDate() < 10 ? "0" + date.getDate() : date.getDate()) + " "
											+ (date.getHours() < 10 ? "0" + date.getHours() : date.getHours()) + ":"
											+ (date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes()) + ":"
											+ (date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds());
					
					var result =
						'<div class="replyRow row border border-top-0">'
						+	'<div class="col">'
						+		'<div class="row bg-light p-2">'
						+			'<div class="col-4">'
						+				'<span>' + v.replyWriter + '</span>'
						+			'</div>'
						+			'<div class="col-8 text-end">'
						+				'<span class="me-3">' + strDate + '</span>'
						+				'<button class="modifyReply btn btn-outline-success btn-sm" data-no="' + v.no + '">'
						+					'<i class="bi bi-journal-text">수정</i>'
						+				'</button>'
						+				'<button class="deleteReply btn btn-outline-warning btn-sm" data-no="' + v.no + '">'
						+					'<i class="bi bi-trash">삭제</i>'
						+				'</button>'
						+				'<button class="btn btn-outline-danger btn-sm" onclick="reportReply(\'' + v.no + '>'
						+					'<i class="bi bi-telephone-outbound">신고</i>'
						+				'</button>'
						+			'</div>'
						+		'</div>'
						+		'<div class="row">'
						+			'<div class="col p-3">'
						+				'<pre>' + v.replyContent + '</pre>'
						+			'</div>'
						+		'</div>'
						+	'</div>'
						+'</div>'
						
						$("#replyList").append(result);
						
					}); // end $.each()
					
					$("#replyContent").val("");
					$replyForm.css("display", "none");
					$("#global-content > div.col").append($replyForm);
			},
			error : function(xhr, status, error){
				alert("ajax 실패 : " + status + " - " + xhr.status);
			}
		});
		
		return false;
		
	});

	// 댓글 쓰기 폼이 submit 될 때 이벤트 처리
	$(document).on("submit", "#replyWriteForm", function(e){
	
		var params = $(this).serialize();
		console.log(params);
		
		$.ajax({
			"url" : "replyWrite.ajax",
			"data" : params,
			"type" : "post",
			"dataType" : "json",
			"success" : function(resData){
				
				console.log(resData);
				
				// 반복문을 통해서 html 형식으로 작성
				$("#replyList").empty();
				
				$.each(resData, function(i, v){
					
					var date = new Date(v.regDate);
					var strDate = date.getFullYear() + "-" + ((date.getMonth() + 1 < 10) ? "0" + (date.getMonth() + 1) : (date.getMonth() + 1)) + "-"
											+ (date.getDate() < 10 ? "0" + date.getDate() : date.getDate()) + " "
											+ (date.getHours() < 10 ? "0" + date.getHours() : date.getHours()) + ":"
											+ (date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes()) + ":"
											+ (date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds());
					
					var result =
						'<div class="replyRow row border border-top-0">'
						+	'<div class="col">'
						+		'<div class="row bg-light p-2">'
						+			'<div class="col-4">'
						+				'<span>' + v.replyWriter + '</span>'
						+			'</div>'
						+			'<div class="col-8 text-end">'
						+				'<span class="me-3">' + strDate + '</span>'
						+				'<button class="modifyReply btn btn-outline-success btn-sm" data-no="' + v.no + '">'
						+					'<i class="bi bi-journal-text">수정</i>'
						+				'</button>'
						+				'<button class="deleteReply btn btn-outline-warning btn-sm" data-no="' + v.no + '">'
						+					'<i class="bi bi-trash">삭제</i>'
						+				'</button>'
						+				'<button class="btn btn-outline-danger btn-sm" onclick="reportReply(\'' + v.no + '>'
						+					'<i class="bi bi-telephone-outbound">신고</i>'
						+				'</button>'
						+			'</div>'
						+		'</div>'
						+		'<div class="row">'
						+			'<div class="col p-3">'
						+				'<pre>' + v.replyContent + '</pre>'
						+			'</div>'
						+		'</div>'
						+	'</div>'
						+'</div>'
						
						$("#replyList").append(result);
						$("#replyList").removeClass("text-center");
						$("#replyList").removeClass("p-5");
					
				}); // end $.each()
				
				$("replyForm").slideUp(300).add("#replyContent").val("");
				
			},
				"error" : function(xhr, status){
					console.lof("error : " + status);
				}
		});
		
		return false;
		
	});

	// 댓글 쓰기가 클릭되었을 때 이벤트 처리
	$("#replyWrite").on("click", function(){
		
		if($("#replyForm").is(":visible")){
			
			var $prev = $("#replyTitle").prev();
			
			if(! $prev.is("#replyForm")) {
				$("#replyForm").slideUp(300);
			}
			setTimeout(function(){
				$("#replyForm").insertBefore("replyTitle").slideDown(300);
			}, 300);
			
		} else {
			$("#replyForm").removeClass("d-none").css("display", "none").insertBefore("#replyTitle").slideDown(300);
		}
		
		$("#replyForm").find("form").attr("id", "replyWriteForm").removeAttr("data-no");
		$("replyContent").val("");
		$("#replyWriteButton").val("댓글쓰기");
		
	});

	// 추천/땡큐 ajax
	$(".btnCommend").click(function() {

		var com = $(this).attr("id");
		console.log("com : " + com);
		
		$.ajax({
			"url" : "recommend.ajax",
			"type" : "post",
			"data" : {recommend : com, no : $("#no").val()},
			"dataType" : "json",
			"success" : function(data){
			
				var msg = com == 'commend' ? "추천이" : "땡큐가";
				alert(msg + " 반영 되었습니다.");
				$("#commend > .recommend").text(" (" + data.recommend + ")");
				$("#thank > .recommend").text(" (" + data.thank + ")");
			},
			error : function(xhr, status, error) {
				alert("error : " + xhr.statusText + ", " + status + ", " + error);
			}
		});
	});

});