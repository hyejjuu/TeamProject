<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/member.js"></script>
<div class="row my-5" id="global-content">
	<div class="col">
		<div class="row my-3 text-center">
			<div class="col">
				<h2 class="fs-1 fw-bold">회원 가입</h2>
			</div>
		</div>
		
		<form action="joinResult" name="joinForm" method="post" id="joinForm">
			<input type="hidden" name="isIdCheck" id="isIdCheck" value="false"/>
			<div class="row mt-5 mb-3">
				<div class="col-8 offset-2">
					<label for="name" class="form-label">* 이 름 : </label>
					<input type="text" class="form-control" name="name" id="name">
				</div>
			</div>
			<div class="row mt-5 mb-3">
				<div class="col-8 offset-2">
					<label for="userId" class="form-label">* 아이디 : </label>
					<div class="row">
						<div class="col-6">
							<input type="text" class="form-control" name="id" id="userId">
						</div>
						<div class="col-4">
							<input type="button" class="btn btn-secondary" id="btnOverlapId" value="중복확인">
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="pass1" class="form-label">* 비밀번호 : </label>
					<input type="password" class="form-control" name="pass1" id="pass1">
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="pass2" class="form-label">* 비밀번호 확인 : </label>
					<input type="password" class="form-control" name="pass2" id="pass2">
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="birth" class="form-label">* 생년월일 : </label>
						<div class="col-md-4">
							<input type="date" class="form-control" name="birth" id="birth">
						</div>
				</div>
			</div>		
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label class="form-label">성별</label>
					<div class="row">
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="gender" id="female" value="여성">
								<label class="form-check-label" for="female">여성</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="gender" id="male" value="남성">
								<label class="form-check-label" for="male">남성</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="bloodtype" class="form-label">* 혈액형 : </label>
					<div class="row">
						<div class="col-md-3">
							<select class="form-select" name="bloodtype" id="bloodtype">
								<option>A형</option>
								<option>B형</option>
								<option>O형</option>
								<option>AB형</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="address" class="form-label">* 주소(시군구) : </label>
						<div class="col-md-4">
							<input type="text" class="form-control" name="address" id="address">
						</div>
				</div>
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="phone" class="form-label">* 휴 대 폰 인증 : 
					<span class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주세요</span>	</label>
					<div class="row">
						<div class="col-8">
							<input id="phone" type="tel" name="phone" class="form-control" title="전화번호 입력" required />
						</div>
						<div class="col-4">
							<input type="button"  id="sendSms" class="btn btn-success doubleChk" value="인증번호 보내기" ><br/>
						</div>
					</div>					
				</div>
			</div>			
			<div class="row my-3">
				<div class="col-8 offset-2">
					<div class="row">
						<div class="col-8">
							<input id="phone2" type="text" class="form-control"  name="phone2" title="인증번호 입력" disabled required/>	
						</div>
						<div class="col-4">
							<input type="button" id="phoneChk2" class="btn btn-warning doubleChk" value="본인인증">
						</div>
					</div>
					<div class="row my-2">
						<div class="col">
							<span id="resultMsg"></span>
						</div>
					</div>
				</div>
			</div>			
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label for="emailId" class="form-label">* 이 메 일 : </label>
					<div class="row">
						<div class="col-md-4">
							<input type="text" class="form-control" name="emailId" id="emailId">
						</div> @ 
						<div class="col-md-4">
							<input type="text" class="form-control" name="emailDomain" id="emailDomain">
						</div>
						<div class="col-md-3">
							<select class="form-select" name="selectDomain" id="selectDomain">
								<option>직접입력</option>
								<option>네이버</option>
								<option>다음</option>
								<option>한메일</option>
								<option>구글</option>
							</select>
						</div>
					</div>
				</div>	
			</div>
			<div class="row my-3">
				<div class="col-8 offset-2">
					<label class="form-label">메일 수신여부 : </label>
					<div class="row">
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="emailGet" id="emailOk" value="true">
								<label class="form-check-label" for="emailOk">수신 동의</label>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-check">
								<input type="radio" class="form-check-input" name="emailGet" id="emailNo" value="false">
								<label class="form-check-label" for="emailNo">동의 안함</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row mb-3 mt-5">
				<div class="col-8 offset-2">
					<input type="submit" value="가입하기" class="btn btn-primary">
				</div>
			</div>	
		</form>
		
	</div>
</div>

