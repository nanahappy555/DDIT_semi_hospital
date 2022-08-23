<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>대덕병원 Log in</title>

<!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css?v=3.2.0">

<link rel="icon" href="<%=request.getContextPath()%>/resources/img/logo/em.png" type="image/x-icon" sizes="16x16">

<body class="hold-transition login-page">
<div class="login-box">
<div class="login-logo">
<h1><a href="<%=request.getContextPath()%>"><img src="<%=request.getContextPath()%>/resources/img/logo/logo2.png"></a></h1>
</div>

<div class="card">
<div class="card-body login-card-body">
<p class="login-box-msg"></p>
<form action="login.do"	method="post">
				<input name="retUrl" value="${retUrl }" type="hidden" />
				<div class="form-group has-feedback">
					<input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요." value="${pastID }">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="pwd" placeholder="패스워드를 입력하세요."  value="">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

<div class="row">
<div class="col-8">
<div class="icheck-primary">

</div>
</div>

<div class="col-12">
<button type="submit" class="btn btn-primary btn-block">로그인</button>
</div>

</div>
</form>
<div class="social-auth-links text-center mb-3">
<p>- OR -</p>
<a href="<%=request.getContextPath()%>/member/tosForm.do" 
   onclick="window.open(this.href,'팝업창','width=500, height=800'); return false;" 
   class="btn btn-block btn-danger">
<i class=""></i> 회원가입
</a>

</div>

<p class="mb-1">
<a href="<%=request.getContextPath()%>/member/findIdForm.do" 
   onclick="window.open(this.href,'팝업창','width=500, height=500'); return false;" 
   class="text-center">아이디 찾기</a>
</p>

<p class="mb-0">
<a href="<%=request.getContextPath()%>/member/findPwdForm.do" 
   onclick="window.open(this.href,'팝업창','width=500, height=500'); return false;" 
  class="text-center">비밀번호 찾기</a>
</p>
</div>

</div>
</div>


<script src="../../plugins/jquery/jquery.min.js"></script>

<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="../../dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>
