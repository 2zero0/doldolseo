<!--
작성자: 김경일
페이지이름: crewBoardUpdate.jsp
페이지설명: 크루 활동 게시판 - 수정
페이지 생성일: 21/07/29
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 수정</title>

    <%-- 메인 스타일시트 --%>
    <link href="_css/mainStyle.css?chs2axa" rel="stylesheet" type="text/css">

    <!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#summernote').summernote({
                //summernote 속성
                width: 1100,
                height: 400,
                minHeight: null,
                maxHeight: null,
                focus: true,
                lang: "ko-KR",
                placeholder: '최대 2048자까지 쓸 수 있습니다'
            });
        });
    </script>

</head>
<body>
    <%-- 헤더 --%>
    <jsp:include page="../../header.jsp"/>

    <%-- 메인 컨테이너 --%>
    <section class="common-iuContainer--main">

        <%-- 제목 --%>
        <div class="common-iuTop--title" style="color:#FF8000 ">
            글수정
        </div>

        <%-- 글쓰기 폼 카테고리/제목/내용/크루원 추가/코스/ --%>
        <form action="#" method="post">
            <table class="common-iuContainer--writeform">

                <%-- 카테고리 : select --%>
                <tr class="common-tbl__item">
                    <td style="width: 170px">
                        <b>카테고리</b>
                    </td>
                    <td>
                        <select name="category" class="writeform__component">
                            <option value="1">맛집</option>
                            <option value="2">쇼핑</option>
                            <option value="3">문화</option>
                            <option value="4">자유</option>
                        </select>
                    </td>
                </tr>

                <%-- 제목 : text --%>
                <tr class="common-tbl__item">
                    <td style="width: 170px">
                        제목
                    </td>
                    <td>
                        <input style="width: 600px" type="text"/>
                    </td>
                </tr>

                <%-- 내용 : summernote --%>
                <tr class="common-tbl__item">
                    <td style="width: 170px">
                        내용
                    </td>
                    <td>
                        <textarea id="summernote"></textarea>
                    </td>
                </tr>

                <%-- 함께한 크루원 추가 --%>
                <tr class="common-tbl__item">
                    <td style="width: 170px">
                        함께한 크루원
                    </td>
                    <td>
                        <select name="addCrewMember">
                            <option value="#회원번호">크루멤버1</option>
                            <option value=#회원번호">크루멤버2</option>
                        </select>

                        <%-- 백엔드 연동시 추후 자바스크립트 작업--%>
                        <div class="crew-box--addedMember">
                            <%-- 추가된 크루원 --%>
                            <div class="crew-addedMember--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원1</div>
                                <span class="common-deleteMark--x"
                                      style="position: relative; bottom: 17px">&Cross;</span>
                            </div>
                            <%-- 추가된 크루원 --%>
                            <div class="crew-addedMember--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원2</div>
                                <span class="common-deleteMark--x"
                                      style="position: relative; bottom: 17px">&Cross;</span>
                            </div>
                            <%-- 추가된 크루원 --%>
                            <div class="crew-addedMember--idbox">
                                <div class="crew-member--photo">
                                    <img src="_image/crew/crew_img_sample1.png"/>
                                </div>
                                <div style="display: inline-block; position: relative; bottom: 18px">새튀단원3</div>
                                <span class="common-deleteMark--x"
                                      style="position: relative; bottom: 17px">&Cross;</span>
                            </div>

                        </div>
                    </td>
                </tr>
            </table>

            <%-- 저장 버튼 --%>
            <div id="reviewIU-container--bottom">
                <button class="button--exceptionboot"
                        style="width: 130px; height: 40px; font-size: 23px; background-color: #FF8000">
                    저장
                </button>
            </div>
        </form>
    </section>

    <%-- 푸터 --%>
    <footer>
        <jsp:include page="../../footer.jsp"/>
    </footer>
</body>
</html>
