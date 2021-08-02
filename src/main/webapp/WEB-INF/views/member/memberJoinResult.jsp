<!--
작성자: 백정연
페이지이름: memberJoinResult.jsp
페이지설명: 회원가입 처리 성공 여부에 대해 알려주는 페이지
페이지 생성일: 210722
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 완료</title>
    <link rel="stylesheet" type="text/css" href="_css/mainStyle.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
</head>
<body>
    <!-- -->
    <div class="header"></div>
    <!-- -->

    <!-- -->
    <div class="memberJR-container">
        <p class="memberJR-container__p1-bold">환영합니다!</p>
        <p class="memberJR-container__p2-bold">
            ${member.nickname}님, 회원가입을 축하합니다. <br />
                ${member.nickname}님의 새로운 아이디는 ${member.id}입니다.
        </p>
        <p>
            돌고돌아서울은 항상 회원님들의 입장에서<br />
            보다 좋은 서비스를 받을 수 있도록 노력하겠습니다.<br />
            감사합니다 :D
        </p>
        <button class="memberJR-container__button-blue" onclick="#">메인으로</button>
    </div>
    <!-- -->

    <!-- -->
    <div class="footer"></div>
    <!-- -->
</body>
</html>
