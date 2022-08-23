<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/fake_resources/css/default/normalize.css">
<link rel="stylesheet" href="/fake_resources/css/default/default.css">
<link rel="stylesheet" href="/fake_resources/css/default/header.css">
<link rel="stylesheet" href="/fake_resources/css/login/input_style.css">
<link rel="stylesheet" href="/fake_resources/css/join/join_artist.css">
<link rel="stylesheet" href="/fake_resources/css/mypage/mypage_default.css">
</head>
<body>
<div id="wrap">

<jsp:include page="/WEB-INF/views/header/header_main.jsp"/>
<div class="container">
      <h4 class="sub_title">My Information</h4>
      <div class="info_simul">
        <div class="info_wrapper first">
          <div class="info_left gallerist">
            <div class="my_info">
              <form>
                <table class="table_a">
                  <tr>
                    <td>
                      <div class="artist_avatar">
                        <img src="${gallerist.imgPath}" alt="2">
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h3>${gallerist.name}</h3>
                      <p>Gallerist</p>
                    </td>
                  </tr>
                </table>
              </form>
            </div>
          </div>
          <div class="info_center">
            <div class="my_info center gallerist">
              <form>
                <table class="table_a">
                  <tr>
                    <td class="a_category">
                    <strong>이메일(아이디)</strong>
                    </td>
                  </tr>
                  <tr>
                    <td class="a_data">
                      ${gallerist.email}
                    </td>
                  </tr>
                  <tr>
                    <td class="a_category">
                      <strong>비밀번호</strong>
                    </td>
                  </tr>
                  <tr>
                    <td class="a_data">
                      ********
                    </td>
                  </tr>
                </table>
              </form>
            </div>
          </div>
          <div class="info_right">
            <div class="my_info right">
              <form>
                <table class="table_a">
                <tr>
                  <td class="a_category">
                    <strong>주민등록번호</strong>
                  </td>
                </tr>
                <tr>
                  <td class="a_data">
                    ${ssn}
                  </td>
                </tr>
                <tr>
                  <td class="a_category">
                    <strong>전화번호</strong>
                  </td>
                </tr>
                <tr>
                  <td class="a_data">
                    ${gallerist.phone}
                  </td>
                </tr>
                </table>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="btn2_group">
      	<a href="/arang/mypage/mypage_request_list"><button class="btn2">신청한 아티스트 목록</button></a>
        <a href="/arang/mypage/mypage_gallerist_modify"><button class="btn2">내 정보 수정</button></a>
        <a href="/arang/gallery/gallery_upload"><button class="btn2">갤러리 등록</button></a>
      </div>
    </div>

</div>
</body>
</html>