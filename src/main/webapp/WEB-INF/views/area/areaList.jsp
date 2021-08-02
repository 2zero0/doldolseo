<%--
  Created by IntelliJ IDEA.
  User: young
  Date: 2021-07-23
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AREA LIST</title>
</head>
<body>
<div id="areaList-container">
    <!--헤더-->
    <div>
        <jsp:include page="../header.jsp"/>
    </div>

    <!--지역별 배경사진-->
    <div id="areaList-img">
        <img src="_image/area/ghm.png" width="1200px" height="350px">
    </div>

    <!--네비(카테고리/검색창)-->
    <div id="areaList-nav">
        <!--네비_카테고리-->
        <div id="areaList-nav__cate">
            <ul>
                <li>전체</li>
                <li>축제&행사</li>
                <li>음식</li>
                <li>쇼핑</li>
                <li>엔터테인먼트</li>
            </ul>
        </div>

        <!--네비_검색창-->
        <div id="areaList-nav__search">
            <input id="areaList-nav__search__input" type="text" style="border-color: #499DF5"/>
            <svg style="vertical-align: top; padding-top:15px; margin-left: 30px" xmlns="http://www.w3.org/2000/svg"
                 width="18" height="18" fill="#2671a4" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
            </svg>
        </div>
    </div>

    <div id="areaList-databox">
        <%
            for (int j = 0; j < 2; j++) {
                for (int i = 0; i < 4; i++) {
        %>
            <div class="areaList-data" style="display: inline-block; border: 1pt solid #E0EEFF; width: 290px; text-align: center" >
                <div id="areaList-dataImg" style="display: inline-block;margin: 20px;">
                    <a href="/areaDetail">
                        <img src="_image/areaListData/jongro_3an.png" width="250" height="250" >
                    </a>
                </div>
                <span id="areaList-dataName" style="margin: 0 auto;">
                    <b>갤러리카페 3안</b>
                </span>
            </div>

        <%
            }
        %>
        <br><br><br><br><br><br><br>
        <%
            }
        %>
        <!--페이지-->
        <div id="areaList-dataPage">
            < &nbsp;&nbsp;1 &nbsp;&nbsp;2 &nbsp;&nbsp;3 &nbsp;&nbsp; >
        </div>
    </div>

    <!--푸터-->
    <div>
        <jsp:include page="../footer.jsp"/>
    </div>
</div>
</body>
</html>