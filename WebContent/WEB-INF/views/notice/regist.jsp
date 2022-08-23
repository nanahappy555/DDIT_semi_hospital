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
  <title>AdminLTE 3 | Starter</title>
  <!-- 에디터 -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/editor.css">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

</head>
<body class="hold-transition sidebar-mini">



<div>
  	 <section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>새 게시물 등록</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="#">
				        	<i class="fa fa-dashboard">회원관리</i>
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	등록
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
  	</section>
	<!-- Main content -->
	<section class="content register-page">
		<div class="row">
			<div class="col-sm-12">
				제목<input type="text" class="editor" name="title" value=""/>
				작성자<input type="text" class="editor" value="${member.name }"/>
			</div>
		</div>
				<br/>
		<div class="row">
			<div class="col-sm-12">
				<div id="summernote">공지사항을 작성해주세요.</div>
			</div>
		</div>
		<div class="row">
					<div class="col-sm-6">
						<button type="button" id="registBtn" onclick="regist_go();" class="btn btn-info">등&nbsp;&nbsp;록</button>
				 	</div>
				 	
				 	<div class="col-sm-6">
						<button type="button" id="cancelBtn" onclick=""
							class="btn btn-default float-right">취 &nbsp;&nbsp;소</button>
					</div>
				
				</div>
			</div>
		</div>

	</section>		<!-- /.content -->
</div>
<!-- /.content-wrapper -->	

<form id="registForm">	
	<input type='hidden' name="title" value="" />
<!-- 	<input type='hidden' name="mcode" value=""/> -->
	<input type='hidden' name="content" value=""/>
</form>

<script>
$('#summernote').summernote({
    placeholder: 'Hello Bootstrap 4',
    tabsize: 2,
    height: 500
  });
</script>

<script>
	function regist_go(){
// 		alert("regist btn click");
		let textbox = $('.note-editable').text();
		
		if(!$('input[name="title"]').val()){
		  alert("제목을 입력해주세요.");
		  return;
		}
		if(textbox == "공지사항을 작성해주세요."){
		  alert("내용을 입력해주세요.");
		  return;
		}
		
		//form에 title,content세팅
		
		var registform = $('form[id="registForm"]');
		registform.find('[name="title"]').val($('input[name="title"]').val());
		registform.find('[name="content"]').val(textbox);
		registform.attr({"method":"post",
		     	   "action":"regist.do"
		   		  });	   
		registform.submit();
		
	}
</script>
  
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js" ></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
    





