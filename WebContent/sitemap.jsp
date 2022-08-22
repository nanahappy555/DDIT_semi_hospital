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
    <div class="content">
		<div class="container-fluid">
		<!-- 본문 세로2행 -->
	      <div class="row"><br/><br/></div>
	      <div class="row top_bottom_blank">
	        <div class="col-sm-1"></div>
	        <div class="col-sm-2">
	        	<button type="button" class="btn btn-block btn-primary">진료예약</button><br/>
	        	<a href="<%=request.getContextPath()%>/reservation/list.do" target="mymainframe" ><button type="button" class="btn btn-block btn-default">온라인 예약</button></a>
	        	<a href="<%=request.getContextPath()%>/reservation_check.jsp" target="mymainframe" ><button type="button" class="btn btn-block btn-default">예약 확인 및 취소</button></a>
	        </div>
	        <div class="col-sm-2">
	        	<button type="button" class="btn btn-block btn-primary">진료안내</button><br/>
	        	<a href="#"><button type="button" class="btn btn-block btn-default">진료안내</button></a>
	        </div>
	        <div class="col-sm-2">
	        	<button type="button" class="btn btn-block btn-primary">나눔소통</button><br/>
	        	<a href="<%=request.getContextPath()%>/notice/list.do"><button type="button" class="btn btn-block btn-default">공지사항</button></a>
	        	<a href="<%=request.getContextPath()%>/faq/list1.do"><button type="button" class="btn btn-block btn-default">자주 묻는 질문</button></a>
	        	<a href="<%=request.getContextPath()%>/qna/list.do"><button type="button" class="btn btn-block btn-default">Q&A</button></a>
	        </div>
	        <div class="col-sm-2">
	        	<button type="button" class="btn btn-block btn-primary">병원안내</button><br/>
	        	<a href="<%=request.getContextPath()%>/introduce.jsp"><button type="button" class="btn btn-block btn-default">병원 소개</button></a>
	        	<a href="<%=request.getContextPath()%>/news/list.do"><button type="button" class="btn btn-block btn-default">병원 소식</button></a>
	        </div>
	        <div class="col-sm-2">
	        	<button type="button" class="btn btn-block btn-primary">회원서비스</button><br/>
	        	<a href="<%=request.getContextPath()%>/mypage/main.do"><button type="button" class="btn btn-block btn-default">마이페이지</button></a>
	        	<a href="<%=request.getContextPath()%>/chart/list.do"><button type="button" class="btn btn-block btn-default">진료기록</button></a>
	        	<a href="<%=request.getContextPath()%>/common/loginForm.do" target="_parent"><button type="button" class="btn btn-block btn-default">로그인</button></a>
	        	<a href="<%=request.getContextPath()%>/member/tosForm.do" 
		           onclick="window.open(this.href,'팝업창','width=500, height=800'); return false;"  
		           ><button type="button" class="btn btn-block btn-default">회원가입</button></a>
	        </div>
	        <div class="col-sm-1"></div>
	      </div>
  	 	</div>
    <!-- /.content -->
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
    