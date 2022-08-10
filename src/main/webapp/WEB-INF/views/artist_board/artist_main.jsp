<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>아티스트페이지</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/default/normalize.css"/>
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/default/default.css"/>
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/artist/artist.css"/>
  <script type="text/javascript" src="/fake_resources/js/jquery.js"></script>
  <script type="text/javascript" src="/fake_resources/js/slidebanner.js"></script>
</head>

<body>
<div id="wrap">
  <jsp:include page="/WEB-INF/views/header/header.jsp"/>
    <!-- 이달의 작가 -->
    <div id="artist">
      <form id="artist_form">
        <div class="container">
          <div class="sub_page_top">
            <h5 class="sub_title">Artist of the month</h5>
            <div class="row">
              <div class="col col-1">
                <div class="artist_info d-flex flex-row">
                  <div class="artist_avatar">
                    <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                  </div>
                  <div class="artist_text">
                    <div class="first">
                      <span>윤라희</span>
                      <span class="futuraM">/ Yoon, Ra Hee</span>
                      <button><span class="futuraM">Sculptor</span></button>
                    </div>
                    <div class="last d-flex flex-row">
                      <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      <div>Korea, 1984</div>
                    </div>
                  </div>
                </div>
                <div class="row artwork_wrap">
                  <div class="col">
                    <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1"></a>
                  </div>
                  <div class="col">
                    <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제2_s01_fub8Yrj.jpg" alt="오브제2"></a>
                  </div>
                  <div class="col">
                    <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제3_s01_gpLUosS.jpg" alt="오브제3"></a>
                  </div>
                </div>
              </div>
              <div class="col col-2">
                <div class="artist_info d-flex flex-row">
                  <div class="artist_avatar">
                    <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                  </div>
                  <div class="artist_text">
                    <div class="first">
                      <span>윤라희</span>
                      <span class="futuraM">/ Yoon, Ra Hee</span>
                      <button><span class="futuraM">Sculptor</span></button>
                    </div>
                    <div class="last d-flex flex-row">
                      <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      <div>Korea, 1984</div>
                    </div>
                  </div>
                </div>
                <div class="row artwork_wrap">
                  <div class="col">
                    <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1"></a>
                  </div>
                  <div class="col">
                    <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제2_s01_fub8Yrj.jpg" alt="오브제2"></a>
                  </div>
                  <div class="col">
                    <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제3_s01_gpLUosS.jpg" alt="오브제3"></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 아티스트 -->
          <div class="sub_page_context">
            <div class="grid_wrapper">
              <h5 class="sub_title">Artists<small>176</small></h5>
              <div class="row artist_list">
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item last">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item last">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col artist_item last">
                  <div class="artist_info d-flex flex-row">
                    <div class="artist_avatar">
                      <a href="#"><img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg"></a>
                    </div>
                    <div class="artist_text">
                      <div class="first">
                        <span>윤라희</span>
                        <span class="futuraM">/ Yoon, Ra Hee</span>
                      </div>
                      <div class="last d-flex flex-row">
                        <div>날 것 그대로의 본질에 우연적 효과를 불어넣다.</div>
                      </div>
                    </div>
                  </div>
                  <div class="banner_wrap">
                    <a href="#">
                      <div class="artwork_banner">
                        <img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1">
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="toolbox">
                <ul class="pagination">
                  <li class="page_item disabled">
                    <a class="page_link_btn" href="#"><i class="go_left"><<</i></a>
                  </li>
                  <li class="page_item">
                    <a class="page_link" href="#">1</a>
                  </li>
                  <li class="page_item">
                    <a class="page_link" href="#">2</a>
                  </li>
                  <li class="page_item">
                    <a class="page_link" href="#">3</a>
                  </li>
                  <li class="page_item">
                    <a class="page_link" href="#">...</a>
                  </li>
                  <li class="page_item">
                    <a class="page_link" href="#">7</a>
                  </li>
                  <li class="page_item disabled">
                    <a class="page_link_btn" href="#"><i class="go_right">>></i></a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

        </div>
      </form>
    </div>

    <!-- 작가 -->

  </div>
</body>

</html>
