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
  <link rel="stylesheet" type="text/css" href="/fake_resources/css/swiper/swiper.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
  <script type="text/javascript" src="/fake_resources/js/jquery.js"></script>
  <script type="text/javascript" src="/fake_resources/js/common.js"></script>
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
                <button><span class="futuraM">${artistInfo.genre}</span></button>
                <h3>${artistInfo.name_kor}</h3>
                <p class="e_name">${artistInfo.name_eng}</p>
                <p class="born">1984</p>
                <div class="artist_avatar">
                  <img src="${artistInfo.imgPath}">
                </div>
              </div>
            </div>
            <div class="content_block">
              <div class="review">
                <h2>${artistInfo.title}</h2>
                <p>${artistInfo.description}</p>
                <p><br></p>
                <p>
                  <img src="${artistInfo.infoImgPath}" alt="artist_main">
                </p>
              </div>
              <div class="product">
                <h4>ArtWork</h4>
                  <div class="slick_list swiper mySwiper">
                    <div class="slick_trak swiper-wrapper">
                    <c:forEach var="artwork" items="${artworkList}">
                      <div class="item swiper-slide">
                          <div class="artwork_wrap" style="margin: text-align: center;">
                            <a href="/arang/artwork_board/artwork_info?id=${artwork.artistId}&wid=${artwork.wid}">
                            <img class="artwork" src="${artwork.artworkImgPath}" onload="JavaScript:artwork_middle(this)"></a>
                          </div>
                        <figcaption>
                          <h5>${artwork.name}</h5>
                          <p>${artwork.technique}</p>
                        </figcaption>
                      </div>
                      </c:forEach>
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
 

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
    	autoplay: {
    		  delay: 2000,
    		  disableOnInteraction: false,
    		},
        slidesPerView: 3,
        spaceBetween: 10,
        slidesOffsetBefore: 23,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
      
   // 이미지 틀에 맞추기
      function artwork_large(imgFile) {
        var imgWidth = imgFile.width;
        var imgHeight = imgFile.height;
        console.log(imgWidth);
        console.log(imgHeight);
        var maxImgWidth = 600;
        var maxImgHeight = 600;

        if (imgWidth > maxImgWidth || imgHeight > maxImgHeight) {
          imgFile.style.maxWidth="600px";
          imgFile.style.maxHeight="600px";
        }
        else if (imgWidth < maxImgWidth || imgHeight < maxImgHeight) {
          imgFile.style.minWidth="600px";
          imgFile.style.minHeight="600px";
        }
      }


      function artwork_middle(imgFile) {
        var imgWidth = imgFile.width;
        var imgHeight = imgFile.height;
        console.log(imgWidth);
        console.log(imgHeight);
        var maxImgWidth = 255;
        var maxImgHeight = 255;

        if (imgWidth > maxImgWidth || imgHeight > maxImgHeight) {
          imgFile.style.maxWidth="255px";
          imgFile.style.maxHeight="255px";
        }
        else if (imgWidth < maxImgWidth || imgHeight < maxImgHeight) {
          imgFile.style.minWidth="255px";
          imgFile.style.minHeight="255px";
        }
      }

      function artwork_small_middle(imgFile) {
      	console.log("test");
        var imgWidth = imgFile.width;
        var imgHeight = imgFile.height;
        console.log(imgWidth);
        console.log(imgHeight);
        var maxImgWidth = 218;
        var maxImgHeight = 218;

        if (imgWidth > maxImgWidth || imgHeight > maxImgHeight) {
          imgFile.style.maxWidth="218px";
          imgFile.style.maxHeight="218px";
        }
        else if (imgWidth < maxImgWidth || imgHeight < maxImgHeight) {
          imgFile.style.minWidth="218px";
          imgFile.style.minHeight="218px";
        }
      }


      function artwork_small(imgFile) {
        var imgWidth = imgFile.width;
        var imgHeight = imgFile.height;
        console.log(imgWidth);
        console.log(imgHeight);
        var maxImgWidth = 195;
        var maxImgHeight = 195;

        if (imgWidth > maxImgWidth || imgHeight > maxImgHeight) {
          imgFile.style.maxWidth="195px";
          imgFile.style.maxHeight="195px";
        }
        else if (imgWidth < maxImgWidth || imgHeight < maxImgHeight) {
          imgFile.style.minWidth="195px";
          imgFile.style.minHeight="195px";
        }
      }

      //like 클릭
      var likeClick = 0;
        function toggleImg() {
          if ( likeClick == 0 ) {
          document.getElementById("img").src="../resources/img/icon/like_2.png";
          likeClick = 1;
          console.log("heart1");

        }else {
          document.getElementById("img").src="../resources/img/icon/like.png";
          likeClick = 0;
          console.log("heart2");
        }
      }

    </script>
  
  
</body>

</html>
