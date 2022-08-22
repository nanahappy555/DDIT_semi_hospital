<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>notice | Starter</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
  
<style>

ul.tabs{
/* 	margin: 0px; */
/* 	padding: 0px; */
}

ul.tabs li{
  	display: inline-block;
/* 	background: #898989; */
/* 	color: white; */
/* 	padding: 10px 15px; */
	cursor: pointer;
}

ul.tabs li.current{
/* 	background: #e0e0e0; */
	color: #222;
}

.tab-content{
  display: none;
/* 	background: #e0e0e0; */
	padding: 12px;
}

.tab-content.current{
	display: inherit;
}

</style>
</head>

<body class="hold-transition sidebar-mini">
<div>
	 <!-- Main content -->
	<section class="content-header">
	  	<div class="container-fluid">
<div>
		<!-- 본문 세로4행 -->
					<div class="row  top_bottom_blank">
						<div class="col-sm-1"></div>
						<div class="col-sm-10">
					<!-- 탭메뉴-->
						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">
								<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">진료예약</button></a>
							</li>
							<li class="tab-link" data-tab="tab-2">
								<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">진료비관련</button></a>
							</li>
							<li class="tab-link" data-tab="tab-3">
								<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">서류발급관련</button></a>
							</li>
							<li class="tab-link" data-tab="tab-4">
								<a href="#"><button type="button"
									class="btn btn-block btn-outline-primary">병원이용관련</button></a>
							</li>
						</ul>
					<!-- 탭메뉴 종료-->
					</div>
					<div class="col-sm-1"></div>
