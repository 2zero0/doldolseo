<%--
  Created by IntelliJ IDEA.
  User: young
  Date: 2021-07-20
  Time: 오후 3:26
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="_css/mainStyle.css" type="text/css" rel="stylesheet">
    <link href="_css/weather-icons.css" type="text/css" rel="stylesheet">
    <link href="_css/weather-icons-wind.css" type="text/css" rel="stylesheet">

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $.fn.maphilight.defaults = {
                fill: true,
                fillColor: '000000',
                fillOpacity: 0.2,
                stroke: true,
                strokeColor: '495c75',
                strokeOpacity: 1,
                strokeWidth: 1.2,
                fade: true,
                alwaysOn: false
            }
            $('.map').maphilight();
        });
    </script>

    <title>MAIN</title>
</head>
<body>
    <!--헤더-->
    <div>
        <jsp:include page="header.jsp"/>
    </div>
    <div id="main_container">

        <!--배경사진-->
        <div id="main_img--seoul">
            <img src="_image/seoul/seoul2.png" width="1600px;" height="500px;">
        </div>

        <hr style=" width:100%; color:#bac8d9; margin-top: 40px">

        <!--추천코스-->
        <div id="main_bestcourse">
            <p>BEST COURSE</p>
            <svg onclick="convertBeforeImg()" xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="#495c75"
                 style="vertical-align: top; padding-top: 80px" class="bi bi-caret-left" viewBox="0 0 16 16">
                <path d="M10 12.796V3.204L4.519 8 10 12.796zm-.659.753-5.48-4.796a1 1 0 0 1 0-1.506l5.48-4.796A1 1 0 0 1 11 3.204v9.592a1 1 0 0 1-1.659.753z"></path>
            </svg>
            <img id="img1" src="_image/testdol/dol1.png" width="300px" height="250px">
            <img id="img2" src="_image/testdol/dol2.png" width="300px" height="250px"
                 style="margin-left: 40px; margin-right: 40px;">
            <img id="img3" src="_image/testdol/dol3.png" width="300px" height="250px">
            <svg onclick="convertAfterImg()" xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="#495c75"
                 style="vertical-align: top; padding-top: 80px" class="bi bi-caret-right" viewBox="0 0 16 16">
                <path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"></path>
            </svg>
        </div>

        <hr style=" width:100%; color:#bac8d9; margin-top: 40px">

        <!--지도-->
        <div id="main_map--text">
            <p>SEOUL AREA</p>
        </div>
        <div id="main_map">
            <img class="map" src="_image/seoul/map-fi-c-1.png" usemap="#image-map" alt="map"/>
            <map name="image-map">
                <area target="" alt="광화문" title="광화문" href="#" coords="337,150,58" shape="circle">
                <area target="" alt="홍대" title="홍대" href="#" coords="350,260,52" shape="circle">
                <area target="" alt="강남" title="강남" href="#" coords="510,400,51" shape="circle">
                <area target="" alt="여의도" title="여의도" href="#" coords="225,300,62" shape="circle">
                <area target="" alt="잠실" title="잠실" href="#" coords="615,350,52" shape="circle">
                <area target="" alt="명동" title="명동" href="#" coords="460,156,420,300" shape="rect">
                <area target="" alt="강북" title="강북" href="#" coords="480,77,54" shape="circle">
            </map>
        </div>

        <hr style=" width:100%; color:#bac8d9; margin-top: 40px">

        <!--인기크루-->
        <div id="main_crew">
            <div>
                <div id="main_crew--text">
                    <div id="main_crew--text1">
                        <p style="border: 1px solid; background-color: #5882FA; color: white; padding: 10px;">BEST
                            CREW</p>
                    </div>

                    <div id="main_crew--text2">
                        <p style="border: 1px solid; background-color: #5882FA; color: white; padding: 10px;">BEST CREW
                            POST</p>
                    </div>
                </div>
            </div>

            <div id="main_crew--container">
                <div id="main_crew--bc">
                    <div>
                        <svg id="prev" xmlns="http://www.w3.org/2000/svg"
                             style="display: inline-block; vertical-align: top; margin-top: 110px;" width="50"
                             height="50" fill="#495c75" class="bi bi-caret-left-fill" viewBox="0 0 16 16">
                            <path d="m3.86 8.753 5.482 4.796c.646.566 1.658.106 1.658-.753V3.204a1 1 0 0 0-1.659-.753l-5.48 4.796a1 1 0 0 0 0 1.506z"></path>
                        </svg>

                        <div id="main_crew--bc--photo">
                            <img src="_image/crewtest/dance.png" width="230px" height="200px" alt="crew_logo">
                            <img src="_image/crewtest/1.png" width="230px" height="200px" alt="crew_logo">
                            <img src="_image/crewtest/2.png" width="230px" height="200px" alt="crew_logo">
                            <img src="_image/crewtest/3.png" width="230px" height="200px" alt="crew_logo">
                            <img src="_image/crewtest/4.png" width="230px" height="200px"alt="crew_logo">
                        </div>

                        <svg id="next" xmlns="http://www.w3.org/2000/svg"
                             style="display: inline-block; vertical-align: top; margin-top: 110px;" width="50"
                             height="50" fill="#495c75" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
                            <path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z"></path>
                        </svg>
                    </div>
                    <p style="font-family: nanumB; font-size: 1.1em; color: #647C97"><B>돌고래와춤을</B></p>
                </div>

                <div id="main_crew--bcp">
                    <div id="main_crew--bcp--table">
                        <table width="600" height="250" style="border-collapse: collapse">
                            <thead>
                            <tr height="30"
                                style="text-align:center; padding: 10px; color: white; font-size: 1em; background-color: #1b3067;">
                                <th>CREW</th>
                                <th>CATEGORY</th>
                                <th>TITLE</th>
                                <th>WRITER</th>
                            </tr>
                            </thead>
                            <tbody style="text-align: center; font-family: nanumB; font-size: 1em;">
                            <tr>
                                <td>돌고래와춤을</td>
                                <td>맛집</td>
                                <td><a href="#"><b>애완 돌고래 동반 가능한 맛집 리스트</b></a></td>
                                <td>young2</td>
                            </tr>
                            <tr>
                                <td>청사모</td>
                                <td>쇼핑</td>
                                <td><a href="#"><b>청바지도 감성이 있다구요</b></a></td>
                                <td>kki0829</td>
                            </tr>
                            <tr>
                                <td>인생한방</td>
                                <td>자유</td>
                                <td><a href="#"><b>찐 명당 알려준다 드루와</b></a></td>
                                <td>gogojy</td>
                            </tr>
                            <tr>
                                <td>멍멍멍</td>
                                <td>자유</td>
                                <td><a href="#"><b>강아지 팔자가 좋다는건 옛말</b></a></td>
                                <td>bboong</td>
                            </tr>
                            <tr>
                                <td>freeflux</td>
                                <td>자유</td>
                                <td><a href="#"><b>이모티콘 모음입니다..m^_^m</b></a></td>
                                <td>kkh123</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!--푸터-->
        <div>
            <jsp:include page="footer.jsp"/>
        </div>
    </div>
    <script type="text/javascript" src="_js/mainUtil.js"></script>
</body>
</html>
