<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>API TEST</title>
</head>
<body>
<!-- phone number -->
						<div class="form-group">
							<label for="form7">휴대전화 ('-' 없이 번호만 입력해주세요) </label>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<input type="text" class="form-control" id="userPhoneNumber" name="userPhoneNumber" placeholder="01012345678" required>
							</div>

							<div class="form-group col-md-4">
								<button type="button" onclick="cert();" class="btn btn-primary">인증번호 받기</button>
							</div>
							<div id="result"></div>
						</div>
						인증번호
						<div class="form-group">
							<input type="text" class="form-control" id="certification">
							<button type="button" id="sms_AuthBtn" onclick="smsAuthBtn();" class="btn btn-primary">확인</button>
						</div>
						<input type="hidden" id="randomVal" value=""/>
						
						<hr/>
						
						
						<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
						
						<script type="text/javascript">
						function cert() {
							 var random = Math.floor(Math.random() * 1000000)+"";
							 var phone = $('#userPhoneNumber').val();				 
							 
							 $('#randomVal').val(random);
								var obj = {
										"type" : "SMS",
										"contentType" : "COMM",
										"from" : "01090955190",
										"subject" : "HBLY 가입 본인인증 문자입니다",
										"countryCode" : "82",
										"content" : random,
										"messages" : [ {
											"to" : phone,
											"subject" : "HBLY 인증 문자",
											"content" : "[HBLY] 회원가입 본인인증 문자입니다. 인증번호 [" + random +"]를 입력해주세요."
										} ]
									};
								
								$.ajax({
									type : 'POST',
									url : "sms",
									dataType : "json",
									data :  JSON.stringify(obj),
									contentType: "application/json",
									success : function(data) {
										if(data.statusName == "success"){
											swal("성공", "인증 문자가 성공적으로 전송되었습니다", "success");
										}
									}
								});
						}
						
						function smsAuthBtn() {
							
							var userVal = $('#certification').val();
							var certVal = $('#randomVal').val();
							console.log(userVal);
							console.log(certVal);
							
							if(userVal == certVal){
								swal("성공", "서포터 등록에 성공하셨습니다", "success");
								/* $.ajax({
									type : "post",
									url : "test3",
									data : $('#sup').serialize(),
									complete : function(data) {
										swal("성공", "서포터 등록에 성공하셨습니다", "success").then(function(){
										//location.href="${root}main"
										location.href="/"
										});
									}
								}); */
							}else{
								swal("실패", "인증번호를 다시 확인해주세요", "error");
							}
							
							
						};
						</script>
</body>
</html>