<%--
  Created by IntelliJ IDEA.
  User: young
  Date: 2021-07-23
  Time: 오전 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>미니프로필</title>
</head>
<body>
    <!--미니프로필-->
    <div id="header-miniprofile">
        <div id="header-miniprofileBox">
            <div id="header-miniprofile__photo">
                <img src="_image/testdol/dolphin.png">
            </div>
            <div id="header-miniprofile__info">
                <span style="color:#37FFEB;" >이영</span> 님 안녕하세요
                <br>
                <span style="color:#37FFEB;"> doldol2</span>
            </div>

        <%-- 버튼 박스 : 로그아웃, 마이 페이지 --%>
        <div id="header-miniprofile__button">
            <button type="button">LOGOUT</button>
            <button type="button">MYPAGE</button>
        </div>
        </div>
    </div>


</body>
</html>
