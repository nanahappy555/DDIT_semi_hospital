<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page import="com.jsp.dto.NoticeVO"%>
<%@page import="com.jsp.dto.MemberVO"%>
<%@page import="com.jsp.service.NoticeService"%>
<%@page import="com.jsp.service.MemberService"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
private NoticeService service;
public void setNoticeService(NoticeService service) {
	this.service = service;
}

private MemberService memberService;
public void setSearchMemberService(MemberService memberService) {
	this.memberService = memberService;
}
%>

</body>
</html>