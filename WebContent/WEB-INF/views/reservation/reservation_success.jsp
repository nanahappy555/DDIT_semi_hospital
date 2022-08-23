<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script>
	alert("예약이 되었습니다.\n 메인 페이지로 이동합니다.");
	window.location.href="<%=request.getContextPath()%>/";
	window.close();	
</script>