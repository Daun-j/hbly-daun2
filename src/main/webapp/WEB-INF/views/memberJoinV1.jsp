<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<html>

<head>
<meta charset="utf-8">
<title>HBLY : 회원가입</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">

<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
	
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous" style=""></script>

</head>

<body>

	<!-- memberjoin -->
	<div class="py-5 text-center">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-lg-6 col-10">
					<h1>HBLY 회원가입</h1>
					<p class="mb-3">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.</p>

					<!-- form -->
					<form id="joinForm" method="post" class="text-left" action="joinMember">

						<!-- id -->
						<div class="form-group">
							<label for="userId">아이디</label>
							<input type="email" class="form-control" id="userId" name="userId" placeholder="hbly@hbly.com" required>
							<div id="idCheck"></div>
						</div>

						<!-- password -->
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="form2">비밀번호</label>
								<input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="password" required>
								<div id="pwCheck"></div>
							</div>

							<div class="form-group col-md-6">
								<label for="form3">비밀번호 재확인</label>
								<input type="password" class="form-control" id="userPasswordCheck" name="userPasswordCheck" placeholder="Confirm Password" required>
								<div id="pw2Check"></div>
							</div>
						</div>

						<!-- name -->
						<div class="form-group">
							<label for="form4">이름</label>
							<input type="text" class="form-control" id="userName" name="userName" required>
							<div id="nameCheck"></div>
						</div>

						<!-- birth -->
						<div class="form-group">
							<label for="form5">생년월일</label>
							<input type="text" class="form-control" id="userBirth" name="userBirth" placeholder="ex)19991225" required>
							<div id="birthCheck"></div>
						</div>

						<!-- nickname -->
						<div class="form-group">
							<label for="form6">닉네임</label>
							<input type="text" class="form-control" id="userNickname" name="userNickname" required>
							<div id="nicknameCheck"></div>
						</div>
						
						<!-- phone number -->
						<div class="form-group">
							<label for="form7">휴대전화 ('-' 없이 번호만 입력해주세요) </label>
						</div>

						<div class="form-group">
							<select class="form-control">
								<option value="대한민국 +82">대한민국 +82</option>
								<option value="미국/캐나다 +1">미국/캐나다 +1</option>
							</select>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<input type="text" class="form-control" id="userPhoneNumber" name="userPhoneNumber" placeholder="01012345678" required>
							</div>

							<div class="form-group col-md-4">
								<button type="button" class="btn btn-primary">인증번호 받기</button>
							</div>

						</div>

						<div class="form-group">
							<input type="text" class="form-control" id="form8">
						</div>
						
						<!-- address -->
						<div class="form-group">
							<label for="form9">주소</label>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<input type="text" class="form-control" id="userAddress1" name="userAddress1" placeholder="우편번호" required>
							</div>

							<div class="form-group col-md-4">
								<button type="button" class="btn btn-primary">우편번호 찾기</button>
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="userAddress2" name="userAddress2"placeholder="주소" required>
							</div>

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="userAddress3" name="userAddress3"placeholder="상세주소" required>
							</div>
						</div>

						<div class="form-group">
							<label for="form10">이용약관</label>
						</div>

						<!-- term -->
						<div class="form-group">
							<textarea class="form-control" id="form10" rows="4"
								placeholder="Your message" readonly="readonly"></textarea>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="form11"value="on">
								<label class="form-check-label" for="form10">
								I Agree with <a href="#">Term and Conditions</a> of the service
								</label>
							</div>
						</div>

						<!-- button -->
						<button type="submit" id="joinBtn" class="btn btn-primary">Sign in</button>
						<a href="${pageContext.request.contextPath}" class="btn btn-primary">Cancel</a>
					</form>

				</div>

			</div>

		</div>
	</div>

