<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/fake_resources/css/default/normalize.css"/>
<link rel="stylesheet" type="text/css" href="/fake_resources/css/default/default.css"/>
<link rel="stylesheet" type="text/css" href="/fake_resources/css/login/input_style.css"/>
<link rel="stylesheet" type="text/css" href="/fake_resources/css/join/join_artist.css"/>
</head>
<body>

<div id="wrap">
  
<jsp:include page="/WEB-INF/views/header/header.jsp"/>

<div class="container">
      <div class="row artist_list">
      <c:forEach var="exhibitions" items="${exhibitionList}">
        <div class="col artist_item">
          <div class="artist_info d-flex flex-row">
            <div class="artist_avatar">
              <a href="#">
              <img src="${exhibitions.artworkImgPath }" alt="1" style="width: 400px; height: 400px;">
              </a>
            </div>
            <div class="artist_text">
              <div class="second d-flex flex-row">
                <div>${exhibitions.exhibitionTitle } ${exhibitions.startDate} ~ ${exhibitions.endDate }</div>
              </div>
            </div>
          </div>
          </div>
        </div>
      </c:forEach>
        
      </div>
    </div>
</div>
</body>
</html>