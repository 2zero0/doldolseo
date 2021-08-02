<%--
  Created by IntelliJ IDEA.
  User: young
  Date: 2021-07-21
  Time: 오전 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%-- 메인 스타일시트 --%>
    <link href="_css/mainStyle.css" type="text/css" rel="stylesheet">
    <link href="_css/weather-icons.css" type="text/css" rel="stylesheet">
    <link href="_css/weather-icons-wind.css" type="text/css" rel="stylesheet">
    <style>
        html, body {
            font-size: 0;
        }
    </style>
    <meta charset="UTF-8">
    <title>header</title>
</head>
<body>

    <script>
        var apiURI = "http://api.openweathermap.org/data/2.5/weather?q=Seoul,kr&appid=876eb9965cb5694a2644df701fa197dd";
        $.ajax({
            url: apiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function (resp) {
                console.log(resp);
                console.log("현재온도 : " + (resp.main.temp - 273.15));
                console.log("현재습도 : " + resp.main.humidity);
                console.log("날씨 : " + resp.weather[0].main);
                console.log("상세날씨설명 : " + resp.weather[0].description);
                console.log("날씨 이미지 : " + resp.weather[0].icon);
                console.log("바람   : " + resp.wind.speed);
                console.log("나라   : " + resp.sys.country);
                console.log("도시이름  : " + resp.name);
                console.log("구름  : " + (resp.clouds.all) + "%");

                var text = resp.weather[0].description;
                var tmp = Math.floor(resp.main.temp - 273.15);
                var imgSrc = resp.weather[0].icon;

                document.getElementById("weatherText").append(text);
                document.getElementById("weatherTmp").append(tmp + "ºc");
                document.getElementById("weatherImg").src = "http://openweathermap.org/img/wn/" + imgSrc + "@2x.png";
            }
        })
    </script>

    <!--미니 헤더 : 로고, 검색, 날씨위젯-->
    <div id="headerM-container">
        <!--로고-->
        <div id="headerM-logoBox">
            <img src="_image/logo/l2.png" style="width: 50px; height: 40px; margin: 4px 0 9px 0 ;">
            <img src="_image/logo/l3-1.png" style="width: 70px; height: 40px;">
        </div>

        <!--검색창-->
        <div id="headerM-searchBox">
            <input type="text">
            <button>
                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="white" class="bi bi-search"
                     viewBox="0 0 15 15">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                </svg>
            </button>
        </div>

        <!--날씨-->
        <div id="headerM-weatherBox">
            <div id="headerM-weatherBox__area">
                <h4>Seoul,KR</h4>
            </div>
            <div id="headerM-weatherBox__icon">
                <img id="weatherImg" src="#">
            </div>
            <div id="weatherText" class="headerM-weatherBox__text">
                <!--날씨 설명 들어가는 란-->
            </div>
            <div id="weatherTmp" class="headerM-weatherBox__tmp">
                <i class="wi wi-thermometer"></i>
                <!--기온 들어가는 란-->
            </div>
        </div>
    </div>

    <!-- 헤더 -->
    <div id="header_container">
        <!--로고1-->
        <div id="header-img__logo1">
            <img src="_image/logo/001-4.png" width="145px" height="130px" alt="logo">
        </div>

        <!--로고2-->
        <div id="header-img__logo2">
            <a href="main">
                <img src="_image/logo/002-7.png" width="160px" height="85">
            </a>
        </div>

        <!--메인 네비바-->
        <div id="header-nav">
            <ul>
                <!--onmouseover="document.getElementById('header-nav__area').style.display='block';" onmouseout="document.getElementById('header-nav__area').style.display='none';"
                -->
                <li onmouseover="document.getElementById('header-nav__area').style.display='block';">
                    <a href="#">
                        <span onmouseover="this.style.color='#E0EEFF';"
                              onmouseout="this.style.color='white';">AREA</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span onmouseover="this.style.color='#F4B7B4';"
                              onmouseout="this.style.color='white';">REVIEW</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span onmouseover="this.style.color='#FF8000';"
                              onmouseout="this.style.color='white';">CREW</span>
                    </a>
                </li>
            </ul>
        </div>

        <!--로그인 전(login, join)버튼
        <div id="header-button">
            <button id="header-button__b1" type="button">LOGIN</button>
            <button id="header-button__b2" type="button">JOIN</button>
        </div>
        -->

        <!--미니프로필-->
            <jsp:include page="mypage/mypageIntro.jsp"/>

        <!--지역 네비바(AREA에 마우스 오버시 출력)-->
        <div id="header-nav__area">
            <ul onmouseover="document.getElementById('header-nav__area').style.display='block';"
                onmouseout="document.getElementById('header-nav__area').style.display='none';">
                <li><a href="/areaList">광화문</a></li>
                <li><a href="#">명동</a></li>
                <li><a href="#">홍대</a></li>
                <li><a href="#">여의도</a></li>
                <li><a href="#">강남</a></li>
                <li><a href="#">잠실</a></li>
                <li><a href="#">용산</a></li>
                <li><a href="#">etc</a></li>
            </ul>
        </div>
    </div>

</body>
</html>
