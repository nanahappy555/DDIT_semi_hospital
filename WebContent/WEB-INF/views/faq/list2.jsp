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
</head>

<body class="hold-transition sidebar-mini">
<div>
	 <!-- Main content -->
	<section class="content-header">
	  	<div class="container-fluid">
<div>
		<!-- 본문 세로4행 -->
					<!-- 본문 세로4행 -->
					<div class="row  top_bottom_blank">
						<div class="col-sm-1"></div>
						<div class="col-sm-2">
							<a href="<%=request.getContextPath()%>/faq/list1.do" target="mymainframe"><button type="button"
									class="btn btn-block btn-outline-primary">진료예약</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="<%=request.getContextPath()%>/faq/list2.do" target="mymainframe" ><button type="button"
									class="btn btn-block btn-outline-primary">외래진료</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="<%=request.getContextPath()%>/faq/list3.do" target="mymainframe" ><button type="button"
									class="btn btn-block btn-outline-primary">진료비관련</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="<%=request.getContextPath()%>/faq/list4.do" target="mymainframe"><button type="button"
									class="btn btn-block btn-outline-primary">서류발급관련</button></a><br />
						</div>
						<div class="col-sm-2">
							<a href="<%=request.getContextPath()%>/faq/list5.do" target="mymainframe"><button type="button"
									class="btn btn-block btn-outline-primary">병원이용관련</button></a><br />
						</div>
						<div class="col-sm-1"></div>
					</div>
					<div class="row">
						<div class="col-sm-2"></div>
						<div class="col-sm-8">
							<div id="accordion">
								<!-- 1 -->
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseOne" aria-expanded="true"> 토요일 진료가 가능한가요? </a>
										</h4>
									</div>
									<div id="collapseOne" class="collapse show"
										data-parent="#accordion" style="">
										<div class="card-body">
										토요일 진료접수 시간은 (오전08:30 - 오전11:30)이며, 진료시간은 (오전12시)까지입니다. <br/>
										진료일정표를 확인하시고 진료과예약, 홈페이지예약, 콜센터예약 및 당일 방문자는 외래 접수수납처에서 당일접수를 통해서 진료를 받으시면 됩니다.
										</div>
									</div>
								</div>
								<!-- 2 -->
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseTwo" aria-expanded="true"> 인터넷 예약을 통해 처음 방문하는 경우는? </a>
										</h4>
									</div>
									<div id="collapseTwo" class="collapse"
										data-parent="#accordion" style="">
										<div class="card-body">
										인터넷을 이용하여 을지대학교병원 홈페이지 회원으로 가입하시고 진료예약 후 본원에 내원하시는 경우, <br/> 
										본원은 인터넷예약환자를 포함한 모든 예약환자 분들은 진료예약을 했을 경우 진료과에 방문하여 선 진료를 보시고 의료진 처방을 받고나서 진료비를 납부하시면 됩니다.
										</div>
									</div>
								</div>
								<!-- 3 -->
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseThree" aria-expanded="true"> 예약하지 않은 환자도 당일진료 가능한가요? </a>
										</h4>
									</div>
									<div id="collapseThree" class="collapse"
										data-parent="#accordion" style="">
										<div class="card-body">
										본원은 예약진료를 우선하고 있으며, 당일 진료를 원하시는 경우 각 진료과로 문의하여 주시기 바랍니다. 
										</div>
									</div>
								</div>
								<!-- 4 -->
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseThree" aria-expanded="true"> 타병원에서 CT나 MRI, 엑스레이가 있는데 다시 재촬영해야 하나요? </a>
										</h4>
									</div>
									<div id="collapseThree" class="collapse"
										data-parent="#accordion" style="">
										<div class="card-body">
										최근 같은 질환으로 타병원에서 촬영한 CT나 MRI, X-ray가 있다면 촬영한 병원에서 복사(CD)해 가지고 내원하시면 비용과 시간을 절약하실 수 있습니다.<br/>
										단, 진찰결과에 따라 의사의 소견에 의해 재촬영되는 경우가 있습니다. 
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

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
    