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
  <title>세계를 선도하는 대덕병원입니다</title>
  <!-- 헤더, 푸더 외부 css파일 -->
  <link rel="stylesheet" href="css/header_footer.css">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<style>
h3 {
  margin-bottom: 0;
}

.it {
  display: inline-flex;
}

</style>

</head>
<body class="hold-transition layout-top-nav">

    <!-- Main content -->
    <div class="content">
		<div class="container-fluid">
		<!-- 본문 세로4행 -->
	      <div class="card card-primary card-outline">
<div class="card-header">
<h3>병원소개</h3>
</div>
<div class="card-body">

<div class="row">
<div class="col-5 col-sm-3">
<div class="nav flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical">
<a class="nav-link active" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true">병원장 인사말</a>
<a class="nav-link" id="vert-tabs-home-tab" data-toggle="pill" href="#vert-tabs-home" role="tab" aria-controls="vert-tabs-home" aria-selected="true"></a>
<a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false">연혁</a>
<a class="nav-link" id="vert-tabs-profile-tab" data-toggle="pill" href="#vert-tabs-profile" role="tab" aria-controls="vert-tabs-profile" aria-selected="false"></a>
<a class="nav-link" id="vert-tabs-messages-tab" data-toggle="pill" href="#vert-tabs-messages" role="tab" aria-controls="vert-tabs-messages" aria-selected="false">홍보 영상물</a>
<a class="nav-link" id="vert-tabs-messages-tab" data-toggle="pill" href="#vert-tabs-messages" role="tab" aria-controls="vert-tabs-messages" aria-selected="false"></a>
<a class="nav-link" id="vert-tabs-settings-tab" data-toggle="pill" href="#vert-tabs-settings" role="tab" aria-controls="vert-tabs-settings" aria-selected="false">오시는 길</a>
<a class="nav-link" id="vert-tabs-settings-tab" data-toggle="pill" href="#vert-tabs-settings" role="tab" aria-controls="vert-tabs-settings" aria-selected="false"></a>
</div>
</div>
<div class="col-7 col-sm-9">
	<div class="tab-content" id="vert-tabs-tabContent">
		<div class="tab-pane text-left fade show active" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
			<div class="it" style="float:left; margin-right:10px padding-left: ;">
				<img src="<%=request.getContextPath()%>/resources/img/doctor.jpg "alt="병원장 이미지">
</div>
<div class="it" style="float:left;">
<p class="cont_p"> <br>대덕병원은 ‘세계 최고의 교육·연구·진료를 통하여 <br>
인류가 건강하고 행복한 삶을 누릴 수 있도록 한다’는 설립이념 아래<br>
 눈부신 성장을 거듭하며 대한민국을 대표하는 국가중앙병원으로 국민 여러분께 인정받고 있습니다.<br>
 <br>
 개원 이후 어려운 환경 속에서도 최상의 의료서비스 제공을 위해 진료시스템을 개선하고,<br>
 환자 및 고객 편의를 최우선으로 여기는 환경을 마련하는 등 국민 건강과 복지 향상을 <br>
 위해 끊임없이 고민하며 발전을 거듭해 왔습니다.<br>
 <br>
 또한, 공공의료 본연의 기능을 더욱 강화해나가기 위해<br>
 국내 최초로 병원이 주도하는 융·복합연구단지인 헬스케어혁신파크를 마련하였고,<br>
 그 결과 헬스케어 연구개발의 전주기 지원이 가능한 미래의학 연구 환경을 조성하였습니다.<br>
 <br>
 앞으로도 대덕병원은 환자와 고객의 믿음에 최상의 치료로 보답할 수 있도록 의료서비스의 질적 향상은 물론,<br>
 산업계, 학계, 지역사회와 함께 대한민국 미래의료의 새로운 시대를 개척해 나가는 데에 <br>
 앞장서는 병원이 될 것을 약속드립니다. 항상 따뜻한 애정과 신뢰를 보내주시는 여러분께 깊은 감사를 드리며,<br>
 밝고 건강한 사회를 만들어 가는 대덕병원이 될 수 있도록<br>
 늘 노력하겠습니다. 감사합니다.<br></p>
</div>

		</div>
	<div class="tab-pane fade" id="vert-tabs-profile" role="tabpanel" aria-labelledby="vert-tabs-profile-tab">
	<div class="col-12">
	<div class="card">
	<div class="card-header">
	<h3 class="card-title">병원 연혁</h3>
	</div>
	<div class="card-body">
	<ul class="pagination pagination-month justify-content-center">
	<li class="page-item"><a class="page-link" href="#">«</a></li>
	<li class="page-item">
	
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Apr</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">May</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Jun</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Jul</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Aug</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Sep</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Oct</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Nov</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item">
	<a class="page-link" href="#">
	<p class="page-month">Dec</p>
	<p class="page-year">2022</p>
	</a>
	</li>
	<li class="page-item"><a class="page-link" href="#">»</a></li>
	</ul>
	</div>
	</div>
	</div>
<!-- 내용들어갈 곳 -->

</div>

<div class="tab-pane fade" id="vert-tabs-messages" role="tabpanel" aria-labelledby="vert-tabs-messages-tab">
	<iframe width="560" height="315" src="https://www.youtube.com/embed/zMZ5IVpEf6g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<div class="tab-pane fade" id="vert-tabs-settings" role="tabpanel" aria-labelledby="vert-tabs-settings-tab">
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3ead88aa9261fdd2ab3f5780d6fc9ee1"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>
</div>
</div>
</div>
</div>

</div>

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
    