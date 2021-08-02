<%--
  Created by IntelliJ IDEA.
  User: young
  Date: 2021-07-23
  Time: 오후 5:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AREA DETAIL</title>
</head>
<body>
    <div id="areaDetail-container">
        <!--헤더-->
        <div>
            <jsp:include page="../header.jsp"/>
        </div>

        <div id="areaDetail-content">
            <!--지역/이름-->
            <div id="areaDetail-name">
                <h3><b>광화문</b></h3>
                <p style="background-color: #647C97; color: white; padding: 10px;">경복궁 별빛야행</p>
            </div>

            <!--사진-->
            <div id="areaDetail-img">
                <img src="_image/areaListData/y1.png" width="450" height="400">
            </div>

            <!--정보-->
            <div id="areaDetail-info">
                <div id="areaDetail-info__text">
                    경복궁 소주방에서 전통국악공연을 즐기며 임금님의 수라상을 맛보고,
                    전문가의 해설을 들으며 경복궁 후원으로의 아름다운 야행을 시작한다.
                </div>

                <div id="areaDetail-info__table" style="border: 2px solid; border-color: #647C97; border-radius: 10px;">
                    <table style="color: white">
                        <tr>
                            <th>주소</th>
                            <td>서울특별시 종로구 사직로 161</td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td>02-3210-4806</td>
                        </tr>
                    </table>
                </div>

            </div>

            <!--지도-->
            <div id="areaDetail-map">
                <!--카카오맵 API-->
                <div id="map" style="width:400px;height:250px;"></div>
                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2fa9c95cb7b45c417b83d79bc514d9f1"></script>
                <script>
                    var container = document.getElementById('map');
                    var options = {
                        center: new kakao.maps.LatLng(37.5776087901, 126.9938137563),
                        level: 3
                    };

                    var map = new kakao.maps.Map(container, options);
                </script>
            </div>

        </div>

        <!--푸터-->
        <div>
            <jsp:include page="../footer.jsp"/>
        </div>

    </div>

</body>
</html>
