<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>대덕병원 | 회원가입</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
  
  <link rel="icon" href="<%=request.getContextPath()%>/resources/img/logo/em.png" type="image/x-icon" sizes="16x16">

<style>
.back{
height: 100%;
}

.box{
height: 45px;
}

.bocc{
width : 450px;
}

</style>

</head>




<body class="hold-transition sidebar-mini" >



								
	<!-- Main content -->
	<section class="content register-page back">
		<div class="col-sm-4" >
		<div class="bocc">	
			<div class="login-logo">
    		 <h1><a><img src="<%=request.getContextPath()%>/resources/img/logo/logo2.png"></a></h1>
  			</div>
			<!-- form start -->
						
				
		<!--	<div class="card ">		 -->		
				<!--  <div class="register-card-body "> -->
				
				
					<form role="form" class="form-horizontal" action="regist" method="post">						
						
						
						
						
						
						
					
						
						
						  <div class="form-group row" height= "50px">
							 <label for="id" class="col-sm-6" style="font-size:0.9em;" >
							 </div>
							 	<span style="color:red;font-weight:bold;">*</span>아이디</label>	
							<div class="col-sm-12 input-group" >
								<input name="id" 
									onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);"
								type="text" class="form-control box" id="id"  placeholder="13글자 영문자,숫자 조합">
								<span class="input-group-append-sm">	
									<button type="button" onclick="idCheck_go();"  class="btn btn-primary btn-block box">중복확인</button>
								</span>								
						</div>
						
						
					
							
							
							
							
							
						<div class="col-sm-12 form-group row">
							<label for="pwd" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>비밀번호</label>
							<div class="col-sm-12">								
								<input class="form-control box" name="pwd" type="password"  class="form-control" id="pwd"
										placeholder="비밀번호" />
										
							</div>			
							
							
				
							<div class="col-sm-12 form-group row">
							<label for="pwd" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>비밀번호확인</label>
							<div class="col-sm-12">								
								<input class="form-control box" name="pwd_re" type="password" onkeyup="check_pw()" class="form-control" id="pwd_re"
										placeholder="비밀번호 확인" />
										<span id="pw_check_re"></span> 
						</div>
						
						<br>
						
						<div class="fcol-sm-12 orm-group row">
							<label for="name" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>이 름</label>
							<div class="col-sm-12 ">								
								<input class="form-control box" name="name" type="text" class="form-control" id="name"
										placeholder="이름을 입력하세요"
										onkeyup="this.value=this.value.trim();" />	
						</div>		
						
						
						
						
						
						
						
						
						<div class="col-sm-12 form-group row">
							<label for="pwd" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>성 별</label>
							<div class="col-sm-12">	
								<div class="">
									<select style="width:100%;" name="gender" id="gender" class="form-control float-left box">
										<option value="0">-선택-</option>
										<option value="1">남성</option>
										<option value="2">여성</option>
									</select>							
							</div>
						</div>
						
						
						
						
						
						
							<div class="form-group">
						<label for="id" class="col-sm-6" style="font-size:0.9em;" >
							 </div>
							 	<span style="color:red;font-weight:bold;">*</span>생년월일</label>	
      						
      						<div class="col-sm-12">
        					<input type="date" class="form-control box" id="birth" name="birth">
       						 <span class="sp"></span>
     						 
   						 </div>
   						 
   						 
   						 
   						 
   						 
							
								
						<div class="col-sm-12 form-group row">
							<label for="pwd" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>이메일</label>
							<div class="col-sm-12 ">
								<input name="email" type="email" class="form-control box" id="email"
										placeholder="example@naver.com">
						</div>
						
						
						
						
						
						
						
						
						<div class="col-sm-12 form-group row">
							<label for="pwd" class="col-sm-12" style="font-size:0.9em;">
							</div>
								<span style="color:red;font-weight:bold;">*</span>전화번호</label>
							<div class="col-sm-12">	
								<div class="">
									<select style="width:30%;" name="phone" id="phone" class="form-control float-left ">
										<option value="0">-선택-</option>
										<option value="010">010</option>

										<option value="011">011</option>
										<option value="017">017</option>
										<option value="018">018</option>
									</select>							
									<label class="float-left box" style="padding: 0; text-align: center;">&nbsp;&nbsp;-&nbsp;&nbsp;</label>										
									<input style="width:30%;" name="phone" type="text" class="form-control float-left" />
									<label class="float-left box" style="padding: 0; text-align: center;">&nbsp;&nbsp;-&nbsp;</label>
									<input style="width:30%;" name="phone" type="text" class="form-control float-right" />						
								</div>
							</div>
						
						
						
						
						
						
						
						
						
						<div class="form-group row">
							 <label for="id" class="col-sm-6" style="font-size:0.9em;" >
							 </div>
							 	<span style="color:red;font-weight:bold;">*</span>주소</label>	
							<div class="col-sm-12 input-group ">
								<input style= type="text" class="form-control box"  id="addr1" name="addr1"  placeholder="도로명주소">
								<span class="input-group-append-sm">	
									<button type="button" onclick="sample4_execDaumPostcode();"  class="btn btn-primary btn-block box" >주소찾기</button>
								</span>								
						</div>
						
						<div class="col-sm-12 ">
								<input type="text" class="form-control box" id="addr2" name="addr2" placeholder="상세주소">
			
						</div>
						<br>
						
							<input type="hidden" id="sample4_postcode" placeholder="우편번호">
								<span type="hidden"  id="guide" style="color:#999;display:none"></span> 
								<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소">
								<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
						
						
						
						<div class="card-footer">
							<div class="row">								
								<div class="col-sm-12">
									<button type="button" id="registBtn" onclick="regist_go();" class="btn btn-primary btn-block">가&nbsp;&nbsp;&nbsp;입&nbsp;&nbsp;&nbsp;하&nbsp;&nbsp;&nbsp;기</button>
							 	</div>
							 	
							 	
							 	
							 	
							 	
						</div>
							 	</div>
							</div>	
						</div>	
					</form>					
				</div><!-- register-card-body -->
			</div>
		</div>
			 	
						
							 	
	</section>		<!-- /.content -->

