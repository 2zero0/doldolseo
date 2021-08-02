<!--
작성자: 김경일
페이지이름: reviewList.jsp
페이지설명: 후기게시판 글목록
페이지 생성일: 21/07/20
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>후기게시판</title>

    <%-- 메인 스타일시트 --%>
    <link href="_css/mainStyle.css?bz" rel="stylesheet" type="text/css">

</head>
<body>
    <%-- 헤더 --%>
        <div>
            <jsp:include page="../header.jsp"/>
        </div>

    <%-- 메인 컨테이너 --%>
    <div class="review-container--main">

        <%-- 네비게이션 --%>
        <nav class="review-container__navi" style="height: 1100px">
            <jsp:include page="reviewNavibar.jsp"/>
        </nav>

        <%-- 섹션 --%>
        <section id="reviewL-listbox">

            <%-- 게시판 드릴다운 및 글쓰기 버튼 --%>
            <div class="review-container--top">
                <%-- 제목 --%>
                <div class="common-top__title" style="color: #F6CECE;">
                    후기게시판
                </div>

                <%-- 게시판 드릴다운 --%>
                <span class="common-top__drilldownbox">
                    <a href="#" style="color: #F78181">후기게시판</a>
                    <span> > </span>
                    <a href="#">전체</a>
                </span>

                <%-- 글쓰기 버튼 --%>
                <div id="reviewL-top__buttonbox">
                    <button class="review-button">글쓰기</button>
                </div>
            </div>

            <%-- 글 목록--%>
            <table id="reviewL-list">
                <tr class="list--header">
                    <td>지역</td>
                    <td>제목</td>
                    <td>닉네임</td>
                    <td>등록일</td>
                    <td>조회수</td>
                </tr>
                <%-- 샘플 데이터 - 추후 반복 처리 --%>
                <tr class="list--item">
                    <td>명동</td>
                    <td>학원 탈주하고 명동 조지고왔습니다</td>
                    <td>명동돌고래</td>
                    <td>2021-07-21</td>
                    <td>1234</td>
                </tr>
                <tr class="list--item">
                    <td>홍대</td>
                    <td>청바지20장 플렉스 후기</td>
                    <td>청바지맨</td>
                    <td>2021-07-21</td>
                    <td>1244</td>
                </tr>
                <tr class="list--item">
                    <td>광화문</td>
                    <td>테스트11</td>
                    <td>테스트111</td>
                    <td>2021-07-21</td>
                    <td>1244</td>
                </tr>
                <%-- 샘플 데이터 - 추후 반복 처리 --%>
            </table>

            <%-- 페이지네이션 및 검색창--%>
            <div id="reviewL-container--bottom">

                <%-- 페이지네이션 --%>
                <div id="reviewL-bottom__pagination">
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
                <div id="reviewL-bottom_search" class="common-searchbar">
                    <select name="search"><%-- 검색 조건 --%>
                        <option value="0">제목</option>
                        <option value="1">내용</option>
                        <option value="2">닉네임</option>
                    </select>
                    <input type="text"><%-- 검색어 입력 --%>
                    <button class="review-button"><%-- 검색 버튼 --%>
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentcolor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>
                    </button>
                </div>
            </div>
        </section>
    </div>

    <%-- 푸터 --%>
        <footer>
            <jsp:include page="../footer.jsp"/>
        </footer>
</body>
</html>
