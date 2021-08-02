<!--
작성자: 김경일
페이지이름: crewList.jsp
페이지설명: 크루게시판 - 크루 목록
페이지 생성일: 21/07/24
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>크루게시판 - 크루 목록</title>
    <%-- 메인 스타일 시트 --%>
    <link href="_css/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
    <%-- 헤더 --%>
        <div>
            <jsp:include page="../header.jsp"/>
        </div>

    <section class="crew-mainContainer" style="height: 1000px">

        <%-- 크루 네비게이션 : 공통 --%>
        <nav class="crew-navi">
            <span class="crew-navi__btn">크루활동</span>
            <span class="crew-navi__btn">크루목록</span>
            <button id="crew-navi__btn--mycrew" class="crew-button">My Crew</button>
        </nav>

        <%-- 상단 제목,드릴다운 : 공통 --%>
        <div class="crew-topContainer">
            <%-- 제목 --%>
            <div class="common-top__title" style="color: #FAAC58">
                크루 목록
            </div>
            <%-- 게시판 드릴다운 --%>
            <span class="common-top__drilldownbox">
                    <a href="#" style="color: #FF8000;">크루 게시판</a>
                    <span> > </span>
                    <a href="#">크루 목록</a>
            </span>
            <button id="crew-topContainer__crewBtn">크루 생성</button>
        </div>

        <%-- 상단 정렬버튼 + 검색창 --%>
        <div class="crew-topContainer__sub">
            <div class="crew-topContainer__subBtnbox">
                <button class="crew-button">등급 순</button>
                <button class="crew-button">가입 순</button>
            </div>

            <%-- 검색창 --%>
            <div class="common-searchbar" id="crewL-searchBar">
                <select name="search"><%-- 검색 조건 --%>
                    <option value="0">크루명</option>
                    <option value="1">지역</option>
                    <option value="2">크루장</option>
                </select>
                <input type="text"><%-- 검색어 입력 --%>
                <button class="crew-button" style="background-color: #FF8000"><%-- 검색 버튼 --%>
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#F6CEEC" class="bi bi-search"
                         viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                    </svg>
                </button>
            </div>
        </div>

        <%-- 크루 목록 --%>
        <%-- * 크루이름 최대 7자 까지 --%>
        <div class="crew-listContainer">
            <%-- 크루프로필 start --%>
            <div class="crew-crewProfile">
                <div class="crew-crewProfile__logo">
                    <img src="_image/crew/crew_sample1.png" alt="crew_logo">
                </div>
                <div class="crew-crewProfile__crewnameBox">
                    <span class="crew-crewProfile__crewnameBox__name">
                        <span class="crew-crewProfile__crewnameBox__grade">
                            <img src="_image/crew/crew_grade4.png" alt="crew_logo"/>
                        </span>
                        정연맘과아이들
                    </span>
                </div>
                <div class="crew-crewProfile__master">
                    <span class="crew-label--crewmaster">크루장</span>&nbsp;좆같은보노보노
                </div>
                <div class="crew-crewProfile__region">
                    <span style="color: #5882FA">지역</span> > 홍대
                </div>
                <div class="crew-crewProfile__intro">
                    코딩하다 징징대고 싶은 사람들 모여라~!!
                </div>
            </div>
            <%-- 크루프로필 end --%>
            <%-- 크루프로필 start --%>
            <div class="crew-crewProfile">
                <div class="crew-crewProfile__logo">
                    <img src="_image/crew/crew_sample2.jpeg" alt="crew_logo">
                </div>
                <div class="crew-crewProfile__crewnameBox">
                    <span class="crew-crewProfile__crewnameBox__name">
                    <div class="crew-crewProfile__crewnameBox__grade">
                        <img src="_image/crew/crew_grade3.png" alt="crew_logo">
                    </div>
                        방탕코딩단
                    </span>
                </div>
                <div class="crew-crewProfile__master">
                    <span class="crew-label--crewmaster">크루장</span>&nbsp;만취돌고래
                </div>
                <div class="crew-crewProfile__region">
                    <span style="color: #5882FA">지역</span> > 강남
                </div>
                <div class="crew-crewProfile__intro">
                    다때려치자 시부랄~
                </div>
            </div>
            <%-- 크루프로필 end --%>
            <%-- 크루프로필 start --%>
            <div class="crew-crewProfile">
                <div class="crew-crewProfile__logo">
                    <img src="_image/crew/crew_sample3.png" alt="crew_logo">
                </div>
                <div class="crew-crewProfile__crewnameBox">
                    <span class="crew-crewProfile__crewnameBox__name">
                    <div class="crew-crewProfile__crewnameBox__grade">
                        <img src="_image/crew/crew_grade2.png" alt="crew_logo">
                    </div>
                        테스트
                    </span>
                </div>
                <div class="crew-crewProfile__master">
                    <span class="crew-label--crewmaster">크루장</span>&nbsp;돌돌이
                </div>
                <div class="crew-crewProfile__region">
                    <span style="color: #5882FA">지역</span> > 홍대
                </div>
                <div class="crew-crewProfile__intro">
                    테스트 크루
                </div>
            </div>
            <%-- 크루프로필 end --%>
            <%-- 크루프로필 start --%>
            <div class="crew-crewProfile">
                <div class="crew-crewProfile__logo">
                    <img src="_image/crew/crew_sample3.png" alt="crew_logo">
                </div>
                <div class="crew-crewProfile__crewnameBox">
                    <span class="crew-crewProfile__crewnameBox__name">
                    <div class="crew-crewProfile__crewnameBox__grade">
                        <img src="_image/crew/crew_grade1.png" alt="crew_logo">
                    </div>
                        테스트
                    </span>
                </div>
                <div class="crew-crewProfile__master">
                    <span class="crew-label--crewmaster">크루장</span>&nbsp;돌돌이
                </div>
                <div class="crew-crewProfile__region">
                    <span style="color: #5882FA">지역</span> > 홍대
                </div>
                <div class="crew-crewProfile__intro">
                    테스트 크루
                </div>
            </div>
            <%-- 크루프로필 end --%>
            <%-- 크루프로필 start --%>
            <div class="crew-crewProfile">
                <div class="crew-crewProfile__logo">
                    <img src="_image/crew/crew_sample3.png" alt="crew_logo">
                </div>
                <div class="crew-crewProfile__crewnameBox">
                    <span class="crew-crewProfile__crewnameBox__name">
                    <div class="crew-crewProfile__crewnameBox__grade">
                        <img src="_image/crew/crew_grade1.png" alt="crew_logo">
                    </div>
                        테스트
                    </span>
                </div>
                <div class="crew-crewProfile__master">
                    <span class="crew-label--crewmaster">크루장</span>&nbsp;돌돌이
                </div>
                <div class="crew-crewProfile__region">
                    <span style="color: #5882FA">지역</span> > 홍대
                </div>
                <div class="crew-crewProfile__intro">
                    테스트 크루
                </div>
            </div>
            <%-- 크루프로필 end --%>
            <%-- 크루프로필 start --%>
            <div class="crew-crewProfile">
                <div class="crew-crewProfile__logo">
                    <img src="_image/crew/crew_sample3.png" alt="crew_logo">
                </div>
                <div class="crew-crewProfile__crewnameBox">
                    <span class="crew-crewProfile__crewnameBox__name">
                    <div class="crew-crewProfile__crewnameBox__grade">
                        <img src="_image/crew/crew_grade1.png" alt="crew_logo">
                    </div>
                        테스트
                    </span>
                </div>
                <div class="crew-crewProfile__master">
                    <span class="crew-label--crewmaster">크루장</span>&nbsp;돌돌이
                </div>
                <div class="crew-crewProfile__region">
                    <span style="color: #5882FA">지역</span> > 홍대
                </div>
                <div class="crew-crewProfile__intro">
                    테스트 크루
                </div>
            </div>
            <%-- 크루프로필 end --%>
            <%-- 크루프로필 start --%>
            <div class="crew-crewProfile">
                <div class="crew-crewProfile__logo">
                    <img src="_image/crew/crew_sample3.png" alt="crew_logo">
                </div>
                <div class="crew-crewProfile__crewnameBox">
                    <span class="crew-crewProfile__crewnameBox__name">
                    <div class="crew-crewProfile__crewnameBox__grade">
                        <img src="_image/crew/crew_grade1.png" alt="crew_logo">
                    </div>
                        테스트
                    </span>
                </div>
                <div class="crew-crewProfile__master">
                    <span class="crew-label--crewmaster">크루장</span>&nbsp;돌돌이
                </div>
                <div class="crew-crewProfile__region">
                    <span style="color: #5882FA">지역</span> > 홍대
                </div>
                <div class="crew-crewProfile__intro">
                    테스트 크루
                </div>
            </div>
            <%-- 크루프로필 end --%>
        </div>
    </section>

    <%-- footer --%>
        <jsp:include page="../footer.jsp"/>
</body>
</html>
