<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div>
        <div>
            <h3>(무)흥국생명 온라인</h3>
            <h2>정기보험</h2>
            <h4>우리가족의 미래는 정기보험으로 안심!</h4>
        </div>
       
<!-- 정기 보험 가입하러가기 버튼 -->
    <div class="example MENU3" style="display:block ;">
        <form action="/pcw/epd/epdMenu3TAction.do?topMenuId=MENU3" name="form_MENU3" method="post">

            <input type="hidden" name="NVKWD" value>
            <input type="hidden" name="NVADKWD" value>
            <input type="hidden" name="NVAR" value>
            <input type="hidden" name="NVADRANK" value>
            <input type="hidden" name="NVADID" value>

            <div class="side02">
                <h4>
                    <b>정기보험</b>
                    "보험료 알아보기"
                </h4>
                <div class="input_field">
                    <table width="100%" summary=""정기보험 보험료 계산을 위해 정보입력>
                        <!-- 정기보험 -->
                        <colgroup>
                            <col width="110">
                            <col width=""*>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>
                                    생년월일
                                    <span class="insurance_age">보험나이</span>
                                </th>
                                <td style="border-right:none;">
                                    <input type="text" id="custBirth_MENU3" name="custBirth_MENU3" maxlength="6" class="s-input number w100" placeholder="예시)720322" title="생년월일 입력">
                                </td>
                            </tr>
                            <tr>
                                <th>성별</th>
                                <td style="border-right:none;">
                                    <div class="rdo_type01 custom-label">
                                        <label class="dad">
                                            <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="남자 선택">
                                            <span>
                                                남자
                                            </span>
                                        </label>
                                        <label class="mam">
                                            <input type="radio" name="custGnder_MENU3" class="d-radio" value="2" title="여자 선택">
                                            <span>
                                                여자
                                            </span>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>흡연여부</td>
                                <td style="border-right:none;">
                                    <div class="rdo_type01 custom-labe">
                                        <label class="smoke_y">
                                            <input type="radio" name="smoke_yn" value="1" title="흡연 선택"  class="radio">
                                            <span>
                                                흡연
                                            </span>
                                        </label>
                                        <label class="smoke_n">
                                            <input type="radio" name="smoke_yn" value="2" title="비흡연 선택"  class="radio">
                                            <span>
                                                비흡연
                                            </span>
                                        </label>
                                    </div>
                                </td>
                            </tr>                       
                        </tbody>
                    </table>
                </div>
            <a href="./page02.html" onclick=" validate(form_MENU3) && l_fn_nextCheck('MENU3') && l_fn_MovePremCalc('MENU3')  && sendTM4marketings('MENU3','calc');" class="btn_insurance">
                <span>보험료 계산</span>
            </a>
            </div>

            <input type="hidden" name="custBirth">
            <input type="hidden" name="custGnder">
            <input type="hidden" name="MAIN_GUSTGNDER">
            <input type="hidden" name="MAIN_BHTERM">
            <input type="hidden" name="MAIN_BHTERM_TY">
            <input type="hidden" name="MAIN_NITERM">
            <input type="hidden" name="MAIN_NITERM_TY">
            <input type="hidden" name="MAIN_BH_AMT">
            <input type="hidden" name="MAIN_BH_RYO">
            <input type="hidden" name="MAIN_TEMP1">
            <input type="hidden" name="MAIN_TEMP2">
    </div>



    </form>



    </div>
</div>


</body>
</html>