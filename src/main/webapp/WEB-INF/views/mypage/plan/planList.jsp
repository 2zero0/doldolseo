<!--
작성자: 백정연
페이지이름: planList.jsp
페이지설명: 사용자가 작성한 플래너 목록을 보여주는 페이지
페이지 생성일: 0210724
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>플래너 목록</title>
    <link rel="stylesheet" type="text/css" href="_css/mainStyle.css">
    <script type="text/javascript" src="_js/mainJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#btn").click(function () {
                $("#popup").fadeIn();
            });

            $("#popdown").click(function () {
                $("#popup").fadeOut();
            });
        });
    </script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
</head>
<body>
<!-- header -->
<div class="planL-header">
    
</div>
<!-- // header-->

<!-- 마이페이지 container -->
<div class="planL-container">

    <!-- 마이페이지 네비바 -->
    <div class="planL-navbox">
        <ul class="planL-navbox__ul--blue">
            <li class="planL-navbox__li--big">마이 페이지</li>
            <li class="planL-navbox__li--small"><a href="#" class="planL-navbox__a--blue"><img class="planL-navbox__img--small" src="_image/mypage/person.png">&nbsp;  개인 정보</a></li>
            <li class="planL-navbox__li--small"><a href="#" class="planL-navbox__a--blue"><img class="planL-navbox__img--small" src="_image/mypage/person.png">&nbsp;&nbsp;내 플래너</a></li>
        </ul>
    </div>
    <!-- // 마이페이지 네비바-->


    <!-- 플래너 목록 container -->
    <div class="planL-planbox">

        <!-- 플래너 목록 제목 -->
        <div class="planL-titlebox">
            <span class="planL-titlebox--span__big">내 플래너</span>
            <button class="planL-titlebox--button__blue" id="btn">플래너 작성</button>
        </div>
        <!-- // 플래너 목록 제목-->

        <!-- 플래너 목록 시작 -->
        <div class="planL-listbox">

            <!-- varitems로 변경 후 데이터 가져와서 뿌릴 예정, 플래너 각 고유 id 필요하기에 플래너 번호 필수 ! -->
            <c:forEach begin="1" end="9" var="i">
                <div class="planL-detailbox">

                    <div class="planL-detailmap" >
                        <div class="planL-map" id="map${i}" onclick="location.href='#'" ></div> <!-- 플래너 상세 페이지로 이동하는 경로 -->
                    </div>

                    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb0b3988eb15f5d9ee7b535c89c89b5c"></script>
                    <script>
                        /* 지도 생성 */
                        var container = document.getElementById('map${i}');

                        var options = {
                            center: new kakao.maps.LatLng(37.5354902, 126.976431),
                            level: 9
                        };

                        var map = new kakao.maps.Map(container, options);

                        /* 폴리라인 생성 */
                        var polyline = new kakao.maps.Polyline({
                            map: map,
                            path: [],
                            strokeWeight: 3,
                            strokeColor: '#5882fa',
                            strokeOpacity: 1,
                            strokeStyle: 'solid'
                        });

                        /*for문 생성 */

                        /* 지도에 마커 생성 */
                        /* 서울역 마커 */
                        var markerPosition  = new kakao.maps.LatLng(37.5536472, 126.9678003);
                        var marker = new kakao.maps.Marker({
                            position: markerPosition
                        });
                        marker.setMap(map);

                        /* 서울역 경로 추가  */
                        var point =  new kakao.maps.LatLng(37.5536472, 126.9678003);
                        var path = polyline.getPath();
                        path.push(point);
                        polyline.setPath(path);

                        /* 강남역 마커 */
                        var markerPosition  = new kakao.maps.LatLng(37.5461497, 126.9112244);
                        var marker = new kakao.maps.Marker({
                            position: markerPosition
                        });
                        marker.setMap(map);

                        /* 강남역역 경로 추가 */
                       var point =  new kakao.maps.LatLng(37.5461497, 126.9112244);
                        var path = polyline.getPath();
                        path.push(point);
                        polyline.setPath(path);

                        /* 여의도역 마커 */
                        var markerPosition  = new kakao.maps.LatLng(37.5215737, 126.9221282);
                        var marker = new kakao.maps.Marker({
                            position: markerPosition
                        });
                        marker.setMap(map);

                        /* 여의도역 경로 추가 */
                        var point =  new kakao.maps.LatLng(37.5215737, 126.9221282);
                        var path = polyline.getPath();
                        path.push(point);
                        polyline.setPath(path);

                    </script>

                    <div class="planL-detailinfo">
                        <span class="planL-detailinfo__span--date">2021.07.10</span>
                        <span class="planL-detailinfo__span--dday">맛집 다 부셔 !!!</span>
                        <span class="planL-detailinfo__span--days">3DAYS</span>
                        <button onclick="window.location.href='#'" class="planL-detailinfo__button--blue">삭제</button>
                    </div>

                </div>
            </c:forEach>

        </div>
        <!-- // 플래너 목록 시작-->

    </div>
    <!-- // 플래너 목록 container-->

</div>
<!-- // 마이페이지 container-->

<!-- 플래너 작성 버튼 클릭시 팝업창 -->
<div class="planL-popupcontainer" id="popup">

    <div class="planL-popbox">

        <!-- 플래너 팝업창 header 부분 -->
        <div class="planL-popheadbox">
            <span class="planL-popheadbox__span--big">플래너 만들기</span>
            <button class="planL-popheadbox__button--big" id="popdown">닫기</button>
        </div>
        <!-- // 플래너 팝업창 header 부분 -->

        <!-- 플래너 팝업창 입력 부분 -->
        <div class="planL-popcontentbox">
            <form action="#" method="post" name="popupFrm" onsubmit="return popupCheck()">

                <div class="planL-popdetailbox">
                    <span class="planL-popdetailbox__span--big">여행제목</span>
                    <input type="text" name="title" placeholder="20자 내로 입력해주세요" maxlength="20" class="planL-popdetailbox__input--gray" required>
                </div>

                <div class="planL-popdetailbox">
                    <span class="planL-popdetailbox__span--big">여행기간</span>
                    <input type="date" name="f_date" class="planL-popdetailbox__input--date" required>
                    <span class="planL-popdetailbox__span--small">~</span>
                    <input type="date" name="l_date" class="planL-popdetailbox__input--date" required>
                </div>

                <div class="planL-popdetailbox">
                    <span class="planL-popdetailbox__span--big">설명</span>
                    <input type="text" name="intro" placeholder="30자 내로 입력해주세요" maxlength="30" class="planL-popdetailbox__input--gray" value="">
                </div>

                <div class="planL-popbtnbox">
                    <input type="submit" class="planL-popbtnbox__input--blue" value="플래너 만들기">
                </div>

            </form>
        </div>
        <!-- // 플래너 팝업창 입력 부분 -->

    </div>
</div>
<!-- // 플래너 작성 버튼 클릭시 팝업창 -->

<!-- footer -->
<div class="planL-footer"></div>
<!-- // footer -->
</body>
</html>
