<!--
작성자: 백정연
페이지이름: memberJoin.jsp
페이지설명: 개인정보 입력 및 프로필 사진을 등록하여 회원가입을 진행하는 페이지
페이지 생성일: 210721
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="_css/mainStyle.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
    <script type="text/javascript" src="_js/mainJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body style="background-color: #f2f2f2;">
    <!-- header -->
    <div id="header" class="memberJ-header">
        <a href="/main" id="memberJ-header__a">
            <img id="logoImg" class="memberJ-header__img--small" src="_image/logo.png">
        </a>
    </div>
    <!-- header -->

    <!-- container -->
    <form action="memberLogin" method="post" enctype="multipart/form-data" name="joinFrm" onsubmit="return joinCheck()">
    <div id="memberJ-container">

        <!-- 아아디, 비밀번호 입력 -->
        <div id="memberJ-idcontainer">
            <h4 class="memberJ-container__h4--big">아이디</h4>
            <input type="text" name="id" id="id" class="memberJ-container__input--big" maxlength="20" pattern="^([a-z0-9]){4,20}$" placeholder="4~20자 영문, 숫자를 사용하세요" onkeyup="idCheck()">
            <input type="hidden" name="check_id">
            <div class="msg" id="validate_id"></div>

            <h4 class="memberJ-container__h4--big">비밀번호</h4>
            <div id="drop">
                <input type="password" class="memberJ-container__input--big" id="memberJ-idcontainer__input--pw" name="password" maxlength="30" onkeyup="pwCheck()">
                <input type="hidden" name="check_pw">
            </div>
            <div class="msg" id="validate_pw"></div>

            <h4 class="memberJ-container__h4--big">비밀번호 재확인</h4>
            <div id="drop2">
                <input type="password" class="memberJ-container__input--big" id="memberJ-idcontainer__input--pw2" name="password2" maxlength="30" onkeyup="pw2Check()">
                <input type="hidden" name="check_pw2" >
            </div>
            <div class="msg" id="validate_pw2"></div>
        </div>
        <!-- // 아아디, 비밀번호 입력 -->

        <!-- 이름, 닉네임, 생년월일,성별 입력-->
        <div id="memberJ-namecontainer">
            <h4 class="memberJ-container__h4--big">이름</h4>
            <input type="text" class="memberJ-container__input--big" name="name" maxlength="20">
            <div class="msg" id="validate_name"></div>

            <h4 class="memberJ-container__h4--big">닉네임</h4>
            <input type="text" class="memberJ-container__input--big" name="nickname" id="nickname" maxlength="20" onkeyup="nickNameCheck()">
            <input type="hidden" name="check_nickname">
            <div class="msg" id="validate_nickname"></div>

            <h4 class="memberJ-container__h4--big">생년월일</h4>
            <div id="birth_wrap">
                <input type="text" class="memberJ-namecontainer__input--blue" name="yy" maxlength="4" placeholder="년(4자)">

                <select id="mm" class="memberJ-namecontainer__birth--blue" name="mm">
                    <option value="">월</option>
                    <option value="01">
                        1
                    </option>
                    <option value="02">
                        2
                    </option>
                    <option value="03">
                        3
                    </option>
                    <option value="04">
                        4
                    </option>
                    <option value="05">
                        5
                    </option>
                    <option value="06">
                        6
                    </option>
                    <option value="07">
                        7
                    </option>
                    <option value="08">
                        8
                    </option>
                    <option value="09">
                        9
                    </option>
                    <option value="10">
                        10
                    </option>
                    <option value="11">
                        11
                    </option>
                    <option value="12">
                        12
                    </option>
                </select>

                <input type="text" class="memberJ-namecontainer__input--blue" name="dd" maxlength="2" placeholder="일">
            </div>
            <div class="msg" id="validate_birth"></div>

            <h4 class="memberJ-container__h4--big">성별</h4>
            <select id="gender" class="memberJ-namecontainer__gender--blue" name="gender">
                <option value="">성별</option>
                <option value="M">남자</option>
                <option value="F">여자</option>
                <option value="U">선택 안함</option>
            </select>
            <div class="msg" id="validate_gender"></div>
        </div>
        <!-- // 이름, 닉네임, 생년월일, 성별  입력-->

        <!-- 프로필 사진 등록 -->
        <div class="memberJ-imgcontainer">
            <h4 class="memberJ-container__h4--big">프로필 사진 (선택)</h4>
            <img id="my_img" class="memberJ-imgcontainer__img-small" src="_image/sample.png">
            <label id="my_img_label" class="memberJ-imgcontainer__label-blue" for="member_img">업로드</label>
            <input type="file" name="member_img" id="member_img" class="memberJ-imgcontainer__input-disappear" onchange="setImg(event);">
        </div>
        <!-- // 프로필 사진 등록 -->

        <!-- 이메일, 전화번호 입력 -->
        <div class="memberJ-emailcontainer">
            <h4 class="memberJ-container__h4--big">이메일</h4>
            <input type="email" class="memberJ-container__input--big" name="email" maxlength="50">
            <div class="msg" id="validate_email"></div>

            <h4 class="memberJ-container__h4--big">전화번호 (선택)</h4>
            <input type="tel" class="memberJ-container__input--big" name="phone" maxlength="30">
        </div>
        <!-- // 이메일, 전화번호 입력 -->

        <!-- 이용약관 체크 여부 -->
        <div class="memberJ-rulecontainer">
            <input type="button" class="memberJ-rulecontainer__button-blue" value="이용방침" onclick="window.open('http://localhost:8080/memberP')">
            <input type="button" class="memberJ-rulecontainer__button-blue" value="가입약관" onclick="window.open('http://localhost:8080/memberR')"> <br/>
            <label class="memberJ-rulecontainer__label--move">
                <input type="checkbox" class="memberJ-container__input--focus" name="check_rule"> 이용약관 체크 여부
                <div class="msg" id="validate_check_rule"></div>
            </label>
        </div>
        <!-- // 이용약관 체크 여부 -->

        <div class="memberJ-buttoncontainer">
            <input type="submit" class="memberJ-buttoncontainer__input--blue" value="회원가입">
        </div>
    </div>
    </form>
    <!-- // container -->

</body>
</html>
