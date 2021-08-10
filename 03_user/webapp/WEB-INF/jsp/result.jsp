<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/taglibMenu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>
<jsp:include page="inc/header.jsp"></jsp:include>

<h3>메세지</h3>
<c:if test="${not empty message}">
	${message}
</c:if>

<c:if test="${not empty loginId}">
	${loginId}
</c:if>


</html>