</body>
<script>

	//모든 공백 체크 정규식
	var empJ = /\s/g;
	//아이디 정규식
	var idJ = /^[a-z0-9]{4,12}$/;
	// 비밀번호 정규식
	var pwJ = /^[A-Za-z0-9]{4,12}$/; 
	// 이름 정규식
	var nameJ = /^[가-힣]{2,6}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	// 닉네임 정규식
	var nickJ = /^[가-힣A-Za-z0-9]{2,6}$/;
	
	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$('#userId').blur(function () {
		var userId = $('#userId').val();
		console.log(userId);
		$.ajax({
			url : '${pageContext.request.contextPath}/checkId?userId='+userId,
			type : 'get',
			dataType : 'json',
			success : function(data) {
				console.log("1 중복 / 0 사용가능 :"+data);
				
				if(data==1){
					// 1: 아이디 중복
					$('#idCheck').text('이미 가입된 이메일 입니다.');
					$('#idCheck').css('color','red');
					$("joinBtn").attr("disabled",true);								
				}else{
					// 0: email
					if(mailJ.test($('#userId').val())){
						console.log(mailJ.test($('#userId').val()));
						$('#idCheck').text('');
						$("joinBtn").attr("disabled",false);
					}else{
						$('#idCheck').text('이메일을 확인해주세요.');
						$('#idCheck').css('color','red');
						$('#joinBtn').attr("disabled",true);
					}
				}
				
			}, error : function(error){
				console.log("실패");
			}
		})
	});
	
	// 비밀번호 유효성 검사
	// 1-1 정규식 체크
	$('#userPassword').blur(function() {
		if(pwJ.test($('#userPassword').val())){
			console.log('true');
			$('#pwCheck').text('');
		}else{
			console.log('false');
			$('#pwCheck').text('숫자 or 문자로만 4~12자리 입력해주세요.');
			$('#pwCheck').css('color', 'red');
		}
	})
	
	// 1-2 패스워드 일치 확인
	$('#userPasswordCheck').blur(function() {
		if ($('#userPassword').val() != $(this).val()) {
			$('#pw2Check').text('비밀번호가 일치하지 않습니다.');
			$('#pw2Check').css('color', 'red');
		} else {
			$('#pw2Check').text('');
		}
	});
	

	// 이름에 특수문자 들어가지 않도록 설정
	$("#userName").blur(function() {
		if (nameJ.test($(this).val())) {
				console.log(nameJ.test($(this).val()));
				$("#nameCheck").text('');
		} else {
			$('#nameCheck').text('이름을 확인해주세요');
			$('#nameCheck').css('color', 'red');
		}
	});
	
	// 닉네임 유효성 검사(1 = 중복 / 0 != 중복)
	$('#userNickname').blur(function () {
		var userNickname = $('#userNickname').val();
		console.log(userId);
		$.ajax({
			url : '${pageContext.request.contextPath}/checkNickname?userNickname='+userNickname,
			type : 'get',
			dataType : 'json',
			success : function(data) {
				console.log("1 중복 / 0 사용가능 :"+data);
				
				if(data==1){
					// 1: 아이디 중복
					$('#nicknameCheck').text('이미 사용중인 닉네임 입니다.');
					$('#nicknameCheck').css('color','red');
					$("joinBtn").attr("disabled",true);								
				}else{
					// 0: nickname
					if(nickJ.test($('#userNickname').val())){
						console.log(mailJ.test($('#userNickname').val()));
						$('#nicknameCheck').text('');
						$("joinBtn").attr("disabled",false);
					}else{
						$('#nicknameCheck').text('닉네임을 확인해주세요.');
						$('#nicknameCheck').css('color','red');
						$('#joinBtn').attr("disabled",true);
					}
				}
				
			}, error : function(error){
				console.log("실패");
			}
		})
	});
	
	// 휴대전화
	$('#userPhoneNumber').blur(function(){
		if(phoneJ.test($(this).val())){
			console.log(phoneJ.test($(this).val()));
			$("#phoneCheck").text('');
		} else {
			$('#phoneCheck').text('휴대폰번호를 확인해주세요 :)');
			$('#phoneCheck').css('color', 'red');
		}
	});
	
	// 생일 유효성 검사
	var birthJ = false;
	
	// 생년월일	birthJ 유효성 검사
	$('#userBirth').blur(function(){
		var dateStr = $(this).val();		
	    var year = Number(dateStr.substr(0,4)); 
	    var month = Number(dateStr.substr(4,2));
	    var day = Number(dateStr.substr(6,2));
	    var today = new Date(); // 날짜 변수 선언
	    var yearNow = today.getFullYear();
		
	    if (dateStr.length <=8) {
			
		    if (year < 1900 || year > yearNow){
		    	
		    	$('#birthCheck').text('생년월일을 확인해주세요.');
				$('#birthCheck').css('color', 'red');
		    	
		    }else if (month < 1 || month > 12) {
		    		
		    	$('#birthCheck').text('생년월일을 확인해주세요.');
				$('#birthCheck').css('color', 'red'); 
		    
		    }else if (day < 1 || day > 31) {
		    	
		    	$('#birthCheck').text('생년월일을 확인해주세요 :)');
				$('#birthCheck').css('color', 'red'); 
		    	
		    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		    	 
		    	$('#birthCheck').text('생년월일을 확인해주세요 :)');
				$('#birthCheck').css('color', 'red'); 
		    	 
		    }else if (month == 2) {
		    	 
		       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		       	
		     	if (day>29 || (day==29 && !isleap)) {
		     		
		     		$('#birthCheck').text('생년월일을 확인해주세요 :)');
					$('#birthCheck').css('color', 'red'); 
		    	
				}else{
					$('#birthCheck').text('');
					birthJ = true;
				}//end of if (day>29 || (day==29 && !isleap))
		     	
		    }else{
		    	
		    	$('#birthCheck').text(''); 
				birthJ = true;
			}//end of if
			
			}else{
				//1.입력된 생년월일이 8자 초과할때 :  auth:false
				$('#birthCheck').text('생년월일을 확인해주세요 :)');
				$('#birthCheck').css('color', 'red');  
			}
		}); //End of method /*
		
		// 가입하기 실행 버튼 유효성 검사!
		var inval_Arr = new Array(5).fill(false);
		$('#joinBtn').click(function(){
			// 비밀번호가 같은 경우 && 비밀번호 정규식
			if (($('#userPassword').val() == ($('#userPasswordCheck').val()))
					&& pwJ.test($('#userPassword').val())) {
				inval_Arr[0] = true;
			} else {
				inval_Arr[0] = false;
			}
			// 이름 정규식
			if (nameJ.test($('#userName').val())) {
				inval_Arr[1] = true;	
			} else {
				inval_Arr[1] = false;
			}
			// 이메일 정규식
			if (mailJ.test($('#userId').val())){
				console.log(phoneJ.test($('#userId').val()));
				inval_Arr[2] = true;
			} else {
				inval_Arr[2] = false;
			}
			// 휴대폰번호 정규식
			if (phoneJ.test($('#userPhoneNumber').val())) {
				console.log(phoneJ.test($('#userPhoneNumber').val()));
				inval_Arr[3] = true;
			} else {
				inval_Arr[3] = false;
			}
			// 생년월일 정규식
			if (birthJ) {
				console.log(birthJ);
				inval_Arr[4] = true;
			} else {
				inval_Arr[4] = false;
			}
			
			var validAll = true;
			for(var i = 0; i < inval_Arr.length; i++){
				
				if(inval_Arr[i] == false){
					validAll = false;
				}
			}
			
			if(validAll){ // 유효성 모두 통과
				alert('이메일에서 인증 메일을 확인해주세요!');
				/* confirm_email(); */
				/* location.href("${pageContext.request.contextPath}"); */
				/* return false; */
			} else{
				alert('입력한 정보들을 다시 한번 확인해주세요 :)')
				/* return false; */
			}
		});
	
</script>
</html>