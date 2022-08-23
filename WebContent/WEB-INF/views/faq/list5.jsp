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
												href="#collapseOne" aria-expanded="true"> 보험적용이 가능한가요? </a>
										</h4>
									</div>
									<div id="collapseOne" class="collapse show"
										data-parent="#accordion" style="">
										<div class="card-body">
										보험 여부는 가입하고 계신 보험사에 확인이 가능하오니, 해당 보험사에 문의하여 주시기 바랍니다.
										</div>
									</div>
								</div>
								<!-- 2 -->
								<!-- 3 -->
								<!-- 4 -->
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
    