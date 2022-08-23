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
								<div class="card card-light">
									<div class="card-header">
										<h4 class="card-title w-100">
											<a class="d-block w-100" data-toggle="collapse"
												href="#collapseTwo" aria-expanded="true"> 진료비 수납은 어떻게 하나요? </a>
										</h4>
									</div>
									<div id="collapseTwo" class="collapse"
										data-parent="#accordion" style="">
										<div class="card-body">
											<p>A. 원무과 창구에서 수납가능하며, 진료비 수납의 편의를 위하여 무인수납기를 설치하여 운영중이며,<br />
											하이패스(Hi-Pass) 신용카드 후불 결제서비스도 시행되고 있습니다.<br />
											<br />
											※ 하이패스(Hi-Pass) 후불 결제서비스 신청 및 해지방법&nbsp;</p>
									
											<div class="table_wrap">
											<table class="cont_table captionNone">
												<thead>
													<tr>
														<th class="row" colspan="2" scope="col">구분</th>
														<th scope="col">신청 및 해지</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="row" colspan="2">신청가능 카드</td>
														<td class="tbl_left">- 국내에서 발급한 개인명의 신용카드 모두 가능(법인카드 불가)<br />
														단, 체크카드, 아멕스, 해외VISA, 해외MASTER, JCB카드</td>
													</tr>
													<tr>
														<td class="row" colspan="2">접수처</td>
														<td class="tbl_left">원무과 전 창구</td>
													</tr>
													<tr>
														<td class="row" rowspan="2">구비서류</td>
														<td>신청</td>
														<td class="tbl_left">- 진료비 하이패스 신청서<br />
														- 방문자신분증, 신용카드 주 신분증,<br />
														- 등록할 신용카드 지참, 신용카드 비밀번호확인</td>
													</tr>
													<tr>
														<td>해지</td>
														<td class="tbl_left">- 환자본인방문시 : 환자본인 신분증, 진료비 하이패스 취소 신청서<br />
														- 가족방문시 : 방문자신분증, 가족관계증명서, 진료비 하이패스 취소 신청서<br />
														* 신용카드 유효기간 종료시 자동 해지됨</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
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
    