<!-- 					</div> -->
					
					
<!-- 					<div class="row"> -->
						<div class="col-sm-2"></div>
						<div class="col-sm-8" border="1px">
							<!-- 탭1 -->
							<div id="tab-1" class="tab-content current">
								<div id="accordion">
									<!-- 1 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseOne" aria-expanded="true"> 진료 예약을 할 때 알아야 할 사항은? </a>
											</h4>
										</div>
										<div id="collapseOne" class="collapse show"
											data-parent="#accordion" style="">
											<div class="card-body">
											초진 예약시 환자의 인적사항(이름, 주민등록번호, 주소, 전화번호 등)으로 예약이&nbsp;가능합니다.
											</div>
										</div>
									</div>
									<!-- 2 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseTwo" aria-expanded="true"> 예약일자 변경 및 확인 방법은? </a>
											</h4>
										</div>
										<div id="collapseTwo" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											온라인 예약을 하신 경우 홈페이지에서 언제든지 변경이나 취소 신청이 가능합니다.<br />
											수납창구 또는 전화로 예약하신 경우 업무시간에 변경이나 취소 신청이 가능합니다.<br/>
											1. 수납창구 운영시간 : 평일 09:00 ~ 18:00, 토요일 : 09:00 ~ 13:00&nbsp;<br/>
											2. 전화예약실 운영시간 :&nbsp;평일 08:30 ~ 17:00, 토요일 : 08:30 ~ 13:00, 공휴일 미운영<br/>
											</div>
										</div>
									</div>
									<!-- 3 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseThree" aria-expanded="true"> 재진 환자의 경우 진찰료 수납 방법은? </a>
											</h4>
										</div>
										<div id="collapseThree" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											<p>◎ 진료전 검사가 없는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶ 수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행<br />
											 ◎ 진료전 검사가 있는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 수납(창구, 무인수납기, 인터넷)&nbsp;▶검사&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶&nbsp;수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 탭2 -->
							<div id="tab-2" class="tab-content current">
								<div id="accordion">
									<!-- 1 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseOne" aria-expanded="true"> 탭2지롱.. </a>
											</h4>
										</div>
										<div id="collapseOne" class="collapse show"
											data-parent="#accordion" style="">
											<div class="card-body">
											초진 예약시 환자의 인적사항(이름, 주민등록번호, 주소, 전화번호 등)으로 예약이&nbsp;가능합니다.
											</div>
										</div>
									</div>
									<!-- 2 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseTwo" aria-expanded="true"> 예약일자 변경 및 확인 방법은? </a>
											</h4>
										</div>
										<div id="collapseTwo" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											온라인 예약을 하신 경우 홈페이지에서 언제든지 변경이나 취소 신청이 가능합니다.<br />
											수납창구 또는 전화로 예약하신 경우 업무시간에 변경이나 취소 신청이 가능합니다.<br/>
											1. 수납창구 운영시간 : 평일 09:00 ~ 18:00, 토요일 : 09:00 ~ 13:00&nbsp;<br/>
											2. 전화예약실 운영시간 :&nbsp;평일 08:30 ~ 17:00, 토요일 : 08:30 ~ 13:00, 공휴일 미운영<br/>
											</div>
										</div>
									</div>
									<!-- 3 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseThree" aria-expanded="true"> 재진 환자의 경우 진찰료 수납 방법은? </a>
											</h4>
										</div>
										<div id="collapseThree" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											<p>◎ 진료전 검사가 없는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶ 수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행<br />
											 ◎ 진료전 검사가 있는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 수납(창구, 무인수납기, 인터넷)&nbsp;▶검사&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶&nbsp;수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 탭3 -->
							<div id="tab-3" class="tab-content current">
								<div id="accordion">
									<!-- 1 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseOne" aria-expanded="true"> 탭3이지롱.. </a>
											</h4>
										</div>
										<div id="collapseOne" class="collapse show"
											data-parent="#accordion" style="">
											<div class="card-body">
											초진 예약시 환자의 인적사항(이름, 주민등록번호, 주소, 전화번호 등)으로 예약이&nbsp;가능합니다.
											</div>
										</div>
									</div>
									<!-- 2 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseTwo" aria-expanded="true"> 예약일자 변경 및 확인 방법은? </a>
											</h4>
										</div>
										<div id="collapseTwo" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											온라인 예약을 하신 경우 홈페이지에서 언제든지 변경이나 취소 신청이 가능합니다.<br />
											수납창구 또는 전화로 예약하신 경우 업무시간에 변경이나 취소 신청이 가능합니다.<br/>
											1. 수납창구 운영시간 : 평일 09:00 ~ 18:00, 토요일 : 09:00 ~ 13:00&nbsp;<br/>
											2. 전화예약실 운영시간 :&nbsp;평일 08:30 ~ 17:00, 토요일 : 08:30 ~ 13:00, 공휴일 미운영<br/>
											</div>
										</div>
									</div>
									<!-- 3 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseThree" aria-expanded="true"> 재진 환자의 경우 진찰료 수납 방법은? </a>
											</h4>
										</div>
										<div id="collapseThree" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											<p>◎ 진료전 검사가 없는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶ 수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행<br />
											 ◎ 진료전 검사가 있는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 수납(창구, 무인수납기, 인터넷)&nbsp;▶검사&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶&nbsp;수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 탭4 -->
							<div id="tab-4" class="tab-content current">
								<div id="accordion">
									<!-- 1 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseOne" aria-expanded="true"> 탭4? </a>
											</h4>
										</div>
										<div id="collapseOne" class="collapse show"
											data-parent="#accordion" style="">
											<div class="card-body">
											초진 예약시 환자의 인적사항(이름, 주민등록번호, 주소, 전화번호 등)으로 예약이&nbsp;가능합니다.
											</div>
										</div>
									</div>
									<!-- 2 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseTwo" aria-expanded="true"> 예약일자 변경 및 확인 방법은? </a>
											</h4>
										</div>
										<div id="collapseTwo" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											온라인 예약을 하신 경우 홈페이지에서 언제든지 변경이나 취소 신청이 가능합니다.<br />
											수납창구 또는 전화로 예약하신 경우 업무시간에 변경이나 취소 신청이 가능합니다.<br/>
											1. 수납창구 운영시간 : 평일 09:00 ~ 18:00, 토요일 : 09:00 ~ 13:00&nbsp;<br/>
											2. 전화예약실 운영시간 :&nbsp;평일 08:30 ~ 17:00, 토요일 : 08:30 ~ 13:00, 공휴일 미운영<br/>
											</div>
										</div>
									</div>
									<!-- 3 -->
									<div class="card card-light">
										<div class="card-header">
											<h4 class="card-title w-100">
												<a class="d-block w-100" data-toggle="collapse"
													href="#collapseThree" aria-expanded="true"> 재진 환자의 경우 진찰료 수납 방법은? </a>
											</h4>
										</div>
										<div id="collapseThree" class="collapse"
											data-parent="#accordion" style="">
											<div class="card-body">
											<p>◎ 진료전 검사가 없는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶ 수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행<br />
											 ◎ 진료전 검사가 있는 경우<br />
											 &nbsp;예약일 내원&nbsp;▶ 수납(창구, 무인수납기, 인터넷)&nbsp;▶검사&nbsp;▶ 진료과 접수&nbsp;▶ 외래진료&nbsp;▶&nbsp;수납(창구, 무인수납기, 인터넷) 및 약처방(창구, 무인수납기) 발행
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>
  	 	</div>
    <!-- /.content -->
  </div>
   	</section>
  </div>
  <!-- /.content-wrapper -->
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<script>

$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

});

</script>

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
    