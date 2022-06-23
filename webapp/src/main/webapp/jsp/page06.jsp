<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보입력 페이지</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/page06.js"></script>
<script src="jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
 <div class="subscription_wrap">
        <div class="top">
            <div class="top">
                <h1>
                    <b>(무)흥국생명온라인 
                        <span>정기보험</span>
                    </b> 가입하기
                </h1>
                
                <div class="plan_data box setBorder" >
                    <dl class="type">
                        <dt>구분</dt>
                        <dd id="p_item_cont1"><b>(흡연)2종(갱신형)</b></dd>
                    </dl>
                    <dl class="period1">
                        <dt>보험기간</dt>
                        <dd id="p_item_cont2"><b><b>10</b>년</b></dd>
                    </dl>
                    <dl class="period2">
                        <dt>납입기간</dt>
                        <dd id="p_item_cont3"><b><b>전기납</b></b></dd>
                    </dl>
                    <dl class="money1">
                        <dt>가입금액</dt>
                        <dd id="p_item_cont6"><b>     100,000,000원</b></dd>
                    </dl>
                    <dl>
                        <dt>월 보험료</dt>
                        <dd id="p_item_cont5"><b>          20,000원</b></dd>
                    </dl>
                </div>
                <div class="subscription_cont">

                    <!-- 청약 1단계 -->
                    <div class="subscription_01">
            
                        <div class="box_guide setBorder">
                            <b class="fs16 c333">개인정보를 입력하는 단계입니다.</b> 
                            계약자님의 정보를 입력하고, 정보처리에 동의하는 단계입니다.
                        </div>
                        <!-- 개인정보 -->
                        <dl class="subscription_box mt20 setBorder">
            
                           <!--  <dt class="person">개인정보</dt> -->
            
            
                            <dd class="step1">
                                <table class="input_field">
                                    <caption>개인정보</caption>
                                    <colgroup>
                                        <col width="153">
                                        <col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>성명</th>
                                            <td class="tdright">
                                                <input type="text" class="input" style="width:239px" id="CUST_NM" name="CUST_NM" title="이름 입력" alt="이름을 입력하세요." maxlength="50" hname="이름" required="required" npkencrypt="off">
                                                <label class="foreign_check ml10"><input type="checkbox" class="checkbox" title="외국인 여부 선택" name="FORN_YN" id="FORN_YN" onchange="checkForn()"> 
                                                <span class="fs12">외국인일 경우 체크해 주세요.</span>
                                                </label>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <th id="juminno_text">주민번호</th>
                                            <td class="tdright">
                                                <input type="password" id="PSNL_ID" name="PSNL_ID" required="required" class="input" maxlength="7" hname="주민번호뒷자리" title="주민번호 뒷자리 또는 외국인인 경우 외국인등록번호 뒷자리 입력">
                                                <span class="rdo_type01 ">
                                                    <label class="drvtype">
                                                        <input type="checkbox" id="ess_text_psnl_id" name="ess_text_psnl_id" value="Y" class="d-radio" style="">마우스 입력</label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr class="color id-card-title" id="idcard">
                                            <th>신분증 확인</th>
                                            <td class="tdright">
                                                <div class="rdo_type01">
                                                    <label><input type="radio" class="d-radio" name="ID_GB" value="1" hname="신분증 확인 방법" title="주민등록증 선택" id="juminclick" onchange="checkIdcard()">
                                                        <span>주민등록증</span>
                                                    </label>
                                                    <label><input type="radio" class="d-radio" name="ID_GB" value="2" hname="신분증 확인 방법" title="운전면허증 선택" id="licenceclick" onchange="checkIdcard()">
                                                        <span>운전면허증</span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="color id-card-wrap id-input">
                                            <th></th>
                                            <td class="tdright">
                                            
                                            <!-- 주민등록증 -->
                                                <div class="inputs-psnl" style="display:none ;">
                                                    <div style="margin-top:10px;">
                                                        <span>
                                                            <b>발급일자</b>
                                                        </span> 
                                                        <input type="text" name="ISUE_YMD" id="ISUE_YMD" maxlength="8" class="i-text" title="발급일자 입력" hname="발급일자" pattern="[0-9]*">
                                                        <img alt="달력" title="달력"> 
                                                    </div>
                                                    <div>
                                                        <span>
                                                            <b>발급기관</b>
                                                        </span> 
                                                        <select class="sbox" title="지역선택" id="ISUE_IN_CD1" name="ISUE_IN_CD1" hname="발급지역">
                                                            <option value="">지역 선택</option>
                                                            <option value="11">서울특별시</option>
                                                            <option value="12">인천광역시</option>
                                                            <option value="13">부산광역시</option>
                                                            <option value="14">대구광역시</option>
                                                            <option value="15">울산광역시</option>
                                                            <option value="16">대전광역시</option>
                                                            <option value="17">광주광역시</option>
                                                            <option value="18">경기도</option>
                                                            <option value="19">강원도</option>
                                                            <option value="20">충청북도</option>
                                                            <option value="21">충청남도</option>
                                                            <option value="22">경상북도</option>
                                                            <option value="23">경상남도</option>
                                                            <option value="24">전라북도</option>
                                                            <option value="25">전라남도</option>
                                                            <option value="26">제주특별자치도</option>
                                                            <option value="27">세종특별자치시</option>
                                                        </select>
                                                        <select class="sbox" title="기관선택" id="ISUE_IN_DTL1" name="ISUE_IN_DTL1" hname="발급기관">
                                                            <option>기관 선택</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <!-- //주민등록증 -->
            
                                                <!-- 운전면허증 -->
                                                <div class="inputs-drv-license"  style="display:none ;">
                                                        <div>
                                                        <span>
                                                            <b>면허번호</b>
                                                        </span>
                
                                                        <select class="select" id="DRV_AREA" name="DRV_AREA" title="운전 면허증 지역 선택" hname="운전 면허증 발급 지역">
                                                            <option value="">선택하세요</option>
                                                            <option value="서울">서울</option>
                                                            <option value="11">11</option>
                                                            <option value="부산">부산</option>
                                                            <option value="12">12</option>
                                                            <option value="경기">경기</option>
                                                            <option value="13">13</option>
                                                            <option value="강원">강원</option>
                                                            <option value="14">14</option>
                                                            <option value="충북">충북</option>
                                                            <option value="15">15</option>
                                                            <option value="충남">충남</option>
                                                            <option value="16">16</option>
                                                            <option value="전북">전북</option>
                                                            <option value="17">17</option>
                                                            <option value="전남">전남</option>
                                                            <option value="18">18</option>
                                                            <option value="경북">경북</option>
                                                            <option value="19">19</option>
                                                            <option value="경남">경남</option>
                                                            <option value="20">20</option>
                                                            <option value="제주">제주</option>
                                                            <option value="21">21</option>
                                                            <option value="인천">인천</option>
                                                            <option value="23">23</option>
                                                            <option value="대구">대구</option>
                                                            <option value="22">22</option>
                                                            <option value="광주">광주</option>
                                                            <option value="대전">대전</option>
                                                            <option value="25">25</option>
                                                            <option value="울산">울산</option>
                                                            <option value="26">26</option>
                                                            <option value="28">28</option>
                                                        </select>
                                                            
                                                        <input type="text" name="DRV_NO1" id="DRV_NO1" maxlength="2" class="i-text number tl" title="운전면허 첫번째 자리 번호 입력" hname="운전면허증 일련번호 첫번째 자리" style="width: 50px; text-align: right;" npkencrypt="off" pattern="[0-9]*"> 
                                                        <input type="text" name="DRV_NO2" id="DRV_NO2" maxlength="6" class="i-text number tl" title="운전면허 두번째 자리 번호 입력" hname="운전면허증 일련번호 두번째 자리" style="width: 100px; text-align: right;" npkencrypt="off" pattern="[0-9]*"> 
                                                        <input type="text" name="DRV_NO3" id="DRV_NO3" maxlength="2" class="i-text number tl" title="운전면허 세번째 자리 번호 입력" hname="운전면허증 일련번호 세번째 자리" style="width: 50px; text-align: right;" npkencrypt="off" pattern="[0-9]*">
                                                        
                                                    </div>
                                                    		 
                                                    
                                                    <div>
                                                    <span>
                                                        <b>일련번호</b>
                                                    </span> 
                                                    <input type="password" name="DRV_SEQ"  id="DRV_SEQ" maxlength="6" class="i-text" title="운전면허증 일련번호 입력"/>
                                                    
                                                       
                                                    </div>
                                                    
                                                    <p>발급일자

                                                    </span> 
                                                        <input type="i-text number" name="DRV_ISUE_YMD"  id="DRV_ISUE_YMD" maxlength="8" class="i-text" title="운전면허증  발급일자" />
                                                    </p>
                                                     
                                                
                                                </div>
                                                <!-- //운전면허증 -->
                                                
                                            </td>
                                        </tr>			
                                        
                                        				
                                        <!-- 외국인일 경우 노출영역 -->
                                        <tr class="foreigner_input" style="display:none;">
                                            <th class="vt">신분증사본</th>
                                            <td class="tdright">
                                                <span class="input_file" id="cont_send_fileName_text">
                                                    <input type="file" id="cont_send_fileName" name="cont_send_fileName" onchange="">
                                                    <em id="cont_send_fileName_em">
                                                    </em>
                                                </span>
                                                <a href="" class="btn02 middle border ml5" name="main_file_upload" onclick="">파일찾기</a>
                                                <a href="" class="btn02 middle border ml5" name="main_file_upload" onclick="">파일등록</a>
                                                <p class="fs12 mt5">신분증 사진 또는 스캔하여 등록(3MB 이하, tif / jpg / gif / bmp 등)</p>
                                            </td>
                                        </tr>
                                        <tr class="foreigner_input" style="display:none;">
                                            <th class="vt">국적</th>
                                            <td class="nation_search tdright">
                                                <div class="rdo_type01 custom-label" id="nf-nations-favoirte-table">
            
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="중국 선택" value="003">
                                                    <span class="bg_white">중국</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="베트남 선택" value="009">
                                                    <span class="bg_white">베트남</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="미국 선택" value="001">
                                                    <span class="bg_white">미국</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="필리핀 선택" value="018">
                                                    <span class="bg_white">필리핀</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="인도네시아 선택" value="180">
                                                    <span class="bg_white">인도네시아</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="일본 선택" value="002">
                                                    <span class="bg_white">일본</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="태국 선택" value="213">
                                                    <span class="bg_white">태국</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="몽골 선택" value="084">
                                                    <span class="bg_white">몽골</span>
                                                </label>
                                            </div>

                                                <p class="mt5 mb5">
                                                    <input type="text" class="input" title="국가명을 입력하세요" placeholder="국가명 찾기" id="nf-keyword">
                                                    <a href="" class="btn02 middle border ml5" onclick="">국가명찾기</a>
                                                </p>
            
                                                국가명 검색결과
                                                <span class="rdo_type01" id="nf-nations-table">
                                                </span>
                                                <!-- 국가명 검색결과 -->
            
                                            </td>
                                        </tr>
                                        
                                        
                                        <tr class="foreigner_input" style="display:none;">
                                            <th>영문성명</th>
                                            <td class="tdright">
                                                <input type="text" class="input" name="CUST_ENG_NM1" id="CUST_ENG_NM1" title="First Name 입력" maxlength="15" placeholder="First Name">
                                                <input type="text" class="input" name="CUST_ENG_NM2" id="CUST_ENG_NM2" title="Family Name 입력" maxlength="15" placeholder="Family Name">
                                                <input type="text" class="input" name="CUST_ENG_NM3" id="CUST_ENG_NM3" title="Maiden Name 입력" maxlength="15" placeholder="Maiden Name">
                                            </td>
                                        </tr>
                                        <tr class="foreigner_input" style="display:none;">
                                            <th>비자등급</th>
                                            <td class="tdright">
                                                <select class="sbox" title="비자등급 선택" name="VISA_KND">
                                                    <option value="">선택하세요</option>
                                                    <option value="A-1">외교</option>
                                                    <option value="A-2">공무</option>
                                                    <option value="A-3">협정</option>
                                                    <option value="B-1">사증면제</option>
                                                    <option value="B-2">관광통과</option>
                                                    <option value="C-1">일시취재</option>
                                                    <option value="C-2">단기상용</option>
                                                    <option value="C-3">단기종합</option>
                                                    <option value="C-4">단기취업</option>
                                                    <option value="D-1">문화예술</option>
                                                    <option value="D-10">구직</option>
                                                    <option value="D-2">유학</option>
                                                    <option value="D-3">산업연수</option>
                                                    <option value="D-4">일반연수</option>
                                                    <option value="D-5">취재</option>
                                                    <option value="D-6">종교</option>
                                                    <option value="D-7">주재</option>
                                                    <option value="D-8">기업투자</option>
                                                    <option value="D-9">무역경영</option>
                                                    <option value="E-1">교수</option>
                                                    <option value="E-10">선원취업</option>
                                                    <option value="E-2">회화지도</option>
                                                    <option value="E-3">연구</option>
                                                    <option value="E-4">기술지도</option>
                                                    <option value="E-5">전문직업</option>
                                                    <option value="E-6">예술흥행</option>
                                                    <option value="E-7">특정활동</option>
                                                    <option value="E-9">비전문취업</option>
                                                    <option value="F-1">방문동거</option>
                                                    <option value="F-2">거주</option>
                                                    <option value="F-3">동반</option>
                                                    <option value="F-4">재외동포</option>
                                                    <option value="F-5">영주</option>
                                                    <option value="F-6">결혼이민</option>
                                                    <option value="G-1">기타</option>
                                                    <option value="H-1">관광취업</option>
                                                    <option value="H-2">방문취업</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <!-- //외국인일 경우 노출영역 -->
            
                                        <tr>
                                            <th class="vt">실소유확인</th>
                                            <td class="tdright">
                                                고객님께서 이 금융거래의 실 소유주이신가요?
                                                <span class="rdo_type01 custom-label ml10 realOwn-Yn">
                                                    <label>
                                                        <input type="radio" class="d-radio" name="REAL_OWN_YN" value="Y" title="예 선택" hname="실소유여부" required="required">
                                                        <span class="bg_white">예</span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" class="d-radio" name="REAL_OWN_YN" value="N" title="아니오 선택" hname="실소유여부" required="required">
                                                        <span class="bg_white">아니오</span>
                                                    </label>
                                                </span>
                                            </td>
                                        </tr>
                                        
                                        <!-- <tr class="low_item first">
                                            <th>이름</th>
                                            <td class="tdright">
                                                <input type="text" class="input" title="이름 입력" id="REAL_OWN_NM" name="REAL_OWN_NM" maxlength="50">
                                            </td>
                                        </tr>
                                        <tr class="low_item">
                                            <th>주민번호</th>
                                            <td class="tdright">
                                                <input type="text" class="input number tl" hname="실소유주의 주민번호 앞 6자리" title="실소유주의 주민번호 앞 6자리 입력" name="REAL_OWN_SSN1" maxlength="6"pattern="[0-9]*"> -
                                                <input type="password" id="REAL_OWN_SSN2" name="REAL_OWN_SSN2"class="input nppfs-npk nppfs-npv" maxlength="7" hname="실소유주의 주민번호뒷자리" title="실소유주의 주민번호 뒷자리 입력">
                                                <span class="rdo_type01 ">
                                                    <label class="drvtype">
                                                        <input type="checkbox" id="ess_text_real_own_ssn2" name="ess_text_real_own_ssn2" value="Y" class="d-radio">
                                                        마우스 입력
                                                    </label>
                                                </span>
                                            </td>
                                        </tr>

                                         <tr class="low_item last">
                                            <th>국적</th>
                                            <td class="tdright">
                                                <p class="mt5 mb5">
                                                    <input type="text" class="input" title="국가명을 입력하세요" placeholder="국가명 찾기" id="nf-keyword-real">
                                                    <a class="btn02 middle border ml5">국가명찾기</a>
                                                </p>							
            
                                                국가명 검색결과
                                                <span class="rdo_type01 custom-label auto_label line_label" id="nf-nations-table-real">
                                                </span>
                                             </td>
                                        </tr> -->
            
            
         
                                        <tr>
                                            <th class="vt">이메일</th>
                                            <td class="tdright">
                                                <input type="text" class="input" id="MAIL_ID" name="MAIL_ID" hname="이메일아이디" title="이메일 아이디 입력" maxlength="30" > @ 
                                                <input type="text" class="input" id="MAIL_POTAL_NAME" name="MAIL_POTAL_NAME" hname="이메일포탈주소" title="도메인 직접입력" maxlength="30">
                                                <select class="sbox" title="이메일 선택"  name="SetMailGubun">
                                                    <option value="">직접입력</option>
                                                    <option value="naver.com">네이버</option>
                                                    <option value="daum.net">다음</option>
                                                    <option value="hanmail.net">한메일</option>
                                                    <option value="nate.com">네이트</option>
                                                    <option value="gmail.com">지메일</option>
                                                    <option value="hotmail.com">핫메일</option>
            
                                                </select>
                                                <p class="fs12 mt5">입력하신 이메일로 청약 관련 서류를 보내드리니 꼭~한번 더 확인해주세요.</p>
                                                <input type="hidden" id="E_CMMU_VAL" name="E_CMMU_VAL" value="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>휴대폰번호</th>
                                            <td  class="tdright">
                                                <select class="sbox" title="휴대폰번호 앞자리 선택"id="T_CMMU_VAL_DDD" name="T_CMMU_VAL_DDD">
                                                    <option value="010">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="019">019</option>
                                                </select>
                                                -
                                                <input type="text" class="input number tl" title="휴대폰번호 나머지 자리 입력" placeholder="-없이 입력" id="T_CMMU_VAL" name="T_CMMU_VAL" required="required" maxlength="8" hname="휴대폰번호" pattern="[0-9]*">
                                                <input type="hidden" name="T_CMMU_VAL_GUK" id="T_CMMU_VAL_GUK">
                                                <input type="hidden" name="T_CMMU_VAL_NO" id="T_CMMU_VAL_NO">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">우편물수령지</th>
                                            <td  class="tdright">
                                                <span class="rdo_type01 custom-label">
                                                    <label class="address1">
                                                        <input type="radio" class="d-radio" name="P_PST_RCVA" value="10" title="자택주소 입력 팝업창이 바로 열립니다.">
                                                        <span class="vt">자택</span>
                                                    </label>
                                                    <label class="address2">
                                                        <input type="radio" class="d-radio" name="P_PST_RCVA" value="20" title="직장주소 입력 팝업창이 바로 열립니다.">
                                                        <span class="vt">직장</span>
                                                    </label>
                                                    <a class="btn02 middle border ml5" name="postNoFind" title="우편번호 찾기 화면이 팝업 됩니다.">주소찾기</a>
                                                </span>
                                                <input type="text" class="input mt5 nppfs-npk" id="POST_ADDR_TEXT" name="POST_ADDR_TEXT" title="우편물수령지 주소 입력" >
                                                <input type="hidden" class="input fs12 mt5 w100" id="POST_ADDR" name="POST_ADDR" title="우편물수령지 주소 입력">
                                                <input type="hidden" id="POST_NO" name="POST_NO" class="input" hname="우편번호" title="우편번호 입력" >
                                                <input type="hidden" id="ADDR_DTL" name="ADDR_DTL" class="input" hname="상세주소" title="상세주소" >
                                                <input type="hidden" id="ETC_ADDR" name="ETC_ADDR" class="input" hname="상세주소2" title="상세주소2">
                                                <input type="hidden" id="BLDG_MGNT_NO" name="BLDG_MGNT_NO">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">증권 수령방법
                                                							
                                            </th>
                                            <td class="tdright">
                                                <span class="rdo_type01 custom-label">
                                                    <label class="mail01">
                                                        <input type="radio" class="d-radio" name="PLCY_CVY_MTH" value="2" required="required" hname="증권수령방법" title="우편 선택">
                                                        <span class="vt">우편</span>
                                                    </label>
                                                    <label class="mobile01">
                                                        <input type="radio" class="d-radio" name="PLCY_CVY_MTH" value="A" required="required" hname="증권수령방법" title="모바일 선택">
                                                        <span class="vt">모바일</span>
                                                    </label>
                                                </span>		
                                                <p class="fs12 mt5">모바일 선택시 진행하신 다운로드 이력을 확인하며, 다운로드 미진행시 우편으로 발송됩니다.</p>							
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">안내장 수령방법
                                                
                                            </th>
                                            <td class="tdright">
                                                <span class="rdo_type01 custom-label">
                                                    <label class="mail01">
                                                        <input type="radio" class="d-radio" name="DOC_CVY_MTH" value="1" hname="안내장 수령방법" title="우편 선택">
                                                        <span class="vt">우편</span>
                                                    </label>
                                                    <label><input type="radio" class="d-radio" name="DOC_CVY_MTH" value="2" hname="안내장 수령방법" title="이메일 선택">
                                                        <span class="bg_white">
                                                            <em class="fs16">@</em> 
                                                            이메일
                                                        </span>
                                                        </label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">청약서 및 약관 모바일 전달 서비스 신청</th>
                                            <td class="tdright">
                                                <span class="rdo_type01 custom-label">
                                                    <label>
                                                        <input type="radio" class="d-radio" name="MOB_CVY_YN" value="Y" required="required" hname="모바일전달서비스" title="신청">
                                                        <span class="bg_white">신청</span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" class="d-radio" name="MOB_CVY_YN" value="N" required="required" hname="모바일전달서비스" title="미신청">
                                                        <span class="bg_white">미신청</span>
                                                    </label>
                                                </span>
                                                <p class="fs12 mt5">신청시 모바일에서 진행하신 다운로드 이력을 확인합니다.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">직업</th>
                                            <td class="tdright">
                                                <span class="rdo_type01 custom-label jobbtn">
            
                
                
                                                    <label class="job01">
                                                        <input type="radio" class="d-radio" name="job_dummy"  ><span class="vt">사무직</span>
                                                    </label>
                                                    <label class="job02">
                                                        <input type="radio" class="d-radio" name="job_dummy"><span class="vt">자영업</span>
                                                    </label>
                                                    <label class="job03">
                                                        <input type="radio" class="d-radio" name="job_dummy" ><span class="vt">주부</span>
                                                    </label>
                                                    <label class="job04">
                                                        <input type="radio" class="d-radio" name="job_dummy"><span class="vt">기타</span>
                                                    </label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                                <th>
                                                    전문금융소비자 여부
                                                </th>
                                                <td class="tdright">
                                                        <span class="rdo_type01 custom-label">
                                                            <label class="on"><input type="radio" class="d-radio" id="FINANCE" name="FINANCE" value="02" checked="checked" >
                                                                <span class="bg_white" id="finance2">일반금융소비자</span></label>
                                                            <label><input type="radio" class="d-radio" id="FINANCE" name="FINANCE" value="01">
                                                                <span class="bg_white" id="finance1">전문금융소비자</span>
                                                            </label>
                                                        </span>	
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
	                                            	일반금융소비자로 대우 변경
                                                </th>
                                                <td class="tdright">
                                                    <span class="rdo_type01 custom-label">
                                                        <label>
                                                            <input type="radio" class="d-radio" id="CHANGE_YN" name="CHANGE_YN" value="Y" disabled="disabled">
                                                            <span class="bg_gray" id="changeYn1">예</span>
                                                        </label>
                                                        <label class="on"><input type="radio" class="d-radio" id="CHANGE_YN" name="CHANGE_YN" value="N" checked="checked">
                                                            <span class="bg_gray" id="changeYn2">아니요</span>
                                                        </label>
                                                    </span>					
                                                </td>
                                            </tr>
            
                                        <tr class="ssDrvtr">
                                            <th class="vt">운전여부</th>
                                            <td class="tdright">
                                                <span class="rdo_type01 custom-label radio-driverYn">
                                                    <label class="">
                                                        <input type="radio" class="d-radio" name="DRY_YN" value="N" hname="운전여부" title="운전안함 선택" id="undrive" onchange="checkDrive()">
                                                        <span class="bg_white">운전안함</span>
                                                    </label>
                                                    <label class="">
                                                        <input type="radio" class="d-radio" name="DRY_YN" value="Y" hname="운전여부" title="운전함 선택" id="drive" onchange="checkDrive()">
                                                        <span class="bg_white">운전함</span>
                                                    </label>
                                                    
                                                </span>
                                               <span class="fs12 vm">운전하는 차량을 모두 선택해 주세요.</span>
            
                                                <div class="box_car box" name="radio_driverY" style="display:none;" id="carBox" >
                                                    <dl>
                                                        <dt><b>승용차</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype">
                                                                    <input type="checkbox" class="d-radio" name="DRV_CARS" value="2014" title="승용차(자가용) 선택">자가용</label>
                                                                    <br>
                                                                <label class="drvtype">
                                                                    <input type="checkbox" class="d-radio" name="DRV_CARS" value="1315" title="승용차(영업용) 선택">영업용</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt><b>승합차</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1924" title="승합차(자가용) 선택">자가용</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1825" title="승합차(영업용) 선택">영업용</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt><b>화물차</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1744" title="화물차(자가용) 선택">자가용</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1645" title="화물차(영업용) 선택">영업용</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt class="line2"><b>오토바이</b><br><span class="fs12">(500cc미만포함)</span></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1264" title="오토바이(50cc 미만 포함)(자가용) 선택">자가용</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1165" title="오토바이(50cc 미만 포함)(영업용) 선택">영업용</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt><b>기타</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1584" title="농기계류 선택">농기계류</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1494" title="건설기계류 선택">건설기계류</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
                                                    
                                                    
                                                </div>

                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">이륜자동차 또는 <br>원동기장치 자전거 <br>사용여부</th>
                                            <td class="tdright">
                                                <span class="rdo_type01 custom-label">
                                                    <label>
                                                        <input type="radio" class="d-radio" id="MOTOCYLE_YN" name="MOTOCYLE_YN" value="Y" required="required" hname="이륜자동차 또는 원동기장치 자전거 사용여부" title="예">
                                                        <span class="bg_white">예</span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" class="d-radio" id="MOTOCYLE_YN" name="MOTOCYLE_YN" value="N" required="required" hname="이륜자동차 또는 원동기장치 자전거 사용여부" title="아니요">
                                                        <span class="bg_white">아니요</span>
                                                    </label>
                                                </span>
                                                <p class="fs12 mt5"><b>이륜자동차란?</b> 자동차관리법상 이륜차로 분류되는 삼륜 또는 사륜의 자동차를 포함</p>
                                                <p class="fs12 mt5"><b>원동기장치 자전거란?</b> 전동킥보드, 전동이륜평행차, 전동기의 동력만으로 움직일 수 있는 자전거 등 개인형 이동장치를 포함(다만, 전동휠체어, 의료용 스쿠터 등 보행보조용 의자차는 제외.)</p>
                                                <p class="fs12 mt5">* 계속적으로 직업, 직무 또는 동호회 활동과 출퇴근용도 등으로 사용하는 경우에 선택.</p>
                                            </td>
                                        </tr>
            
            
                                    </tbody>
                                </table>
                            </dd>
                        </dl>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 장애인 세액공제 여부 -->
   <div class="subscrip2 setBorder">
            <dl>
                <dd>
                    <table>
                        <tbody>

                            <tr>
                                <th>
                                    장애인<br>세액공제여부
                                </th>
                                <td>
                                    <b>[장애인일 경우]</b> 세액공제 적용 확대를 위해 <b>장애인 전용보험 전환특약</b>을 신청하시겠습니까?
                                    <div class="rdo_type01 custom-label id-gb">
                                        <input type="radio" name="HNDI_APPLY_YN" class="d-radio" value="Y" title="예">
                                        <span>예</span>
                                        <input type="radio" name="HNDI_APPLY_YN" class="d-radio" value="N" title="아니오">
                                        <span>아니오</span>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <th>
                                     필수, 선택<br>동의
                                </th> 
                                <td>
                                    <p>보험가입을 위한 필수정보 동의 및 부가서비스에 대한 선택 동의가 필요합니다.</p> 
                                    <a href="page07.jsp" onclick="page07.jsp" class="btn02 middle border" id="PersonInfoAgree_text">확인하기</a>        
                                </td>
                            </tr> 
                        </tbody>
                    </table>
                </dd>
            </dl>
        
    </div>
        

        <div class="btn_group tc mt30">
            <a href="page10.sp">휴대폰인증 후 저장</a>
        </div>
    </div>
       
		
		


</body>
</html>