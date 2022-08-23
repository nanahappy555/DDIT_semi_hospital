<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>대덕병원 | 아이디 찾기</title>

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
<h4><p class="login-box-msg">아이디 찾기</p></h4>
<form action="../../index3.html" method="post">
<div class="input-group mb-3">
<input type="name" class="form-control" placeholder="이름">
<div class="input-group-append">
<div class="input-group-text">

</div>
</div>
</div>
<div class="input-group mb-3">
<input type="email" class="form-control" placeholder="이메일">
<div class="input-group-append">
<div class="input-group-text">

</div>
</div>
</div>
<div class="row">
<div class="col-8">
<div class="icheck-primary">

</div>
</div>

<div class="col-12">
<button type="submit" class="btn btn-primary btn-block">확 인</button>
</div>

</div>
</form>



</div>

</div>
</div>


<script src="../../plugins/jquery/jquery.min.js"></script>

<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="../../dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
</html>