<!-- /.content-wrapper -->	





<form role="imageForm" action="upload/picture" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" 
		   style="display:none;" onchange="picture_go();" />
	<input id="oldFile" type="hidden" name="oldPicture" value="" />
	<input type="hidden" name="checkUpload" value="0" />	
</form>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("addr1").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>


<script>
function checkPwd(){	
	  var f1 = document.myForm;
	  var pw1 = f1.user_password.value;
	  var pw2 = f1.cpassword.value;
	  if(pw1!=pw2){
		  document.getElementById('checkPwd').style.display="block"; // 보이기
	  } else{
		  document.getElementById('checkPwd').style.display="none";
	  }	  
	 }
</script>
<script>
var checkedID ="";
var ch_pwd = -1;

var checkedID ="";
function idCheck_go(){
	//alert("idcheck btn click");
	var input_ID=$('input[name="id"]');
	if(!input_ID.val()){
       alert("아이디를 입력하시오");
       input_ID.focus();
       return;
	}
	$.ajax({
		url : "idCheck.do?id="+input_ID.val().trim(),
		method : "get",	
		success : function(result){
			if(result.toUpperCase() == "DUPLICATED"){
		      alert("중복된 아이디 입니다.");
		      $('input[name="id"]').focus();
			}else{
              alert("사용가능한 아이디 입니다.");
              checkedID=input_ID.val().trim();
              $('input[name="id"]').val(input_ID.val().trim());	             
           } 
           
		},
		error:function(error){
	       alert("시스템장애로 가입이 불가합니다.");
	       
	    }
	});
	
}

function regist_go(){

	 
	   if(!$('input[name="id"]').val()){
	    alert("아이디는 필수입니다.");
	      return;
	  }
	   
	 //  if($('input[name="id"]').val()!=checkedID){
	 //     alert("아이디는 중복 확인이 필요합니다.");
	 //     return;
	//   }
	   
	   if(!$('input[name="pwd"]').val()){
		      alert("패스워드는 필수입니다.");
		      return;
	   }
	   
	   if(ch_pwd == -1){
		      alert("패스워드확인 불일치합니다.");
		      return;
	   }
	   
		   
	   if(!$('input[name="name"]').val()){
	      alert("이름은 필수입니다.");
	      return;
	   }
	   
	   if(document.getElementById("gender").value == 0){
		      alert("성별선택은 필수입니다.");
		      return;
		   }
	   
	   if(!$('input[name="birth"]').val()){
		      alert("생년월일 입력 필수입니다.");
		      return;
		   }
	   
	   if(!$('input[name="email"]').val()){
		      alert("이메일 입력은 필수입니다.");
		      return;
		   }
	   
	   if(!$('input[name="phone"]').val() || document.getElementById("phone").value == 0){
		      alert("전화번호 입력은 필수입니다.");
		      return;
		   }
	   
	   if(!$('input[name="addr1"]').val() || !$('input[name="addr2"]').val()){
		      alert("주소입력은 필수입니다.");
		      return;
		   }
	   
	   var form = $('form[role="form"]');
	   form.submit();
}

function check_pw(){  //비밀번호 확인 
    var p = document.getElementById('pwd').value; 
    var p_cf = document.getElementById('pwd_re').value;
    
    if (p!=p_cf) { 
      document.getElementById('pw_check_re').innerHTML = "비밀번호가 다릅니다."; 
      document.getElementById('pw_check_re').style.color='#DC3545';
      ch_pwd = -1
      return;
    } 
    else { 
    	document.getElementById('pw_check_re').innerHTML = ""; 
    	ch_pwd = 1
    } 
 } 
</script>

  
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js" ></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>
    





