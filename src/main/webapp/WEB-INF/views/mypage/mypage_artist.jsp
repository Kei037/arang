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
<link rel="stylesheet" href="/fake_resources/css/login/input_style.css">
<link rel="stylesheet" href="/fake_resources/css/join/join_artist.css">
<link rel="stylesheet" href="/fake_resources/css/artist/artist_focus.css">
<link rel="stylesheet" href="/fake_resources/css/storage/storage_list.css">
<link rel="stylesheet" href="/fake_resources/css/mypage/mypage_default.css">
<link rel="stylesheet" href="/fake_resources/css/mypage/mypage_artist.css">
<script type="text/javascript" src="/fake_resources/js/common.js"></script>
</head>
<body>
<div id="wrap">

<jsp:include page="/WEB-INF/views/header/header_main.jsp"/>

<div class="container">
      <h4 class="sub_title">My Information</h4>
      <div class="info_simul">
        <div class="info_wrapper first">
          <div class="info_left">
            <div class="my_info">
              <form>
                <table class="table_a">
                  <tr>
                    <td>
                      <div class="artist_avatar">
                        <img class="my_info_img" src="${artist.imgPath}" alt="윤라희jpg">
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h3>${artist.name_kor}</h3>
                      <p class="e_name">${artist.name_eng}</p>
                    </td>
                  </tr>
                </table>
              </form>
            </div>
          </div>
          <div class="info_center">
            <div class="my_info mypage">
              <form>
                <table class="table_a">
                  <tr>
                    <td class="a_category">
                    <strong>이메일(아이디)</strong>
                    </td>
                  </tr>
                  <tr>
                    <td class="a_data">
                      ${artist.email}
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
                      ${artist.phone}
                    </td>
                  </tr>
                </table>
              </form>
            </div>
          </div>
          <div class="info_right">
            <div class="my_info mypage">
              <form>
                <table class="table_a">
                  <tr>
                    <td class="a_category">
                      <strong>경력</strong>
                    </td>
                  </tr>
                  <c:forTokens var ="career" items="${artist.career}" delims=";">
                  <tr>
                    <td>
                      ${career}
                    </td>
                  </tr>
                  </c:forTokens>
                </table>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="btn2_group">
        <a href="/arang/mypage/mypage_artist_modify"><button class="btn2 first">내 정보 수정</button></a>
        <a href="/arang/mypage/artist_checkpage"><button class="btn2 first">내 페이지 관리</button></a>
      </div>
      <h4 class="sub_title other">MY ArtWorks</h4>
      <div class="product">
        <div id="product2" class="item_list1">
          <div class="slick_list">
            <div class="slick_trak mypage">
              <div class="item">
                  <div class="artwork_wrap">
                    <a href="../../html_artwork/artwork_focus.html"><img class="artwork" src="../../resources/img/윤라희/윤라희-오브제1_s02.jpg" alt="오브제1" onload="JavaScript:artwork_small_middle(this)"></a>
                  </div>
                <figcaption>
                  <h5>BLOCK (Falling Bluse Brown)</h5>
                  <p>Limited Unique</p>
                </figcaption>
              </div>
              <div class="item">
                  <div class="artwork_wrap">
                    <a href="#"><img class="artwork" src="../../resources/img/윤라희/윤라희-오브제2_s01_fub8Yrj.jpg" alt="오브제2" onload="JavaScript:artwork_small_middle(this)"></a>
                  </div>
                <figcaption>
                  <h5>BLOCK (Falling Bluse Brown)</h5>
                  <p>Limited Unique</p>
                </figcaption>
              </div>
              <div class="item">
                  <div class="artwork_wrap">
                    <a href="#"><img class="artwork" src="../../resources/img/윤라희/윤라희-오브제3_s01_gpLUosS.jpg" alt="오브제3" onload="JavaScript:artwork_small_middle(this)"></a>
                  </div>
                <figcaption>
                  <h5>BLOCK (Falling Bluse Brown)</h5>
                  <p>Limited Unique</p>
                </figcaption>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="btn2_group">
        <a href="./artwork_upload.html"><button class="btn2">작품 등록</button></a>
        <!-- <a href="../html_mypage/artwork_upload.html"><button class="btn2">작품 수정</button></a> -->
        <a href="./artwork_upload.html"><button class="btn2">작품 삭제</button></a>
      </div>
      <!-- 컨택팅 >>  -->
      <div class="container my_gallery2">
        <!-- <h4 class="sub_title other">Contacting</h4> -->
        <div class="board_wrapper">
          <h3 class="sub_title contacting">Contacting</h3>
          <img class="arrow" src="../../resources/img/icon/right.png">
          <div>
            <form>
              <fieldset>
                <div class="field_inner">
                  <label>검색어</label>
                  <input type="text">
                  <a href="#"><button class="board_btn" type="button">검색</button></a>
                </div>
              </fieldset>
            </form>
            <!-- <div class="sequence">
            <p>최신순</p>
          </div> -->
        </div>
        <table class="storage_list mypage first">
          <tr>
            <td>2022-08-25</td>
            <td>오후 01:24</td>
            <td>
              <div class="artist_avatar">
                <a href="../../html_artist/artist_focus.html"><img class="contacting_img" src="../../resources/img/gallerys/4.jpg"></a>
              </div>
            </td>
            <td><a class="name_hover" href="../../html_artist/artist_focus.html">Gallery Sun contemporary</a></td>
            <td>Mapo-gu,Seoul</td>
            <td><p><strong>YET</p></td>
            </tr>
            <tr>
              <td>2022-08-23</td>
              <td>오후 04:32</td>
              <td>
                <div class="artist_avatar">
                  <a href=""><img class="contacting_img" src="../../resources/img/gallerys/3.jpg"></a>
                </div>
              </td>
              <td><a class="name_hover" href="">GALLERY BATON</a></td>
              <td>Dokseodang-ro, Yongsan-gu, Seoul</td>
              <!-- <td>Painter</td> -->
              <td><p><strong>YET</p></td>
              </tr>
              <tr>
                <td>2022-08-23</td>
                <td>오후 12:28</td>
                <td>
                  <div class="artist_avatar">
                    <a href=""><img class="contacting_img" src="../../resources/img/gallerys/6.jpg"></a>
                  </div>
                </td>
                <td><a class="name_hover" href="">Hakgojae Gallery</a></td>
                <td>Samcheong-ro, Jongno-gu, Seoul</td>
                <td><p><strong>YET</p></td>
                </tr>
              </table>
            </div>
          </div>
      <!-- 컨택팅 <<  -->
      <div class="container my_gallery2">
            <!-- <h4 class="sub_title other">Contacting</h4> -->
            <div class="board_wrapper">
              <h3 class="sub_title contacting">Contacting</h3>
              <img class="arrow" src="../../resources/img/icon/left.png">
              <div>
                <form>
                  <fieldset>
                    <div class="field_inner">
                      <label>검색어</label>
                      <input type="text">
                      <a href="#"><button class="board_btn" type="button">검색</button></a>
                    </div>
                  </fieldset>
                </form>
                <!-- <div class="sequence">
                <p>최신순</p>
              </div> -->
            </div>
            <table class="storage_list mypage">
              <tr>
                <td>2022-08-25</td>
                <td>오후 01:24</td>
                <td>
                  <div class="artist_avatar">
                    <a href="../../html_artist/artist_focus.html"><img class="contacting_img" src="../../resources/img/gallerys/2.jpg"></a>
                  </div>
                </td>
                <td><a class="name_hover" href="../../html_artist/artist_focus.html">ARARIO Gallery</a></td>
                <td>Jongno-gu,Seoul</td>
                <td><button type="button">수락</button></td>
                <td><button type="button">거절</button></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </table>
          </div>
        </div>

      <div class="btn2_group">
      	<a href="/arang/mypage/mypage_request_list2"><button class="btn2 first">신청한 아티스트 목록</button></a>
        <a href="/arang/mypage/mypage_artist_modify"><button class="btn2 first">내 정보 수정</button></a>
      	<a href="/arang/mypage/add_artist_info"><button class="btn2 first">내 아티스트정보 입력하기</button></a>
        <a href="/arang/pages/add_artwork"><button class="btn2 first">작품 등록</button></a>
      </div>
    </div>
</div>
</body>
</html>