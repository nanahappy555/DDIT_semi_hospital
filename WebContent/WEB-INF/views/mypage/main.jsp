<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="mypageMain" value="${dataMap.mypageMain }" />
    
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
	  				<h1>마이페이지</h1>  				
	  			</div>
	  			<div class="col-sm-6">
	  				<ol class="breadcrumb float-sm-right">
			        <li class="breadcrumb-item">
			        	<a href="mypage.do">
				        	<i class="fa fa-dashboard"></i>내정보수정
				        </a>
			        </li>
			        <li class="breadcrumb-item active">
			        	메인
			        </li>		        
	    	  </ol>
	  			</div>
	  		</div>
	  	</div>
	</section>
	 
	 
   	<section class="content">
   		<div class="card">
   			<div class="card-header with-border">
   				
   				<a href="http://localhost/DDIT_hospital/chart/list.do">
   					<button type="button" class="btn btn-primary" onclick="OpenWindow('registForm.do','문의내역',600,700);" >진료내역</button>
   				</a>
   				<a href="">
   					<button type="button" class="btn btn-primary" onclick="OpenWindow('registForm.do','문의내역',600,700);" >문의내역</button>
   				</a>
   				
   				<div id="keyword" class="card-tools" style="width:550px;">
   					 <div class="input-group row">
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-3" name="searchType" id="searchType">
					 		<!-- <option value=""  >검색구분</option> -->
							<option value="mco" ${param.searchType=='mco' ? "selected":"" }>회원번호</option>
							<option value="mid" ${param.searchType=='mid' ? "selected":"" }>아이디</option>
							<option value="mpwd" ${param.searchType=='mpwd' ? "selected":"" }>비밀번호</option>
							<option value="mname" ${param.searchType=='mname' ? "selected":"" }>회원이름</option>
							<option value="mgender" ${param.searchType=='mgender' ? "selected":"" }>성별</option>
							<option value="mbir" ${param.searchType=='mbir' ? "selected":"" }>생년월일</option>
							<option value="memail" ${param.searchType=='memail' ? "selected":"" }>이메일</option>
							<option value="mphone" ${param.searchType=='mphone' ? "selected":"" }>연락처</option>
							<option value="maddr1" ${param.searchType=='maddr1' ? "selected":"" }>주소</option>	
							<option value="maddr2" ${param.searchType=='maddr2' ? "selected":"" }>상세주소</option>	
											 									
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
		    				<tr><td width="100px">회원정보</td><td>${mypage.mcode }</td></tr>
		    				<tr><td>아이디</td><td>${mypage.id }</td></tr>
		    				<tr><td>비밀번호</td><td>${mypage.pwd }</td></tr>
		    				<tr><td>회원이름</td><td>${mypage.name }</td></tr>
		    				<tr><td>성별</td><td>${mypage.gender }</td></tr>
		    				<tr><td>생년월일</td><td>${mypage.birth }</td></tr>
		    				<tr><td>이메일</td><td>${mypage.email }</td></tr>
		    				<tr><td>연락처</td><td>${mypage.phone }</td></tr>
		    				<tr><td>주소</td><td>${mypage.addr1 }</td></tr>
		    				<tr><td>상세주소</td><td>${mypage.addr2 }</td></tr>
		                	
		     			<c:if test="${!empty mypageMain }" >
		            		<c:forEach items="${mypageMain }" var="mypageMain">		     						     				
		     					 <%-- <tr>
		            		  	   	<td></td>
		            		  	   	<td>${mypage.mcode }</td>
				              		<td>${mypage.id }</td>
				              		<td>${mypage.pwd }</td>
				              		<td>${mypage.name }</td>
				              		<td>${mypage.gender }</td>
				              		<td>${mypage.birth }</td>
				              		<td>${mypage.email }</td>
				              		<td>${mypage.phone }</td>
				              		<td>${mypage.addr1 }</td>
				              		<td>${mypage.addr2 }</td>
		            		  	  </tr>	 --%>
		     					
		     				</c:forEach>
		            	</c:if>		
		     			<c:if test="${empty mypageMain }" >
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



  
<!-- <form id="jobForm">	
	<input type='hidden' name="page" value="" />
	<input type='hidden' name="perPageNum" value=""/>
	<input type='hidden' name="searchType" value="" />
	<input type='hidden' name="keyword" value="" />
</form> -->
   
<!-- <script>

	
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
</script> -->

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
    
