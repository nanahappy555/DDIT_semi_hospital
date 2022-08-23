<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="qnaList" value="${dataMap.qnaList }" />
    
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Q&A | 질문게시판</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">

	<div >
	 <!-- Main content -->
	<section class="content-header">
	  	<div class="container-fluid">
	  		<div class="row md-2">
	  			<div class="col-sm-6">
	  				<h1>Q&A 질문 게시판</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="list.do">
				        	<i class="fa fa-dashboard"></i>Q&A
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	목록
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	</section>
	 
	 
   	<section class="content">
   		<div class="card">
   			<div class="card-header with-border">
   				<button type="button" class="btn btn-primary" onclick="OpenWindow('registForm.do','글쓰기',1000,700);" >글쓰기</button>
   				<div id="keyword" class="card-tools" style="width:550px;">
   					 <div class="input-group row">
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  		<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="list_go(1);">					  		  		
					  		<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' } >정렬개수</option>
					  		<option value="2" ${cri.perPageNum eq 2 ? 'selected' : '' }>2개씩</option>
					  		<option value="3" ${cri.perPageNum eq 3 ? 'selected' : '' }>3개씩</option>
					  		<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
					  	</select>
					  	
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-3" name="searchType" id="searchType">
					 		<option value=""  >검색구분</option>
							<option value="t" ${param.searchType=='t' ? "selected":"" }>글제목</option>
							<option value="w" ${param.searchType=='w' ? "selected":"" }>작성자</option>
							<option value="c" ${param.searchType=='c' ? "selected":"" }>글내용</option>	
											 									
						</select>
						<!-- keyword -->
   					 	<input  class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="${cri.keyword }"/>
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" 
									id="searchBtn" data-card-widget="search" onclick="list_go(1);">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
					<!-- end : search bar -->		
   					 </div>
   				</div>   			
   			</div>
   			<div class="card-body" style="text-align:center;">
    		  <div class="row">
	             <div class="col-sm-12">	
		    		<table class="table table-bordered">
		    			<tr>
		    				<th>No.</th>
		                	<th>제  목</th>
		                	<th>작성자</th>
		                	<th>작성일</th> <!-- yyyy-MM-dd  -->
		               	</tr>
		     			<c:if test="${!empty qnaList }" >
		            		<c:forEach items="${qnaList }" var="qna">		     						     				
		     					 <tr  onclick="OpenWindow('detail.do?qno=${qna.qno}','글내용',700,800);" style="cursor:pointer;">
		            		  	   	<td>${qna.qno }</td>
				              		<td>${qna.title }</td>
				              		<td>작성자</td>
		            		  	   	<td><fmt:formatDate value="${qna.regdate }" pattern="yyyy-MM-dd"/></td>
		            		  	  </tr>	
		     					
		     				</c:forEach>
		            	</c:if>		
		     			<c:if test="${empty qnaList }" >
			     			<tr>
		            			<td colspan="7" class="text-center">
		            				해당내용이 없습니다.
		            			</td>
		            		</tr>
		     			</c:if>	
		            </table>
    		     </div> <!-- col-sm-12 -->
    	       </div> <!-- row -->
    		</div> <!-- card-body -->
    		<div class="card-footer">
    			<!-- pagination -->
    			<nav aria-label="Navigation">
					<ul class="pagination justify-content-center m-0">
						<li class="page-item">
							<a class="page-link" href="javascript:list_go(1);">
								<i class="fas fa-angle-double-left"></i>
							</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="javascript:list_go('${pageMaker.prev ? pageMaker.startPage-1 : cri.page}');">
								<i class="fas fa-angle-left"></i>
							</a>						
						</li>
					
					<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
						<li class="page-item ${cri.page == pageNum?'active':''}">
							<a class="page-link" href="javascript:list_go('${pageNum}');" >${pageNum }</a>
						</li>
					</c:forEach>
						<li class="page-item">
							<a class="page-link" href="javascript:list_go('${pageMaker.next ? pageMaker.endPage+1 :cri.page}');">
								<i class="fas fa-angle-right" ></i>
							</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="javascript:list_go('${pageMaker.realEndPage}');">
								<i class="fas fa-angle-double-right"></i>
							</a>
						</li>	
					</ul>
				</nav>
    		</div>
	     </div>
   	</section>
  </div>



  
<form id="jobForm">	
	<input type='hidden' name="page" value="" />
	<input type='hidden' name="perPageNum" value=""/>
	<input type='hidden' name="searchType" value="" />
	<input type='hidden' name="keyword" value="" />
</form>
 
 
  
 
   
<script>

	
	function list_go(page,url){
		//alert(page);
		if(!url) url="list.do";
		
		var jobForm=$('#jobForm');
		jobForm.find("[name='page']").val(page);
		jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
		jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
		jobForm.find("[name='keyword']").val($('div.input-group>input[name="keyword"]').val());
		jobForm.attr({
			action:url,
			method:'get'
		}).submit(); 
	}

</script>	



<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js -->
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
</body>
</html>
    





