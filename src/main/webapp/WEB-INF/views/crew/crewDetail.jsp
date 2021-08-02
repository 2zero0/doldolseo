<!--
작성자: 김경일
페이지이름: crewDetail.jsp
페이지설명: 크루게시판 - 크루 상세보기
페이지 생성일: 21/07/25
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>크루게시판 - 크루 상세</title>

    <%-- 메인 스타일 시트 --%>
    <link href="_css/mainStyle.css" rel="stylesheet" type="text/css">
    <script>
        function popupCrewJoin() {
            window.open("popup_crewJoin.jsp", "크루가입", "width = 600, height = 470");
        }
    </script>
</head>
<body>
    <%-- 헤더 --%>
    <div>
        <jsp:include page="../header.jsp"/>
    </div>


    <%-- 크루 네이게이션 : 공통 --%>
    <nav class="crew-navi" style="width: 1115px;">
        <span class="crew-navi__btn">크루활동</span>
        <span class="crew-navi__btn">크루목록</span>
        <button id="crew-navi__btn--mycrew" class="crew-button">My Crew</button>
    </nav>

    <section class="crew-mainContainer" style="width: 1120px; text-align: left">
        <%-- 상단 제목,드릴다운 : 공통 --%>
        <div class="crew-topContainer" style="width: 1120px;">
            <%-- 제목 --%>
            <div class="common-top__title" style="color: #FAAC58">
                크루 상세
            </div>
            <%-- 게시판 드릴다운 --%>
            <span class="common-top__drilldownbox">
                    <a href="#" style="color: #FF8000;">크루 게시판</a>
                    <span> > </span>
                    <a href="#">크루 목록</a>
                    <span> > </span>
                    <a href="#">크루 상세</a>
            </span>
        </div>

        <div class="common-miniTitle" style="top:45px; width: 1120px; font-size: 32px">
            크루 정보
        </div>
        <%-- 크루 정보 컨테이너 --%>
        <div class="crew-infoContainer">
            <div class="crew-info__infobox">
                <%-- 크루 로고 --%>
                <div class="crew-info__item" style="margin-top: 20px">
                    <span>로고 :</span>
                    <div class="crew-logobox" style="width: 100px; height: 110px;">
                        <img src="_image/crew/crew_sample4.jpeg" alt="crew-logo"/>
                    </div>
                </div>

                <div class="crew-info__item">
                    <span>크루명 :</span>
                    <span class="crew-namelabel">새튀단</span>
                </div>

                <div class="crew-info__item">
                    크루설립일 :
                    <span class="crew-namelabel">2021.07.27</span>
                </div>

                <div class="crew-info__item">
                    크루등급 :
                    <div class="crew-info__grade">
                        <img src="_image/crew/crew_grade3.png" alt="grade">
                    </div>
                    <button class="crew-button" style="height: 30px">등급안내</button>
                </div>

                <div class="crew-info__item">
                    크루포인트 :
                    <div class="crew-info__pointbar--holder">
                        <div class="crew-info__pointbar--bar">85.12%</div>
                    </div>
                </div>
            </div>

            <div class="crew-info__introbox">
                <div class="crew-info__item" style="margin-top: 112px">
                    관심지역 :
                    <span class="crew-namelabel" style="width: auto; padding: 2px 13px 0 13px">홍대, 강남</span>
                </div>

                <div class="crew-info__item" style="border: none">
                    <span>크루소개 :</span>
                    <span class="crew-infolabel">
                        반갑습니다. 새우튀김을 사랑하는 모임, 새튀단 입니다. <br/>
                        저희는 홍대와 강남을 중심으로 주1회 새튀 맛집을 찾아서 뿌시는 모임입니다. <br/>
                        많은 가입 부탁드립니다.
                    </span>
                </div>
            </div>
        </div>

        <div class="crew-midContainer--left">
            <div class="common-miniTitle" style="top:45px; font-size: 32px">
                <span>크루원 정보</span>
            </div>
            <%-- 크루 멤버 컨테이너 --%>
            <div class="crew-memberContainer">
                <table class="crew-memberTbl--top">
                    <tr class="crew-memberTbl__header">
                        <td style="width: 160px">멤버등급</td>
                        <td>멤버</td>
                    </tr>
                </table>
                <%-- 크루장 --%>
                <table class="crew-memberTbl--bottom">
                    <tr class="common-tbl__item">
                        <td>
                            <div class="crew-master--decorate">
                                <span class="crew-master--decotext">크루장</span>
                                <img src="_image/crew/crew_master_crown.png" alt="crown">
                            </div>
                        </td>
                        <td>
                            <div class="crew-member--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_sample3.png" alt="profile"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새우먹는돌고래</div>
                            </div>
                        </td>
                    </tr>
                    <%-- 크루원 --%>
                    <tr class="common-tbl__item">
                        <td>
                            <span class="crew-member-decotext">크루원</span>
                        </td>
                        <td>
                            <div class="crew-member--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원1</div>
                            </div>
                        </td>
                    </tr>
                    <%-- 크루원 --%>
                    <tr class="common-tbl__item">
                        <td>
                            <span class="crew-member-decotext">크루원</span>
                        </td>
                        <td>
                            <div class="crew-member--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원2</div>
                            </div>
                        </td>
                    </tr>
                    <%-- 크루원 --%>
                    <tr class="common-tbl__item">
                        <td>
                            <span class="crew-member-decotext">크루원</span>
                        </td>
                        <td>
                            <div class="crew-member--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원2</div>
                            </div>
                        </td>
                    </tr>
                    <%-- 크루원 --%>
                    <tr class="common-tbl__item">
                        <td>
                            <span class="crew-member-decotext">크루원</span>
                        </td>
                        <td>
                            <div class="crew-member--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원2</div>
                            </div>
                        </td>
                    </tr>
                    <%-- 크루원 --%>
                    <tr class="common-tbl__item">
                        <td>
                            <span class="crew-member-decotext">크루원</span>
                        </td>
                        <td>
                            <div class="crew-member--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원2</div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <%-- 모집 공고 및 크루 가입 --%>
        <div class="crew-midContainer--right">
            <div class="common-miniTitle" style="width: 550px; top:45px; left: 65px; font-size: 32px;">
                <span>모집 공고</span>
                <button class="crew-button" style="float: right; margin-top: 2px" onclick="popupCrewJoin()">크루 가입
                </button>
            </div>
            <div class="crew-recruitContainer">
                * 모집 공고 * <br/>
                - 나이 제한 : 20세 이상 50세 이하<br/>
                - 연봉 : 5000만원 이상<br/>
                - 학벌 : 인서울<br/>
                <br/>
                <br/>
                * 규칙 *<br/>
                - 새우튀김이 아닌 튀김을 먹다 적발시 강퇴
            </div>
        </div>
    </section>

    <%-- footer --%>
        <footer>
            <jsp:include page="../footer.jsp"/>
        </footer>

</body>
</html>
