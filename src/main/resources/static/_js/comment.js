


//댓글 입력 : textarea에 포커스in시 inputbox 테두리 강조
function changeBorderOnFocus() {
    document.getElementById("reviewD-comment__input").style.border = "3px solid #A9E2F3";
}

//댓글 입력 : textarea에 포커스out시 inputbox 테두리 원래대로 변경
function changeBorderOnFocusOut() {
    document.getElementById("reviewD-comment__input").style.border = "1px #CDCECF solid";
}

$(function () {
    //댓글 : 선택한 인덱스의 버튼 클릭하여(버튼 인덱스 = 첨삭박스 인덱스) 첨삭박스 보이기/숨기기
    $('.comment__deleteUpdateButton').click(function () {
        var idx = $(".comment__deleteUpdateButton").index(this);  // 존재하는 모든 버튼을 기준으로 index
        appearDeleteUpdateBox(idx);
    });

    //댓글 : 수정버튼 클릭시 수정모드 활성화
    $('.comment__updateButton').click(function () {
        var idx = $(".comment__updateButton").index(this);  // 존재하는 모든 버튼을 기준으로 index
        doUpdateMode(idx);
    });

    //댓글 : 수정 완료 및 취소
    $('.comment-editSub__btn--ok').click(function () {
        var idx = $(".comment-editSub__btn--ok").index(this);  // 존재하는 모든 버튼을 기준으로 index
        editOkOrCancle(idx);
    });
    $('.comment-editSub__btn--cancle').click(function () {
        var idx = $(".comment-editSub__btn--cancle").index(this);  // 존재하는 모든 버튼을 기준으로 index
        editOkOrCancle(idx);
    });

});

//댓글 :  첨삭박스 보이기/숨기기
function appearDeleteUpdateBox(idx) {
    if (document.getElementsByClassName('comment__deleteUpdateBox')[idx].style.display === "block") {
        document.getElementsByClassName('comment__deleteUpdateBox')[idx].style.display = "none";
    } else {
        document.getElementsByClassName('comment__deleteUpdateBox')[idx].style.display = "block"
    }
}

//댓글 : 수정모드 활성화
function doUpdateMode(idx) {
    //수정/삭제 박스 비활성
    document.getElementsByClassName('comment__deleteUpdateBox')[idx].style.display = "none";
    //서브버튼 활성화
    document.getElementsByClassName('comment-editSubbox')[idx].style.display = "block";
    //textarea readonly제거후 포커스
    var editArea = document.getElementsByClassName('comment__textarea')[idx];
    editArea.removeAttribute("readonly");
    editArea.focus();
}

//댓글 : 수정 완료 및 취소시
function editOkOrCancle(idx) {
    //서브버튼 비활성
    document.getElementsByClassName('comment-editSubbox')[idx].style.display = "none";
    //textarea 수정불가
    var editArea = document.getElementsByClassName('comment__textarea')[idx];
    editArea.setAttribute('readonly','readonly');
}