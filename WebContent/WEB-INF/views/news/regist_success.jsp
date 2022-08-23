<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script>
	alert("공지사항이 등록됐습니다.\n 공지사항 리스트 페이지로 이동합니다.");
	window.opener.location.href="<%=request.getContextPath()%>/news/list.do";
	window.close();	
</script>