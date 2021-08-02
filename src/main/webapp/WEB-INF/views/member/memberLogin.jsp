<!--
작성자: 백정연
페이지이름: memberLogin.jsp
페이지설명: 아이디, 비밀번호 입력 후 로그인을 진행하는 페이지
페이지 생성일: 210720
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="_css/mainStyle.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
    <script type="text/javascript" src="_js/mainJs.js"></script>
    <script>
        window.onload = function(){
            if(getCookie("id")){
                document.getElementById('login_id').value = getCookie("id");
                document.getElementById('remember_id').checked = true;
            }

            function getCookie(Name) { // 쿠키 불러오는 함수
                var search = Name + "=";
                if (document.cookie.length > 0) { // if there are any cookies
                    offset = document.cookie.indexOf(search);
                    if (offset != -1) { // if cookie exists
                        offset += search.length; // set index of beginning of value
                        end = document.cookie.indexOf(";", offset); // set index of end of cookie value
                        if (end == -1)
                            end = document.cookie.length;
                        return unescape(document.cookie.substring(offset, end));
                    }
                }
            }

        }
    </script>
</head>
<body>
    <!-- header  -->
    <div class="memberL-header">
    </div>
    <!-- // header  -->

    <!-- loginForm -->
    <div id="memberL-container">
        <img id="memberL-container__image--small" src="_image/logo.png">

        <form action="#" method="post" name="loginForm" onsubmit="return loginCheck()">
            <div>
                <input id="login_id" class="memberL-container__input--big" type="text" name="id" size="30" placeholder="아이디"> <br />
                <input id="login_pw" class="memberL-container__input--big" type="password" name="password" size="40" placeholder="비밀번호"> <br/>
            </div>

                <label class="memberL-container__label--move">
                    <input id="remember_id" type="checkbox" name="remember_id" value="y"> 아이디 기억하기
                </label>

            <div id="memberL-btncontainer">
                <input type="submit" class="memberL-btncontainer__input-big" value="로그인">
                <input type="button" class="memberL-btncontainer__input-big" value="회원가입" onclick="location.href='http://localhost:8080/memberJ'">
            </div>
        </form>
    </div>
    <!-- // loginForm -->

    <!-- footer  -->
    <div class="memberL-footer">
        <%@ include file="../footer.jsp" %>
    </div>
    <!-- // footer  -->
</body>
</html>
