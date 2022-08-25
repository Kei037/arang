<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<link rel="stylesheet" href="/fake_resources/css/default/normalize.css">
<link rel="stylesheet" href="/fake_resources/css/default/default.css">
<link rel="stylesheet" href="/fake_resources/css/artist/artist.css">
<link rel="stylesheet" href="/fake_resources/css/main/main.css">
<script type="text/javascript" src="/fake_resources/js/jquery.js"></script>
<script type="text/javascript" src="/fake_resources/js/slidebanner.js"></script>
<script type="text/javascript" src="/fake_resources/js/common.js"></script>
</head>
<body>
  <div id="wrap">
    <jsp:include page="/WEB-INF/views/header/header_main.jsp"/>

<div class="headline top">
      <p>Promising artworks</p>
      <p>Look at the amazing artworks of the new artists of the month.</P>
    </div>
    <div id="slidebanner">
      <div id="carousel-wrap">
        <p id="carousel-prev" class="button"><img src="/fake_resources/img/artworks/btn_prev.png" alt="prev"></p>
        <p id="carousel-next" class="button"><img src="/fake_resources/img/artworks/btn_next.png" alt="next"></p>
        <div id="carousel">
          <!--화면에 보여지는 영역-->
          <div id="carousel-inner">
            <!-- li*4>a[href="#"]>img[src=./img/photo$_thum.jpg] -->
            <ul class="column">
              <li><a href="#"><img src="/fake_resources/img/artworks/1.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/2.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/3.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/4.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/5.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/6.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/7.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/1.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/2.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/3.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/4.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/5.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/6.png" alt=""></a></li>
              <li><a href="#"><img src="/fake_resources/img/artworks/7.png" alt=""></a></li>
              <!-- <li><a href="#"><img src="./img/photo15_thum.jpg" alt=""></a></li>
              <li><a href="#"><img src="./img/photo16_thum.jpg" alt=""></a></li> -->
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- 아티스트섹션 -->
    <div id="artist">
      <form id="artist_form">
        <div class="container artists">
          <div class="sub_page_top">
            <div class="headline">
              <p>Artist of the month</p>
              <p>Artist of the month! Look at their artworks.</P>
            </div>
            <div class="row">
              <div class="col_wrap">
                <div class="col col-1">
                  <div class="artist_info month_artist d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="./artist_focus.html"><img src="/fake_resources/img/윤라희/윤라희.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">Yoon, Ra Hee</span>
                        <span class="genre_tag">Sculptor</span>
                      </div>
                      <div class="second d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                        <button class="like"><img src="/fake_resources/img/icon/like.png" alt="like"></button>
                      </div>
                    </div>
                  </div>
                  <div class="row artwork_wrap">
                    <div class="col">
                      <a href="../html_artwork/artwork_focus.html"><img class="artwork" src="/fake_resources/img/윤라희/윤라희-오브제1_s02.jpg" alt="오브제1" onload="JavaScript:artwork_small(this)"></a>
                    </div>
                    <div class="col">
                      <a href="#"><img class="artwork" src="/fake_resources/img/윤라희/윤라희-오브제2_s01_fub8Yrj.jpg" alt="오브제2" onload="JavaScript:artwork_small(this)"></a>
                    </div>
                    <div class="col">
                      <a href="#"><img class="artwork" src="/fake_resources/img/윤라희/윤라희-오브제3_s01_gpLUosS.jpg" alt="오브제3" onload="JavaScript:artwork_small(this)"></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col_wrap">
                <div class="col col-2">
                  <div class="artist_info month_artist d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/fake_resources/img/김효원/김효원.jpg" alt="김효원jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>김효원</span>
                        <span class="futuraM">Kim, Hyo Won </span>
                        <span class="genre_tag">Painter</span>
                      </div>
                      <div class="second d-flex flex-row">
                        <div>도시정원</div>
                        <button class="like"><img src="/fake_resources/img/icon/like.png" alt="like"></button>
                      </div>
                    </div>
                  </div>
                  <div class="row artwork_wrap">
                    <div class="col">
                      <a href="#"><img class="artwork" src="/fake_resources/img/김효원/painting_1.jpg" alt="painting_1" onload="JavaScript:artwork_small(this)"></a>
                    </div>
                    <div class="col">
                      <a href="#"><img class="artwork" src="/fake_resources/img/김효원/painting_2.jpg" alt="painting_2" onload="JavaScript:artwork_small(this)"></a>
                    </div>
                    <div class="col">
                      <a href="#"><img class="artwork" src="/fake_resources/img/김효원/painting_3.jpg" alt="painting_3" onload="JavaScript:artwork_small(this)"></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>

    <!-- 전시섹션 -->
    <div class="headline">
      <p>EXHIBITIONS</p>
      <p>Enjoy the exhibition of artists!</P>
    </div>
    <div class="exhibition">
      <div class="exhibition_wrapper">
        <div class="exhibition_view">
          <div class="img_wrapper">
            <a href="../html_exhibition/exhibition.html"><img src="/fake_resources/img/exhibition/exhibition2.jpg" alt="exhibition2"></a>
          </div>
          <p>김보희 개인전</p>
          <p class="date">2022.08.20~09.20</p>
        </div>
        <div class="exhibition_view">
          <div class="img_wrapper">
            <a href="../html_exhibition/exhibition.html"><img src="/fake_resources/img/exhibition/exhibition1.jpg" alt="exhibition1"></a>
          </div>
          <p>He was Just a funny Boy</p>
          <p class="date">2022.08.20~09.20</p>
        </div>
        <div class="exhibition_view">
          <div class="img_wrapper">
            <a href="../html_exhibition/exhibition.html"><img src="/fake_resources/img/exhibition/exhibition3.jpg" alt="exhibition3"></a>
          </div>
          <p>유영국 개인전</p>
          <p class="date">2022.08.20~09.20</p>
        </div>
      </div>
    </div>

    <!-- 갤러리섹션 -->
    <div class="headline gallery">
      <p>GALLERYS</p>
      <p>The best place for artists and people to communicate through their artworks.</P>
    </div>
    <div id="artist">
      <form id="artist_form">
        <div class="container gallerys">
          <!-- 아티스트 -->
          <div class="sub_page_context">
            <div class="grid_wrapper">
              <div class="row artist_list">
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="../html_gallery/gallery_focus.html"><img src="/fake_resources/img/gallerys/g1.png" alt="g1"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>ARARIO Gallery</span>
                      </div>
                      <div class="second d-flex flex-row">
                        <div>Jongno-gu,Seoul,Korea</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <a href="../html_gallery/gallery_focus.html"><img src="/fake_resources/img/gallerys/2.jpg" alt="2"></a>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/fake_resources/img/gallerys/jeju2.jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>Jeju museum of contemporary art</span>
                      </div>
                      <div class="second d-flex flex-row">
                        <div>Hangyeong-myeon, Jeju-do</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img src="/fake_resources/img/gallerys/jeju.jpg" alt="g3">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/fake_resources/img/gallerys/g2.png" alt="g2"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>Baudoin Lebon</span>
                      </div>
                      <div class="second d-flex flex-row">
                        <div>Jongno-gu,Seoul,Korea</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img src="/fake_resources/img/gallerys/g2.png" alt="g2">
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </form>
    </div>
    

  </div>
  </div>
</body>
</html>