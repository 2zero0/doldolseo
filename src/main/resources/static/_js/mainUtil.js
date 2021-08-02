// 작성자 이영
/**best course**/
function convertBeforeImg(){
    document.getElementById("img1").src="img/testdol/dol1.png";
    document.getElementById("img2").src="img/testdol/dol2.png";
    document.getElementById("img3").src="img/testdol/dol3.png";
}

function convertAfterImg(){
    document.getElementById("img1").src="img/testdol/dol4.png";
    document.getElementById("img2").src="img/testdol/dol5.png";
    document.getElementById("img3").src="img/testdol/dol6.png";
}

/**best crew**/
var slides = document.querySelectorAll("#main_crew--bc--photo > img"); // 이미지들 선택하여 배열로 반환
var prev = document.querySelector("#prev");	// 이전 버튼
var next = document.querySelector("#next");	// 다음 버튼
var current = 0;

showSlide(current);
prev.onclick = prevSlide;
next.onclick = nextSlide;

// showSlide() 함수 이용하여 current에 보여줄 이미지
function showSlide(n){
    for(var i=0;i<slides.length;i++){
        area
        areaListData
        crewtest
        logo
        seoul
        testdol
        slides[i].style.display = "none";
    }
    slides[n].style.display = "block";
}


// prev 버튼 클릭시 실행할 함수
function prevSlide(){
    if(current > 0){
        current--;
    }else{
        current = slides.length-1;
    }
    showSlide(current);
}


// next 버튼 클릭시 실행할 함수
function nextSlide(){
    if(current < slides.length-1){
        current += 1;
    }else{
        current=0;
    }
    showSlide(current);
}
