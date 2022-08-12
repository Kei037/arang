<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/fake_resources/css/default/normalize.css"/>
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/default/default.css"/>
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/artist/artist.css"/>
  <script type="text/javascript" src="/fake_resources/js/jquery.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header/header_main.jsp"/>
<div id="login-wrap" style="
	margin-top: 100px;
	display: flex;
  	flex-wrap: wrap;
  	justify-content: center;">
<a href="/arang/user/add_artist" style="margin-right: 40px;">작가 회원가입</a>
<br>
<a href="/arang/user/add_gallerist">갤러리 회원가입</a>
</div>
</body>
</html>