<!--
작성자: 김경일
페이지이름: crewBoardList.jsp
페이지설명: 크루활동게시판 - 글목록
페이지 생성일: 21/07/28
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>크루 활동 게시판</title>

    <%-- 메인 스타일 시트 --%>
    <link href="_css/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
    <%-- 헤더 --%>
    <jsp:include page="../../header.jsp"/>

    <section class="crew-mainContainer" style="height: 1000px;">
        <%-- 크루 네비게이션 : 공통 --%>
        <nav class="crew-navi" style="width: 1100px">
            <span class="crew-navi__btn">크루활동</span>
            <span class="crew-navi__btn">크루목록</span>
            <button id="crew-navi__btn--mycrew" class="crew-button">My Crew</button>
        </nav>

        <%-- 상단 제목,드릴다운 : 공통 --%>
        <div class="crew-topContainer" style="width: 1100px">
            <%-- 제목 --%>
            <div class="common-top__title" style="color: #FAAC58">
                크루 활동
            </div>
            <%-- 게시판 드릴다운 --%>
            <span class="common-top__drilldownbox">
                    <a href="#" style="color: #FF8000;">크루 게시판</a>
                    <span> > </span>
                    <a href="#">크루 활동</a>
            </span>
        </div>

        <%-- 크루활동 게시판 네비 바 : 전체/맛집/쇼핑/문화/자유 --%>
        <div class="cBoard-nav">
            <a href="#">전체</a>
            <a href="#">맛집</a>
            <a href="#">쇼핑</a>
            <a href="#">문화</a>
            <a href="#">자유</a>
        </div>

        <%-- 상단 정렬버튼 --%>
        <div class="crew-topContainer__sub" style="width: 1100px; top: 20px">
            <div class="crew-topContainer__subBtnbox" style="text-align: left;">
                <button class="crew-button">크루 전체</button>
                <button class="crew-button">내 크루만</button>
            </div>
            <button id="cBoardL-btn--write" class="crew-button">글쓰기</button>
        </div>

        <table id="cBoardL-list">
            <tr class="list--header" style="background-color: #FF8000">
                <td>크루명</td>
                <td>카테고리</td>
                <td>제목</td>
                <td>닉네임</td>
                <td>등록일</td>
                <td>조회수</td>
            </tr>
            <%-- 샘플 데이터 - 추후 반복 처리 --%>
            <tr class="list--item">
                <td>새튀단</td>
                <td>맛집</td>
                <td>눈을 맞춰 새우를 튀겨</td>
                <td>새튀바사삭</td>
                <td>2021-07-21</td>
                <td>1234</td>
            </tr>
            <tr class="list--item">
                <td>청사모</td>
                <td>자유</td>
                <td>청청입고 면접본 후기</td>
                <td>청자켓사나이</td>
                <td>2021-07-21</td>
                <td>1244</td>
            </tr>
            <tr class="list--item">
                <td>술고래클럽</td>
                <td>자유</td>
                <td>코딩후엔 역시 소주뿌시기죠</td>
                <td>돌고래는술고래</td>
                <td>2021-07-21</td>
                <td>1244</td>
            </tr>
            <%-- 샘플 데이터 - 추후 반복 처리 --%>
        </table>

        <%-- 페이지네이션 및 검색창--%>
        <div id="cBoardL-container--bottom">

            <%-- 페이지네이션 --%>
            <table class="pagination">
                <tr>
                    <td><<</td>
                    <td><</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                    <td>></td>
                    <td>>></td>
                </tr>
            </table>
        </div>
        <%-- 검색창 --%>
        <div id="cBoardL-bottom_search" class="common-searchbar">
            <select name="search"><%-- 검색 조건 --%>
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">닉네임</option>
                <option value="2">크루명</option>
            </select>
            <input type="text"><%-- 검색어 입력 --%>
            <button class="crew-button"><%-- 검색 버튼 --%>
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="white"
                     class="bi bi-search" viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                </svg>
            </button>
        </div>
    </section>


    <%-- footer --%>
    <footer>
        <jsp:include page="../../footer.jsp"/>
    </footer>
</body>
</html>
