<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="historypostList" value="${dataMap.chartList }" />
    
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
	  				<h1>진료기록</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="chart.do">
				        	<i class="fa fa-dashboard"></i>회원관리
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
   				<button type="button" class="btn btn-primary" onclick="OpenWindow('registForm.do','회원등록',600,700);" >회원등록</button>
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
					 		<!-- <option value=""  >검색구분</option> -->
							<option value="cnu" ${param.searchType=='cnu' ? "selected":"" }>진료번호</option>
							<option value="cda" ${param.searchType=='cda' ? "selected":"" }>진료날짜</option>
							<option value="cti" ${param.searchType=='cti' ? "selected":"" }>진료시간</option>
							<option value="mco" ${param.searchType=='mco' ? "selected":"" }>환자</option>	
							<option value="dco" ${param.searchType=='dco' ? "selected":"" }>의사</option>	
											 									
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
		    				<th>진료번호</th>
		                	<th>진료날짜</th> <!-- yyyy-MM-dd  -->
		                	<th>진료시간</th> <!-- hh:mm:ss  -->
		                	<th>환자</th>
		                	<th>의사</th>
		               	</tr>
		     			<c:if test="${!empty chartList }" >
		            		<c:forEach items="${chartList }" var="chart">		     						     				
		     					 <tr>
		            		  	   	<!-- <td></td> -->
		            		  	   	<td>${chart.cnum }</td>
		            		  	   	<td>${chart.cdate }</td>
		            		  	   	<td>${chart.ctime }</td>
				              		<td>${chart.mcode }</td>
				              		<td>${chart.dcode }</td>
		            		  	  </tr>	
		     					
		     				</c:forEach>
		            	</c:if>		
		     			<c:if test="${empty chartList }" >
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

<script>
//팝업창들 뛰우기
//새로운 Window창을 Open할 경우 사용되는 함수 ( arg : 주소 , 창타이틀 , 넓이 , 길이 )
function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight) {
	winleft = (screen.width - WinWidth) / 2;
	wintop = (screen.height - WinHeight) / 2;
	var win = window.open(UrlStr , WinTitle , "scrollbars=yes,width="+ WinWidth +", " 
							+"height="+ WinHeight +", top="+ wintop +", left=" 
							+ winleft +", resizable=yes, status=yes"  );
	win.focus() ; 
}

</script>

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
    
