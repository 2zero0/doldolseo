<!--
작성자: 김경일
페이지이름: crewInsert.jsp
페이지설명: 크루게시판 - 크루 생성
페이지 생성일: 21/07/25
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>크루게시판 - 크루 생성</title>

    <%-- 메인 스타일 시트 --%>
    <link href="_css/mainStyle.css" rel="stylesheet" type="text/css">

    <%-- jQuery--%>
    <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous">
    </script>

    <script>
        var btnCount = 0;

        $(function () {
            <%-- 가입 질문 추가--%>
            $("#crewI-btn--addQuestion").click(function () {
                if (btnCount >= 2) {
                    alert("질문은 3개이상 추가하실 수 없습니다.");
                } else {
                    $("#crewI-insertTbl__recuit").append("<tr class='common-tbl__item'>" +
                        "<td style='width: 170px;'>" +
                        "가입 질문 (추가)" +
                        "</td>" +
                        "<td>" +
                        "<input type='text' style='width: 850px'/>" +
                        "</td></tr>");
                }
                btnCount += 1;
            });
        });
    </script>

</head>
<body>
    <%-- 헤더 --%>
    <div>
        <jsp:include page="../header.jsp"/>
    </div>

    <section class="crew-mainContainer" style="width: 1115px;">

        <%-- topContainer --%>
        <div class="crew-topContainer" style="width: 1115px;">
            <%-- 제목 --%>
            <div class="common-top__title" style="color: #FAAC58; top: 45px;">
                크루 생성
            </div>
        </div>

        <%-- 크루 정보 입력 폼 : 로고, 크루명, 관심지역, 크루 소개(간략, 상세) --%>
        <div class="common-miniTitle" style="top:45px; width: 1115px;">
            &bull;
            크루 정보 입력
        </div>
        <table class="crewI-insertTbl">
            <tr class="common-tbl__item">
                <td rowspan="2">
                    로고
                </td>
                <td rowspan="2" style="border-right: 1px solid #CDCECF;">
                    <div class="crew-logobox">
                        <img src="_image/crew/crew-logo-default.jpeg" alt="crew-logo"/><%-- 기본로고 --%>
                        <button class="crew-button--upload" style="bottom: 1px; right: 1px">변경</button>
                    </div>
                </td>
                <td>
                    크루명
                </td>
                <td>
                    <input type="text" style="width: 200px"/>
                    <button class="crew-button" style="height:30px; position: relative; top: 4px">중복 확인</button>
                    <span style="font-size: 10px;color: #6E6E6E;">* 크루이름은 최대 7글자 까지 입력 가능 합니다.</span>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td style>
                    관심지역
                </td>
                <td>
                    <input type="checkbox" name="" value="">
                    <span style="line-height: 26px; font-size: 13px">강남</span>
                    <input type="checkbox" name="" value="">
                    <span style="line-height: 26px; font-size: 13px">광화문</span>
                    <input type="checkbox" name="" value="">
                    <span style="line-height: 26px; font-size: 13px">명동</span>
                    <input type="checkbox" name="" value="">
                    <span style="line-height: 26px; font-size: 13px">여의도</span>
                    <input type="checkbox" name="" value="">
                    <span style="line-height: 26px; font-size: 13px">잠실</span>
                    <input type="checkbox" name="" value="">
                    <span style="line-height: 26px; font-size: 13px">홍대</span>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td colspan="2">
                    크루 소개 (간략)
                <td colspan="2">
                    <textarea style="width: 850px; height: 50px"></textarea>
                </td>
            </tr>
            <tr class="common-tbl__item" style="height: 100px">
                <td colspan="2">
                    크루 소개 (상세)
                <td colspan="2">
                    <textarea style="width: 850px; height: 90px"></textarea>
                </td>
            </tr>
        </table>

        <%-- 크루 모집 공고 입력 폼 : 모집공고, 가입양식 질문 , 짋문추가 기능 --%>
        <div class="common-miniTitle" style="top:45px; width: 1115px;">
            &bull;
            크루 모집 공고 입력
            <button id="crewI-btn--addQuestion" class="crew-button">질문 추가</button>
            <%-- 클릭시 가입 질문 양식 추가 됨 --%>
        </div>
        <table id="crewI-insertTbl__recuit" class="crewI-insertTbl">
            <tr class='common-tbl__item'>
                <td style='width: 170px;'>
                    모집 공고
                </td>
                <td>
                    <textarea style='width: 850px; height: 90px'></textarea>
                </td>
            </tr>
            <tr class='common-tbl__item'>
                <td style="width: 170px;">
                    가입 질문
                </td>
                <td>
                    <input type='text' style='width: 850px'/>
                </td>
            </tr>
        </table>

        <%-- 저장 버튼 --%>
        <div style="width: 1115px; margin-top: 30px">
            <button class="crew-button" style="position: relative; left: 510px; width: 100px">저장</button>
        </div>


    </section>

    <%-- footer --%>
    <footer>
        <jsp:include page="../footer.jsp"/>
    </footer>
</body>
</html>
