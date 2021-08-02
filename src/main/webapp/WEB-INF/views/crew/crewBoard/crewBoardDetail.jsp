<!--
작성자: 김경일
페이지이름: crewBoardDetail.jsp
페이지설명: 크루 활동 게시판 - 글 상세 보기
페이지 생성일: 21/07/29
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 상세 보기</title>

    <%-- 메인 스타일시트 --%>
    <link href="_css/mainStyle.css" rel="stylesheet" type="text/css">

    <%-- jQuery--%>
    <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous">
    </script>

    <%-- 댓글 이벤트 처리 --%>
    <script src="_js/comment.js"></script>

    <script>
        function appearCrewList() {
            if (document.getElementById('cBoardD-box-crewMemberList').style.display === "block") {
                document.getElementById('cBoardD-box-crewMemberList').style.display = "none";
            } else {
                document.getElementById('cBoardD-box-crewMemberList').style.display = "block"
            }
        }
    </script>
</head>
<body>
    <%-- 헤더 --%>
    <jsp:include page="../../header.jsp"/>

    <section class="crew-mainContainer" style="">
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

        <%-- 상세 글 목록  --%>
        <table id="cBoardD-tablelayout">
            <%-- 글상단 : 프로필 박스 + 댓글 및 조회수 --%>
            <tr class="common-tbl__item">
                <td>
                    <%-- 프로필 박스 : 회원사진, 닉네임, 작성날짜--%>
                    <div class="profilebox">
                        <%-- 회원사진 --%>
                        <div class="profilebox--photo">
                            <img src="_image/sample1.png">
                        </div>
                        <%-- 닉네임 + 작성날짜 컨테이너 --%>
                        <div class="profilebox--container--sub">
                            <%-- 닉네임 --%>
                            <div class="profilebox--nickname">
                                박소은
                            </div>
                            <%-- 작성날짜 --%>
                            <div class="profilebox--wdate">
                                2020-07-21
                            </div>
                        </div>
                    </div>

                    <%-- 댓글 수 , 조회수 표시 --%>
                    <div class="iconbox">
                        <div class="iconbox__comment">
                            <%-- 댓글 아이콘 - bootstrap--%>
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#FF8000"
                                 class="bi bi-chat-square-text-fill" viewBox="0 0 16 16">
                                <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2.5a1 1 0 0 0-.8.4l-1.9 2.533a1 1 0 0 1-1.6 0L5.3 12.4a1 1 0 0 0-.8-.4H2a2 2 0 0 1-2-2V2zm3.5 1a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1h-9zm0 2.5a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1h-9zm0 2.5a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5z"></path>
                            </svg>
                        </div>
                        <div class="iconbox__commentcount">
                            12
                        </div>

                        <div class="iconbox__hit">
                            <%-- 조회수 아이콘 - bootstrap--%>
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#FF8000"
                                 class="bi bi-hand-index-fill" viewBox="0 0 16 16">
                                <path d="M8.5 4.466V1.75a1.75 1.75 0 1 0-3.5 0v5.34l-1.2.24a1.5 1.5 0 0 0-1.196 1.636l.345 3.106a2.5 2.5 0 0 0 .405 1.11l1.433 2.15A1.5 1.5 0 0 0 6.035 16h6.385a1.5 1.5 0 0 0 1.302-.756l1.395-2.441a3.5 3.5 0 0 0 .444-1.389l.271-2.715a2 2 0 0 0-1.99-2.199h-.581a5.114 5.114 0 0 0-.195-.248c-.191-.229-.51-.568-.88-.716-.364-.146-.846-.132-1.158-.108l-.132.012a1.26 1.26 0 0 0-.56-.642 2.632 2.632 0 0 0-.738-.288c-.31-.062-.739-.058-1.05-.046l-.048.002z"></path>
                            </svg>
                        </div>
                        <div class="iconbox__hitcount">
                            1234
                        </div>
                    </div>
                </td>
            </tr>

            <%-- 글 제목 --%>
            <tr class="common-tbl__item">
                <td style="position: relative">
                    <span id="reviewD__title">눈을맞춰 술잔을 채워</span>
                    <div id="cBoardD-box--crewWith">
                        <button id="cBoardD-btn-crewWith" onclick="appearCrewList()"><%-- 버튼 클릭시 함께한 크루원 출력 --%>
                            <%-- 함께한 크루원 아이콘 --%>
                            <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
                                 class="bi bi-people-fill" viewBox="0 0 16 16">
                                <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                                <path fill-rule="evenodd"
                                      d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"></path>
                                <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"></path>
                            </svg>
                        </button>
                        <%-- 함께한 크루원 리스트 --%>
                        <div id="cBoardD-box-crewMemberList">
                            <%-- 추가된 크루원 --%>
                            <div class="crew-withMember--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원1</div>
                            </div>
                            <%-- 추가된 크루원 --%>
                            <div class="crew-withMember--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원2</div>
                            </div>
                            <%-- 추가된 크루원 --%>
                            <div class="crew-withMember--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원3</div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>

            <%-- 글 내용 --%>
            <tr class="common-tbl__item">
                <td>
                    <p id="reviewD-content">
                        뭐가 어때 나는 어리고 또 자유로운 건데<br/>
                        나쁜 거니 그런 기준은 어디서 배워 온 거니<br/>
                        뭐가 어때 나는 취할거고 사랑도 할 건데<br/>
                        못된 거면 욕이라도 해줘<br/>
                        넌 그런게 귀여우니~<br/>
                    </p>
                </td>
            </tr>
        </table>


        <%-- 댓글 창--%>
        <div id="cBoardD-comment__banner">
            <div class="common-top__title" style="font-size: 35px; color: #FF8000">
                COMMENT
            </div>

        </div>
        <hr class="line--horizon" style="width:1000px ">
        <%-- 댓글 보기 --%>
        <table id="cBoardD-tablelayout">

            <%------ 댓글작업 : 1.반복처리, 2.첨삭버튼 로그인 시에만 활성화  ------%>
            <%-- 댓글 1개 : 추후 반복 처리--%>
            <tr class="comment-tablelayout">
                <td style="padding: 10px 10px 10px 10px">
                    <%-- 댓글 - 프로필 박스 : 회원사진, 닉네임, 작성날짜--%>
                    <div class="profilebox" style="margin-top: 7px">
                        <%-- 회원사진 --%>
                        <div class="profilebox--photo">
                            <img src="_image/sample2.png">
                        </div>
                        <%-- 닉네임 + 작성날짜 컨테이너 --%>
                        <div class="profilebox--container--sub">
                            <%-- 닉네임 --%>
                            <div class="profilebox--nickname">
                                만취돌고래
                            </div>
                            <%-- 작성날짜 --%>
                            <div class="profilebox--wdate">
                                2020-07-21
                            </div>
                        </div>
                    </div>
                    <%-- 댓글 내용 --%>
                    <div class="commentbox">
                        <%-- 첨삭 버튼 : 누르면 활성화 --%>
                        <button class="comment__deleteUpdateButton"> <<</button>
                        <%-- 수정 삭제 버튼--%>
                        <div class="comment__deleteUpdateBox">
                            <div class="comment__deleteUpdatelist">
                                <button class="comment__updateButton">수정</button>
                            </div>
                            <div class="comment__deleteUpdatelist">
                                <button>삭제</button>
                            </div>
                        </div>
                        <textarea class="comment__textarea" readonly="readonly">눈을 맞춰~~</textarea>
                        <%-- 댓글수정 서브버튼 : 완료/취소--%>
                        <div class="comment-editSubbox">
                            <button class="comment-editSub__btn--ok">완료</button>
                            <button class="comment-editSub__btn--cancle">취소</button>
                        </div>
                    </div>
                </td>
            </tr>
            <%-- 댓글 1개 --%>
            <%-- 댓글 1개 : 추후 반복 처리--%>
            <tr class="comment-tablelayout">
                <td style="padding: 10px 10px 10px 10px;">
                    <%-- 댓글 - 프로필 박스 : 회원사진, 닉네임, 작성날짜--%>
                    <div class="profilebox" style="margin-top: 7px">
                        <%-- 회원사진 --%>
                        <div class="profilebox--photo">
                            <img src="_image/sample3.png">
                        </div>
                        <%-- 닉네임 + 작성날짜 컨테이너 --%>
                        <div class="profilebox--container--sub">
                            <%-- 닉네임 --%>
                            <div class="profilebox--nickname">
                                3당근주세요
                            </div>
                            <%-- 작성날짜 --%>
                            <div class="profilebox--wdate">
                                2020-07-21
                            </div>
                        </div>
                    </div>
                    <%-- 댓글 내용 --%>
                    <div class="commentbox">
                        <%-- 첨삭 버튼 : 누르면 활성화 --%>
                        <button class="comment__deleteUpdateButton"> <<</button>
                        <%-- 수정 삭제 버튼--%>
                        <div class="comment__deleteUpdateBox">
                            <div class="comment__deleteUpdatelist">
                                <button class="comment__updateButton">수정</button>
                            </div>
                            <div class="comment__deleteUpdatelist">
                                <button>삭제</button>
                            </div>
                        </div>
                        <textarea class="comment__textarea" readonly="readonly">술잔을 채워~</textarea>
                        <%-- 댓글수정 서브버튼 : 완료/취소--%>
                        <div class="comment-editSubbox">
                            <button class="comment-editSub__btn--ok">완료</button>
                            <button class="comment-editSub__btn--cancle">취소</button>
                        </div>
                    </div>
                </td>
            </tr>
            <%-- 댓글 1개 --%>
        </table>

        <%-- 댓글 입력 폼 --%>
        <%--                        <form action="#" method="post">--%>
        <div class="comment__input" id="reviewD-comment__input">
                <textarea id="comment__input__textarea" placeholder="댓글을 입력해 보세요" onfocusin="changeBorderOnFocus()"
                          onfocusout="changeBorderOnFocusOut()"></textarea>
            <div class="comment__buttonbox">
                <button type="submit" class="button--comment">등록</button>
            </div>
        </div>
        <%--            </form>--%>
    </section>


    <%-- footer --%>
    <footer>
        <jsp:include page="../../footer.jsp"/>
    </footer>

</body>
</html>
