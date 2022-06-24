<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫페이지</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
</head>
<body>
 <div class="page1">
        <div class="setBorder setting">
            <h3>(무)흥국생명 온라인</h3>
            <h2>정기보험</h2>
            <h4>우리가족의 미래는 정기보험으로 안심!</h4>
        </div>
       
<!-- 정기 보험 가입하러가기 버튼 -->
    <div class="example MENU3" style="display:block ;" >
        

            <div class="setBorder setting">
                <h4>
                    <b>정기보험</b>
                    "보험료 알아보기"
                </h4>
                <div class="input_field">
                
                <form action="page02.jsp" method="post">
                    <table width="100%" summary="정기보험 보험료 계산을 위해 정보입력" class="setting">
                        <!-- 정기보험 -->
                        <colgroup>
                            <col width="110">
                            <col width="">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>
                                    생년월일
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
                                <th>흡연여부</th>
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
           	<input type="submit" value="보험료계산" clas>
            </a>
            </form>
            </div>

    </div>

    </div>
</div>

</body>
</html>