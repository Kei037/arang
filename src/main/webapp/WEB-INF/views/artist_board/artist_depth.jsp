<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>아티스트상세페이지</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/default/normalize.css"/>
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/default/default.css"/>
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/artist/artist_focus.css"/>
  <script type="text/javascript" src="/fake_resources/js/jquery.js"></script>
  <script type="text/javascript" src="/fake_resources/js/slidebanner.js"></script>
</head>

<body>
  <div id="wrap">
    <jsp:include page="/WEB-INF/views/header/header.jsp"/>
    <!-- 아티스트상세페이지 -->
    <div id="artist">
      <div id="artist_detail">
        <div class="container">
          <div class="detail_wrapper d-flex">
            <div class="side_block">
              <div class="artist_info">
                <button><span class="futuraM">Sculptor</span></button>
                <h3>윤라희</h3>
                <p class="e_name">Yoon, Ra Hee</p>
                <p class="born">Korea, 1984</p>
                <div class="artist_avatar">
                  <img src="/upload_img/artist/rahee/rahee.jpg" alt="윤라희jpg">
                </div>
              </div>
            </div>
            <div class="content_block">
              <div class="review">
                <h2>날 것 그대로의 본질에 우연적 효과를 불어넣다.</h2>
                <p>윤라희 작가는 서울에서 활동하는 디자이너이자 아티스트이다. 금속, 섬유, 도자, 목공을 아우르는 넓은 영역의 공예를 전공한 뒤, 2017년에 스튜디오를 열어 본격적인 작품 활동을 시작하였다. 그녀는 특유의 섬세함으로 작품에 고유한 성격을 부여한다. 재료, 날 것 그대로의 본질에 우연적 효과를 불어 넣어 불규칙하면서 솔직한 방식으로 결과를 드러낸다. 주 소재로 몰두하고 있는 ‘아크릴’이라는 소재를 다루는 시간
                  속에서 작가는 소재의 역사, 특정 이미지로 인식되어진 명사로서의 ‘아크릴’은 잊어버린 상태이다. ‘진하게 스며들게 하다’, ‘미묘하게 굴절시키다’, ‘단순하게 중첩하다.’ 등처럼 재료를 다루면서 느껴지는 형용사와 행동되는 동사의 조합에 집중하고, 그 안에 담긴 은유와 이미지를 자신만의 방식으로 해석하는 작업을 선보이고 있다. 윤라희 작가의 모든 작업은 작가의 손으로부터 한국의 소규모 공방 및 특별한 엔지니어들과의
                  긴밀한 협업을 거쳐, 심도 깊은 아름다움을 지닌 오브제로 완성되고 있다. 다양한 분야의 경계를 넘나드는 작품은 전시 뿐만 아니라 국내외 기업, 스튜디오들과의 다채로운 협업을 이어가고 있다.</p>
                <p><br></p>
                <p>
                  <img src="/upload_img/artist/rahee/artist_focus_main.jpg" alt="artist_main">
                </p>
              </div>
              <div class="product">
                <h4>ArtWork</h4>
                <div id="product2" class="item_list1">
                  <div class="slick_list">
                    <div class="slick_trak">
                      <div class="item">
                          <div class="artwork_wrap">
                            <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제1_s02.jpg" alt="오브제1"></a>
                          </div>
                        <figcaption>
                          <h5>BLOCK (Falling Bluse Brown)</h5>
                          <p>Limited Unique</p>
                        </figcaption>
                      </div>
                      <div class="item">
                          <div class="artwork_wrap">
                            <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제2_s01_fub8Yrj.jpg" alt="오브제2"></a>
                          </div>
                        <figcaption>
                          <h5>BLOCK (Falling Bluse Brown)</h5>
                          <p>Limited Unique</p>
                        </figcaption>
                      </div>
                      <div class="item">
                          <div class="artwork_wrap">
                            <a href="#"><img class="artwork" src="/upload_img/artist/rahee/윤라희-오브제3_s01_gpLUosS.jpg" alt="오브제3"></a>
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
            </div>
            <div class="side_block">
              <div class="a_list">
                <h3>추천작가</h3>
                <ul>
                  <li>
                    <a href="#">신수희</a>
                  </li>
                  <li>
                    <a href="#">최선호</a>
                  </li>
                </ul>
              </div>
              <div class="a_banner">
                <h3>이달의 전시</h3>
                <a href="#"><img class="exhibition_banner" src="/upload_img/banner/김선배너.jpg" alt="exhibition_banner"></a>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</body>

</html>
