<!--
작성자: 백정연
페이지이름: planDetail.jsp
페이지설명: 플래너의 상세 내역을 보여주는 페이지
페이지 생성일: 210725
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>플래너 상세 목록</title>
    <link rel="stylesheet" type="text/css" href="_css/mainStyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        // 여러 대표 이미지 중 랜덤으로 1개를 뽑아줌
        $(document).ready(function () {
            $("#btn").click(function () {
                $("#popup").fadeIn();
            });

            $("#popdown").click(function () {
                $("#popup").fadeOut();
            });

            let randomNum = Math.floor(Math.random() * 5) + 1;
            $('.planD-imgbox').children('img').attr('src', '/_image/tour/tour' + randomNum + '.jpg');
        });
    </script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
</head>
<body>
    <!-- header -->
    <div class="planD-header">
        <jsp:include page="../../header.jsp"/>
    </div>
    <!-- // header-->

    <!-- container -->
    <div class="planD-container">

        <!-- 내 프로필 nav -->
        <div class="planD-navbox">
            <ul class="planD-navbox__ul--blue">
                <li class="planD-navbox__li--big">마이 페이지</li>
                <li class="planD-navbox__li--small"><a href="#" class="planD-navbox__a--blue"><img class="planD-navbox__img--small" src="_image/mypage/person.png">&nbsp;  개인 정보</a></li>
                <li class="planD-navbox__li--small"><a href="#" class="planD-navbox__a--blue"><img class="planD-navbox__img--small" src="_image/mypage/planner.png">&nbsp;&nbsp;내 플래너</a></li>
            </ul>
        </div>
        <!-- // 내 프로필 nav-->

        <!-- 플래너쪽 container -->
        <div class="planD-planbox">

            <!-- 플래너 상단 (제목)-->
            <div class="planD-titlebox">
                <div class="planD-imgbox">
                    <img src="_image/tour/tour1.jpg" class="planD-imgbox--img__big">
                        <span class="planD-titledetail">서울 관광명소 도장 찍기</span>
                        <span class="planD-titledays">2021.07.01~2021.07.04 (4일)</span>
                </div>

                <div class="planD-btnbox">

                    <button class="planD-btnbox__button--blue" id="btn">수정</button>
                    <button class="planD-btnbox__button--gray">삭제</button>
                </div>
            </div>
            <!-- // 플래너 상단 (제목) -->

            <!-- 플래너 일정 -->
            <div class="planD-listbox">

                <!-- 플래너 상세 일정 -->
                <%-- 날짜 수만큼 foreach--%>
                <c:forEach begin="1" end="3" var="i">
                    <div class="planD-detailbox">

                        <div class="planD-datebox">
                            <div class="planD-days">DAY ${i}</div>
                            <div class="planD-date">2021.07.01 (월)</div>
                        </div>

                        <%--  해당 날짜의 플랜 갯수만큼--%>
                        <c:forEach begin="1" end="2" var="j">
                            <div class="planD-detail">
                                <div class="planD-detailnumber">
                                    <img class="planD-detailnumber__img--navy" src="_image/num/number${j}.png">
                                </div>

                                <div class="planD-detailplace">
                                    <span class="planD-detailtime__span--small">오전 10:00</span>
                                    <span class="planD-detailplace__span--small">강남역</span>
                                    <span class="planD-detailinfo__span--small">친구들과 맛집 조지기</span>
                                    <div class="planD-detailimg" id="map${i}-${j}"></div>

                                    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb0b3988eb15f5d9ee7b535c89c89b5c"></script>
                                    <script>
                                        /* 지도 생성 */
                                        var container = document.getElementById('map${i}-${j}');
                                        var options = {
                                            center: new kakao.maps.LatLng(37.5461497, 126.9112244),
                                            level: 3
                                        };
                                        var map = new kakao.maps.Map(container, options);

                                        /* 마커 생성 */
                                        var markerPosition  = new kakao.maps.LatLng(37.5461497, 126.9112244);
                                        var marker = new kakao.maps.Marker({
                                            position: markerPosition
                                        });
                                        marker.setMap(map);
                                    </script>
                                </div>
                            </div>
                        </c:forEach>


                    </div>

                </c:forEach>
                <!-- // 플래너 상세 일정-->

            </div>
            <!-- // 플래너 일정 -->

                <!-- 플래너 경로 지도 부분 -->
                <div class="planD-mapbox">
                    <div class="mapbox">

                            <div class="planD-map" id="maplist1"></div>
                            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb0b3988eb15f5d9ee7b535c89c89b5c"></script>
                            <script>
                                var container = document.getElementById('maplist1');
                                var options = {
                                    center: new kakao.maps.LatLng(37.5354902, 126.976431),
                                    level: 9
                                };
                                var map = new kakao.maps.Map(container, options);

                                var polyline = new kakao.maps.Polyline({
                                    map: map,
                                    path: [],
                                    strokeWeight: 3,
                                    strokeColor: '#5882fa',
                                    strokeOpacity: 1,
                                    strokeStyle: 'solid'
                                });

                                /* 지도에 마커 생성 */
                                /* 서울역 마커 */
                                var markerPosition  = new kakao.maps.LatLng(37.5536472, 126.9678003);
                                var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                                    imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                                    imgOptions =  {
                                        spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                                        spriteOrigin : new kakao.maps.Point(0, (0*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                                        offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                                    },
                                    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                                    marker = new kakao.maps.Marker({
                                        position: markerPosition, // 마커의 위치
                                        image: markerImage
                                    });
                                marker.setMap(map);

                                /* 서울역 경로 추가  */
                                var point =  new kakao.maps.LatLng(37.5536472, 126.9678003);
                                var path = polyline.getPath();
                                path.push(point);
                                polyline.setPath(path);

                                /* 강남역 마커 */
                                var markerPosition  = new kakao.maps.LatLng(37.5461497, 126.9112244);
                                var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                                    imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                                    imgOptions =  {
                                        spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                                        spriteOrigin : new kakao.maps.Point(0, (1*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                                        offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                                    },
                                    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                                    marker = new kakao.maps.Marker({
                                        position: markerPosition, // 마커의 위치
                                        image: markerImage
                                    });
                                marker.setMap(map);

                                /* 강남역역 경로 추가 */
                                var point =  new kakao.maps.LatLng(37.5461497, 126.9112244);
                                var path = polyline.getPath();
                                path.push(point);
                                polyline.setPath(path);

                                /* 여의도역 마커 */
                                var markerPosition  = new kakao.maps.LatLng(37.5215737, 126.9221282);
                                var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                                    imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                                    imgOptions =  {
                                        spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                                        spriteOrigin : new kakao.maps.Point(0, (2*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                                        offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                                    },
                                    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                                    marker = new kakao.maps.Marker({
                                        position: markerPosition, // 마커의 위치
                                        image: markerImage
                                    });
                                marker.setMap(map);
                                /* 여의도역 경로 추가 */
                                var point =  new kakao.maps.LatLng(37.5215737, 126.9221282);
                                var path = polyline.getPath();
                                path.push(point);
                                polyline.setPath(path);


                            </script>

                            <div class="planD-map" id="maplist2"></div>
                            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb0b3988eb15f5d9ee7b535c89c89b5c"></script>
                            <script>
                                var container = document.getElementById('maplist2');
                                var options = {
                                    center: new kakao.maps.LatLng(37.5354902, 126.976431),
                                    level: 9
                                };
                                var map = new kakao.maps.Map(container, options);

                                var polyline = new kakao.maps.Polyline({
                                    map: map,
                                    path: [],
                                    strokeWeight: 3,
                                    strokeColor: '#5882fa',
                                    strokeOpacity: 1,
                                    strokeStyle: 'solid'
                                });

                                /* 지도에 마커 생성 */
                                /* 역삼역 마커 */
                                var markerPosition  = new kakao.maps.LatLng(37.5012103, 127.0246572);
                                var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                                    imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                                    imgOptions =  {
                                        spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                                        spriteOrigin : new kakao.maps.Point(0, (0*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                                        offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                                    },
                                    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                                    marker = new kakao.maps.Marker({
                                        position: markerPosition, // 마커의 위치
                                        image: markerImage
                                    });
                                marker.setMap(map);

                                /* 역삼역 경로 추가  */
                                var point =  new kakao.maps.LatLng(37.5012103, 127.0246572);
                                var path = polyline.getPath();
                                path.push(point);
                                polyline.setPath(path);

                                /* 홍대입구역 마커 */
                                var markerPosition  = new kakao.maps.LatLng(37.557527, 126.9222782);
                                var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                                    imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                                    imgOptions =  {
                                        spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                                        spriteOrigin : new kakao.maps.Point(0, (1*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                                        offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                                    },
                                    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                                    marker = new kakao.maps.Marker({
                                        position: markerPosition, // 마커의 위치
                                        image: markerImage
                                    });
                                marker.setMap(map);

                                /* 홍대입구역 경로 추가 */
                                var point =  new kakao.maps.LatLng(37.557527, 126.9222782);
                                var path = polyline.getPath();
                                path.push(point);
                                polyline.setPath(path);

                                /* 여의도역 마커 */
                                var markerPosition  = new kakao.maps.LatLng(37.5215737, 126.9221282);
                                var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                                    imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
                                    imgOptions =  {
                                        spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                                        spriteOrigin : new kakao.maps.Point(0, (2*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                                        offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                                    },
                                    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                                    marker = new kakao.maps.Marker({
                                        position: markerPosition, // 마커의 위치
                                        image: markerImage
                                    });
                                marker.setMap(map);

                                /* 여의도역 경로 추가 */
                                var point =  new kakao.maps.LatLng(37.5215737, 126.9221282);
                                var path = polyline.getPath();
                                path.push(point);
                                polyline.setPath(path);
                            </script>

                            <div class="planD-map" id="maplist3"></div>
                            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb0b3988eb15f5d9ee7b535c89c89b5c"></script>
                            <script>
                                var container = document.getElementById('maplist3');
                                var options = {
                                    center: new kakao.maps.LatLng(37.5215737, 126.9221282),
                                    level: 3
                                };
                                var map = new kakao.maps.Map(container, options);
                            </script>

                        <div class="planD-selectbox">
                            <select id="select_day" class="planD-selectbox__select--day" onchange="mapChange()">
                                <option value="0">DAY1</option>
                                <option value="1">DAY2</option>
                                <option value="2">DAY3</option>
                            </select>
                        </div>
                    </div>

                    <div class="planD-placelistbox">
                        <div class="planD-placelist">
                                <div class="planD-placedetail">
                                    <img src="_image/num/number1.png" class="planD-placedetail__img--navy">
                                    <span class="planD-placedetail__span--small">서울역</span>
                                </div>

                                <div class="planD-placedetail">
                                    <img src="_image/num/number2.png" class="planD-placedetail__img--navy">
                                    <span class="planD-placedetail__span--small">강남역</span>
                                </div>

                                <div class="planD-placedetail">
                                    <img src="_image/num/number3.png" class="planD-placedetail__img--navy">
                                    <span class="planD-placedetail__span--small">여의도역</span>
                                </div>
                        </div>

                        <div class="planD-placelist">
                            <div class="planD-placedetail">
                                <img src="_image/num/number1.png" class="planD-placedetail__img--navy">
                                <span class="planD-placedetail__span--small">역삼역</span>
                            </div>

                            <div class="planD-placedetail">
                                <img src="_image/num/number2.png" class="planD-placedetail__img--navy">
                                <span class="planD-placedetail__span--small" title="홍대입구역">홍대입구역</span>
                            </div>

                            <div class="planD-placedetail">
                                <img src="_image/num/number3.png" class="planD-placedetail__img--navy">
                                <span class="planD-placedetail__span--small">서울역</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // 플래너 경로 지도 부분-->


        </div>
        <!-- // container-->

    </div>
    <!-- // 플래너 디테일-->

    <!-- footer -->
    <div class="planD-footer"></div>
    <!-- // footer -->

    <!-- 플래너 수정 버튼 클릭시 팝업창 -->
    <div class="planD-popupcontainer" id="popup">

        <div class="planD-popbox">

            <!-- 플래너 팝업창 header 부분 -->
            <div class="planD-popheadbox">
                <span class="planD-popheadbox__span--big">플래너 만들기</span>
                <button class="planD-popheadbox__button--big" id="popdown">닫기</button>
            </div>
            <!-- // 플래너 팝업창 header 부분 -->

            <!-- 플래너 팝업창 입력 부분 -->
            <div class="planD-popcontentbox">
                <form action="#" method="post" name="popupFrm" onsubmit="return popupCheck()">

                    <div class="planD-popdetailbox">
                        <span class="planD-popdetailbox__span--big">여행제목</span>
                        <input type="text" name="title" value="#" placeholder="20자 내로 입력해주세요" maxlength="20" class="planD-popdetailbox__input--gray" required>
                    </div>

                    <div class="planD-popdetailbox">
                        <span class="planD-popdetailbox__span--big">여행기간</span>
                        <input type="date" name="f_date" class="planD-popdetailbox__input--date" value="#" required>
                        <span class="planD-popdetailbox__span--small">~</span>
                        <input type="date" name="l_date" class="planD-popdetailbox__input--date" value="#" required>
                    </div>

                    <div class="planD-popdetailbox">
                        <span class="planD-popdetailbox__span--big">설명</span>
                        <input type="text" name="intro" value="#"  placeholder="30자 내로 입력해주세요" maxlength="30" class="planD-popdetailbox__input--gray">
                    </div>

                    <div class="planD-popbtnbox">
                        <input type="submit" class="planD-popbtnbox__input--blue" value="플래너 만들기">
                    </div>

                </form>
            </div>
            <!-- // 플래너 팝업창 입력 부분 -->

        </div>
    </div>
    <!-- // 플래너 수정 버튼 클릭시 팝업창 -->

    <script type="text/javascript" src="_js/mainJs.js"></script>
    <script>
        var slide = document.querySelectorAll(".planD-map");
        var listslides = document.querySelectorAll(".planD-placelist");
        var current = 0;

        function show(n){
            for(var i=0;i<slide.length;i++){
                slide[i].style.display = "none";
            }
            slide[n].style.display = "block";

            for(var j=0;j<listslides.length;j++){
                listslides[j].style.display = "none";
            }
            listslides[n].style.display = "block";
        }
        show(current);
    </script>
</body>
</html>
