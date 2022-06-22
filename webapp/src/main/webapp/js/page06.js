// 외국인일 경우 FORN_YN가 체크 되어 있을 시에는 외국인 등록증 번호 신분증 사본, 국저그 영문성명, 비자등급이 나와야함
// 신분증확인 중 주민등록증 juminclick 체크시 발급일자 발급기관이 나오게 설정
// 신분증확인 중 운전면허증 licenceclick 체크시 면허번호가 나오게

// 실소유주 아닐시 이름, 주민번호, 국적 국가명 찾기 나오게
// 운전여부 중 운전함 carBox 선택시 차량 선택나오게
// onchange="setDisplay()"

function checkForn(){
    if ($('input:checkbox[id=FORN_YN]').is(":checked")) {
                //foreigner_input
        $('.foreigner_input').show();
        $('#idcard').hide();
    }else{
        $('.foreigner_input').hide();
        $('#idcard').show();
    }
}

function checkIdcard(){
    if ($('input:radio[id=juminclick]').is(":checked")) {
        $('.inputs-psnl').show();
        $('.inputs-drv-license').hide();
    }else if ($('input:radio[id=licenceclick]').is(":checked")) {
        $('.inputs-psnl').hide();
        $('.inputs-drv-license').show();
    }
}

function checkDrive(){
    if ($('input:radio[id=drive]').is(":checked")) {
        $('#carBox').show();
    }else if ($('input:radio[id=undrive]').is(":checked")) {
        $('#carBox').hide();
    }
}/**
 * 
 */