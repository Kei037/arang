<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/css/default/normalize.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/css/default/default.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/css/default/header.css'/>"/>
<script type="text/javascript" src="<c:url value ='/resources/js/jquery.js'/>"></script>
</head>
<body>
<header id="header">
	<div class="inner">
		<!-- 로고 -->
		<h1 id="top-logo">
          <a href="/arang/main">ARANG</a>
        </h1>
        <!-- 메인메뉴 -->
        <nav id="top-nav">
          <ul class="center_menu">
            <li><a href="/arang/artist_board/artist_main">Artists</a></li>
            <li><a href="./gallerys/gallerys.html">Gallerys</a></li>
            <li><a href="./exhibitions/exhibitions.html">Exhibitions</a></li>
            <li><a href="./storage/storage.html">Storage</a></li>
            <li><a href="./notice/notice.html">Notice</a></li>
          </ul>
          <ul class="side_menu">
            <li><a href="./find/find.html"><img src="<c:url value ='/resources/img/artist/icon/find.png'/>" alt="find"></a></li>
            <li><a href="/arang/pages/add_artwork"><img src="<c:url value ='/resources/img/artist/icon/mypage.png'/>" alt="mypage"></a></li>
            <li><a href="./like/like.html"><img src="<c:url value ='/resources/img/artist/icon/like.png'/>" alt="like"></a></li>
            <li><a href="./cart/cart.html"><img src="<c:url value ='/resources/img/artist/icon/cart.png'/>" alt="cart"></a></li>
            <li><a href="/arang/login">Login</a></li>
          </ul>
        </nav>
	</div>
</header>
</body>
</html>