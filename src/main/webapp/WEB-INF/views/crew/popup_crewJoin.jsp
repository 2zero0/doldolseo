<!--
작성자: 김경일
페이지이름: popup_crewJoin.jsp
페이지설명: 크루상세 - 가입버튼 클릭시 가입서양식 출력
페이지 생성일: 21/07/29
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>크루 가입서</title>

    <%-- 메인 스타일시트 --%>
    <link href="_css/mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>

    <%-- 상단 제목,드릴다운 : 공통 --%>
    <div class="crew-topContainer" style="width: 600px">
        <%-- 제목 --%>
        <div class="common-top__title" style="color: #FAAC58">
            크루 가입
        </div>
        <%-- 게시판 드릴다운 --%>
        <span class="common-top__drilldownbox">
                    <a href="#" style="color: #FF8000;">크루 게시판</a>
                    <span> > </span>
                    <a href="#">크루 목록</a>
                    <span> > </span>
                    <a href="#">크루 가입</a>
            </span>
    </div>

    <%-- 크루 가입 폼 --%>
    <section id="crewJ-container">
        <table id="crewJ-tbl">
            <tr class="common-tbl__item">
                <td style="width: 170px; height: 30px">
                    <b>질문1</b>
                </td>
                <td>
                    <span style="color: green">새우튀김의 매력 15가지를 말하세요</span>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td>
                    답변
                </td>
                <td>
                    <input type="text" style="width: 300px"/>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td style="width: 170px; height: 30px">
                    <b>질문2</b>
                </td>
                <td height="30px">
                    <span style="color: green;">일주일에 새우튀김을 몇번 드시나요?</span>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td>
                    답변
                </td>
                <td>
                    <input type="text" style="width: 300px"/>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td style="width: 170px; height: 30px">
                    <b>질문3</b>
                </td>
                <td>
                    <span style="color: green">새튀단원으로써의 각오를 적어주세요</span>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td>
                    답변
                </td>
                <td>
                    <input type="text" style="width: 300px"/>
                </td>
            </tr>
            <tr class="common-tbl__item">
                <td colspan="2">
                    모집 공고 및 크루 규칙에 동의 하십니까?
                    <input type="checkbox" style="height: 20px; position: relative; top: 3px">
                </td>
            </tr>
        </table>

        <div id="crewJ-container-bottom">
            <button class="crew-button">가입</button>
            <button class="crew-button">취소</button>
        </div>
    </section>
</body>
</html>
