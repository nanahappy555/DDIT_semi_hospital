<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script>
	alert("게시물이 등록됐습니다.\n Q&A 리스트 페이지로 이동합니다.");
	window.opener.location.href="<%=request.getContextPath()%>/qna/list.do";
	window.close();	
</script>