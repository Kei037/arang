<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value ='/resources/css/default.css'/>"/>
</head>
<body>
<h3>전체 작품조회 페이지</h3>
<label>Category</label>
<br>
<a href="" class="category">서양화</a>
<a href="" class="category">동양화</a>
<a href="" class="category">유화</a>
<a href="" class="category">조각</a>
<a href="" class="category">설치미술</a>
<a href="" class="category">미디어아트</a>
<a href="" class="category">사진</a>
<br>
<c:forEach var="findArtwork" items="${findArtworkList}">
----------------------------------------------------------------------<br>
<label>작품 카테고리 : </label>${findArtwork.artworkCategory}
<br>
<label>작품이름 : </label>${findArtwork.artworkName}
<br>
<label>작품소개 : </label>${findArtwork.description}
<br>
<label>작품이미지 : </label>
<img alt="artwork_img" src="/artwork_img/${findArtwork.artworkImg}" style="width: 300px; height: 300px;">

<br>
</c:forEach>

</body>
</html>