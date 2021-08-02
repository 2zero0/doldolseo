<!--
작성자: 김경일
페이지이름: reviewNavibar
페이지설명: 후기게시판 네비게이션 바
페이지 생성일: 21/07/20
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%-- 후기 게시글 목록에 include --%>
<div class="nav-container" style="background-color: #F78181">
    <%-- 제목 --%>
    <div class="nav-titlebox" >
        <span id="nav-titlebox__title" style="color: white">REVIEW</span>
    </div>
    <hr class="line--horizon" style="margin: 0 20px 0 20px;">
    <%-- 네비게이션 리스트 : 광화문, 명동, 홍대, 여의도, 강남, 잠실, 용산, 기타 --%>
    <ul class="nav-list">
        <li class="nav-list__item">
            <a href="#">
                강남
            </a>
        </li>
        <li class="nav-list__item">
            <a href="#">
                광화문
            </a>
        </li>
        <li class="nav-list__item">
            <a href="#">
                명동
            </a>
        </li>
        <li class="nav-list__item">
            <a href="#">
                여의도
            </a>
        </li>
        <li class="nav-list__item">
            <a href="#">
                용산
            </a>
        </li>
        <li class="nav-list__item">
            <a href="#">
                잠실
            </a>
        </li>
        <li class="nav-list__item">
            <a href="#">
                홍대
            </a>
        </li>
        <li class="nav-list__item">
            <a href="#">
                ETC
            </a>
        </li>
    </ul>
    <div id="nav-backimg"><img src="_image/sample_back1.png"></div>
</div>
