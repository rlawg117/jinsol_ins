<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>필수 선택 동의</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/page07.js"></script>
<script src="jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

<%

	request.setCharacterEncoding("UTF-8");

	String myname = request.getParameter("CUST_NM");
	session.setAttribute("myname", myname);
	
	String email1 =request.getParameter("MAIL_ID");
	session.setAttribute("email1", email1);
	
	String email2 = request.getParameter("MAIL_POTAL_NAME");
	session.setAttribute("email2", email2);
	
	String call = request.getParameter("T_CMMU_VAL");
	session.setAttribute("call", call);


%>

<form action="page10.jsp" method="post">

 <div class="wrap_content wrap" >
        <div>

            <h2 class="txtcenter">필수동의, 선택 동의</h2>
        </div>

        <div class="contents">
            <div id="agree1" class="tab_cont wrap" style="margin-bottom: 2%">
                <h4>소비자권익보호에 관한 사항</h4>
                <p>본 동의를 거부하시는 경우에는 보험계약 체결 / 이행 등이 불가능하며 본 동의서에 의한 개인(신용)정보 조회는 귀하의 신용등급에 영향을 주지 않습니다.</p>

                <label class="all_click">
                    <input type="checkbox" class="checkbox" id="allck" name="checkbox" onclick='selectAll(this)'><b>전체 동의</b>
                </label>
                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck1" title="개인(신용)정보 수집 및 이용에 관한 사항" onchange="checks01()">
                        <a>개인(신용)정보 수집 및 이용에 관한 사항</a>
                    </dt>
                    <dd id="s01" style="display:none ;">
                        <div class="table_wrap2">
                            <table>
                                <thead>
                                  <tr>
                                    <th colspan="2">수집 및 이용에 관한 사항</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td>수집, 이용목적</td>
                                    <td>- 보험계약 상담, 재무설계서비스, 보험계약 인수여부 판단(건강진단 및 계약 적부조사 포함)<br>- 보험계약 인수심사·체결·이행·유지·관리(부활 및 갱신 포함)- 순보험료율의 산출·검증, 민원처리 및 분쟁 대응, 금융거래 관련 업무- 보험모집질서의 유지(공정경쟁질서 유지에 관한 협정업무 포함), 신분증진위여부확인- 가입한 보험계약 상담, 법률 및 국제 협약 등의 의무 이행</td>
                                  </tr>
                                  <tr>
                                    <td rowspan="2">보유 및 이용기간</td>
                                    <td>가입설계 : 동의일로부터 1년까지<br>계약체결 : 동의일로부터 거래 종료 후 5년까지<br>(단, 다른 관련법령에 해당하는 경우 해당 법령상의 보존기간을 따름)<br></td>
                                  </tr>
                                  <tr>
                                    <td>위 보유 기간에서의 거래 종료일이란<br>"1.보험계약 만기, 해지, 취소, 철회일 또는 소멸일 <br>2.보험금 청구권 소멸시효 완성일(상법 제662조) <br>3. 채권채무 관계 소멸일 중 가장 나중에 도래한 사유를 기준으로 판단한 날"을 말한다.</td>
                                  </tr>
                                </tbody>
                            </table>

                            <table>
                                <thead>
                                  <tr>
                                    <th colspan="3">수집 이용 항목</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td rowspan="2">고유식별정보</td>
                                    <td colspan="2">주민등록번호, 외국인등록번호, 여권번호, 운전면허번호</td>
                                  </tr>
                                  <tr>
                                    <td>위 고유식별정보 수집 · 이용에 동의 하십니까?</td>
                                    <td>□ 미동의&nbsp;&nbsp;□ 동의</td>
                                  </tr>
                                  <tr>
                                    <td rowspan="2">민감정보</td>
                                    <td colspan="2">피보험자의 질병 ·상해에 관한 정보(상병명, 진료기록, 흡연여부, 기왕증 등)</td>
                                  </tr>
                                  <tr>
                                    <td>위 민감정보 수집 · 이용에 동의 하십니까?</td>
                                    <td>□ 미동의  □ 동의</td>
                                  </tr>
                                  <tr>
                                    <td>개인신용정보</td>
                                    <td colspan="2"></td>
                                  </tr>
                                  <tr>
                                    <td>일반개인정보</td>
                                    <td colspan="2">성명, 주소, 생년월일, 이메일, 유·무선 전화번호, 성별, 국적, 직업, 운전여부, 국내 거소신고번호, 가족관계</td>
                                  </tr>
                                  <tr>
                                    <td>신용거래정보</td>
                                    <td colspan="2">금융거래 업무 관련 정보(납입 계좌정보 등), 보험계약정보(상품종류, 기간, 보험가입금액 등), 보험금정보(보험금 지급사유, 지급금액 등), 계약 전 알릴 의무사항(취미 등)</td>
                                  </tr>
                                  <tr>
                                    <td rowspan="2">신용능력정보</td>
                                    <td colspan="2">소득 및 재산 정보</td>
                                  </tr>
                                  <tr>
                                    <td>위 개인신용정보 수집 · 이용에 동의 하십니까?</td>
                                    <td>□ 미동의  □ 동의</td>
                                  </tr>
                                </tbody>
                                </table>

                        </div>
                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck2" title="개인(신용)정보 제공에 관한 사항" onchange="checks01()">
                        <a>개인(신용)정보의 제공에 관한 사항</a>
                    </dt>
                
                    <dd  id="s02" style="display:none ;">
                        <table>
                            <thead>
                            <tr>
                                <th colspan="3">수집 이용 항목</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td rowspan="2">고유식별정보</td>
                                <td colspan="2">주민등록번호, 외국인등록번호, 여권번호, 운전면허번호</td>
                            </tr>
                            <tr>
                                <td>위 고유식별정보 수집 · 이용에 동의 하십니까?</td>
                                <td>□ 미동의&nbsp;&nbsp;□ 동의</td>
                            </tr>
                            <tr>
                                <td rowspan="2">민감정보</td>
                                <td colspan="2">피보험자의 질병 ·상해에 관한 정보(상병명, 진료기록, 흡연여부, 기왕증 등)</td>
                            </tr>
                            <tr>
                                <td>위 민감정보 수집 · 이용에 동의 하십니까?</td>
                                <td>□ 미동의  □ 동의</td>
                            </tr>
                            <tr>
                                <td>개인신용정보</td>
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <td>일반개인정보</td>
                                <td colspan="2">성명, 주소, 생년월일, 이메일, 유·무선 전화번호, 성별, 국적, 직업, 운전여부, 국내 거소신고번호, 가족관계</td>
                            </tr>
                            <tr>
                                <td>신용거래정보</td>
                                <td colspan="2">금융거래 업무 관련 정보(납입 계좌정보 등), 보험계약정보(상품종류, 기간, 보험가입금액 등), 보험금정보(보험금 지급사유, 지급금액 등), 계약 전 알릴 의무사항(취미 등)</td>
                            </tr>
                            <tr>
                                <td rowspan="2">신용능력정보</td>
                                <td colspan="2">소득 및 재산 정보</td>
                            </tr>
                            <tr>
                                <td>위 개인신용정보 수집 · 이용에 동의 하십니까?</td>
                                <td>□ 미동의  □ 동의</td>
                            </tr>
                            </tbody>
                        </table>
                        <p>
                            * 외국 재보험사의 국내지점이 재보험계약 가입 판단 지원, 보험계약 공동인수 지원 업무를 위탁하기 위한 경우 별도의 동의 없이 외국 소재 본점에 귀하의 정보를 이전할 수 있습니다.
                        </p>

                        <table>
                            <thead>
                              <tr>
                                <th colspan="3">제공항목</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td rowspan="2">고유식별정보</td>
                                <td colspan="2">주민등록번호, 외국인등록번호, 여권번호, 운전면허번호</td>
                              </tr>
                              <tr>
                                <td>위 고유식별정보 수집 · 이용에 동의 하십니까?</td>
                                <td>□ 미동의&nbsp;&nbsp;□ 동의</td>
                              </tr>
                              <tr>
                                <td rowspan="2">민감정보</td>
                                <td colspan="2">피보험자의 질병 ·상해에 관한 정보(상병명, 진료기록, 흡연여부, 기왕증 등)</td>
                              </tr>
                              <tr>
                                <td>위 민감정보 제공에 동의 하십니까?</td>
                                <td>□ 미동의  □ 동의</td>
                              </tr>
                              <tr>
                                <td>개인신용정보</td>
                                <td colspan="2"></td>
                              </tr>
                              <tr>
                                <td>일반개인정보</td>
                                <td colspan="2">성명, 주소, 생년월일, 이메일, 유·무선 전화번호, 성별, 국적, 직업, 운전여부, 국내 거소신고번호, 가족관계</td>
                              </tr>
                              <tr>
                                <td>신용거래정보</td>
                                <td colspan="2">금융거래 업무 관련 정보(납입 계좌정보 등), 보험계약정보(상품종류, 기간, 보험가입금액 등), 보험금정보(보험금 지급사유, 지급금액 등), 계약 전 알릴 의무사항(취미 등)</td>
                              </tr>
                              <tr>
                                <td rowspan="2">신용능력정보</td>
                                <td colspan="2">소득 및 재산 정보</td>
                              </tr>
                              <tr>
                                <td>위 개인신용정보 제공에 동의 하십니까?</td>
                                <td>□ 미동의  □ 동의</td>
                              </tr>
                            </tbody>
                            </table>
                            <p>
                                * 업무위탁을 목적으로 개인(신용)정보를 처리하는 경우 별도의 동의 없이 업무 수탁자에게 귀하의 정보를 제공할 수 있습니다. (홈페이지 [www.heungkuklife.co.kr]에서 확인 가능)
                            </p>

                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck3" title="개인(신용)정보 조회에 관한 사항" onchange="checks01()">
                        <a>개인(신용)정보의 조회에 관한 사항</a>
                    </dt>
        
                    <dd  id="s03" style="display:none ;">
                        <table>
                            <thead>
                              <tr>
                                <th colspan="2">조회에 관한 사항</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>조회대상 기관</td>
                                <td></td>
                              </tr>
                              <tr>
                                <td>조회목적</td>
                                <td>- 종합신용정보집중기관: 보험계약 인수심사·체결·이행·유지·관리(부활 및 갱신 포함), 보험 가입한도 조회, 실제 발생하는 손해를 보상하는 실손형 보험의 중복 확인, 민원처리 및 분쟁대응, 실명인증, 보험금 등 지급‧심사, 보험사고 조사<br>- 보험요율산출기관: 보험계약의 인수심사·체결·이행·유지·관리(부활 및 갱신 포함), 보험금 등 지급‧심사, 보험사고 조사<br>- 신용정보회사 : 계약체결 및 유지여부 판단, 연체관리, 통계작성, 연구·분석, 민원처리, 실명확인 및 본인인증<br>- 통신사 : 실명확인 및 본인인증<br>- 공공기관, 도로교통공단, 금융보안원, 경찰청 : 신분증 진위여부 확인</td>
                              </tr>
                              <tr>
                                <td>조회 동의의 효력기간</td>
                                <td>가입설계 : 동의일로부터 1년까지<br> 계약체결 : [당 사]의 조회 결과 귀하와의 보험거래가 개시되는 경우 해당 보험거래종료 후 5년까지 동의의 효력이 지속됩니다. 다만, [당 사]의 조회 결과 귀하가 신청한 보험 거래의 설정이 거절된 경우에는 그 시점부터 동의의 효력은 소멸합니다.</td>
                              </tr>
                            </tbody>
                            </table>
                            
                            <table>
                                <thead>
                                  <tr>
                                    <th colspan="3">조회 항목</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td rowspan="2">고유식별정보</td>
                                    <td colspan="2">주민등록번호, 외국인등록번호, 여권번호, 운전면허번호</td>
                                  </tr>
                                  <tr>
                                    <td>위 고유식별정보 조회에 동의하십니까?</td>
                                    <td>□ 미동의 □ 동의</td>
                                  </tr>
                                  <tr>
                                    <td rowspan="2">민감정보</td>
                                    <td colspan="2">피보험자의 질병·상해에 관한 정보(상병명, 진료기록 등)</td>
                                  </tr>
                                  <tr>
                                    <td>위 민감정보 조회에 동의하십니까?</td>
                                    <td>□ 미동의 □ 동의</td>
                                  </tr>
                                  <tr>
                                    <td>개인신용정보</td>
                                    <td colspan="2"></td>
                                  </tr>
                                  <tr>
                                    <td>일반개인정보</td>
                                    <td colspan="2">성명, 국내거소신고번호, 국적, 주민등록증 발급일자, 운전면허증 암호일련번호</td>
                                  </tr>
                                  <tr>
                                    <td>신용거래정보</td>
                                    <td colspan="2">보험계약정보(상품종류, 기간, 보험가입금액 등), 보험금 정보(보험금 지급사유, 지급금액 등), 은행연합회 등 금융기관의 연금저축/비과세/세금우대종합저축 가입 총액 및 내역, 여신거래정보, 상거래 정보 등</td>
                                  </tr>
                                  <tr>
                                    <td>신용판단정보</td>
                                    <td colspan="2">신용질서 문란정보, 연체정보 등보</td>
                                  </tr>
                                  <tr>
                                    <td>신용능력정보</td>
                                    <td colspan="2">직업정보, 소득정보, 재산정보, 채무정보, 납세실적 정보 등</td>
                                  </tr>
                                  <tr>
                                    <td rowspan="2">공공정보 등</td>
                                    <td colspan="2">체납정보, 채무조정정보, 개인신용평점 및 보험평점, 공적장부 정보, 공공요금 납부정보, 주민등록 변동 정보 등</td>
                                  </tr>
                                  <tr>
                                    <td>위 개인신용정보 조회에 동의하십니까?</td>
                                    <td>□ 미동의 □ 동의</td>
                                  </tr>
                                </tbody>
                                </table>


                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck4" title="예금보험관계 설명제도에 관한 사항" onchange="checks01()">
                        <a>예금보험관계 설명제도에 관한 사항</a>
                    </dt>
                    <dd  id="s04" style="display:none ;">
                        <p>본인이 가입하는 금융상품은 예금자보호법에 따라 해약환급금(또는 만기 시 보험금이나 사고보험금)에 기타 지급금을 합하여 1인당 5천만원까지 보호됩니다. 이에 대하여 이해하였습니까?</p>
                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck5" title="전자적 방법에 의한 청약문서 수령 동의에 관한 사항" onchange="checks01()">
                        <a>전자적 방법에 의한 청약문서 수령 동의에 관한 사항</a>
                    </dt>
                    <dd  id="s05" style="display:none ;">
                        <p>보험계약청약서, 상품설명서, 약관 등 보험계약자료를 전자적 방법으로 수령하는것에 동의합니다.</p>
                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck6" title="출금이체 및 송금에 관한 사항" onchange="checks01()">
                        <a>출금이체 및 송금에 관한 사항</a>
                    </dt>
                    <dd  id="s06" style="display:none ;">
                        <p>출금이체 동의는 보험회사가 고객님(예금주)의 은행계좌로 부터 보험료를 출금하는 경우에 해당 고객(예금주)님으로부터 의무적으로 사전에 서면 또는 전자서명으로 동의를 얻도록 하는 제도입니다. 이는 ‘전자금융거래법’에 의거 전자금융거래의 안정성과 신뢰성을 확보하여 전자금융 소비자를 보호하기 위함입니다. 본 신청인은 전자금융거래법 출금이체에 대한 상세내용을 인지하고, 예금주가 동의한 상기 계좌를 이용하여 위 계약에 대한 보험료 출금이체 및 송금에 동의합니다.</p>
                        <p> <b>- 출금이체 동의여부 및 해지사실 통지안내 -</b> </p>
                        <p>은행 등 금융회사 및 금융결제원은 (지로/CMS/펌뱅킹/실시간출금)제도의 안정적 운영을 위하여 고객의(은행 등 금융회사 및 이용기관 보유) 연락처 정보를 활용하여 문자메세지, 유선 등으로 고객의 출금이체 동의여부 및 해지사실을 통지할 수 있습니다.</p>
                    </dd>
                </dl>
            </div>


            <div id="agree2" class="tab_cont wrap">
                <h4>소비자권익보호에 관한 사항</h4>

                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck7" title="개인[신용]정보의 수집·이용에 관한 사항(선택)" onchange="checks01()">
                        <a>개인[신용]정보의 수집·이용에 관한 사항(선택)</a>
                    </dt>
                    <dd  id="s07" style="display:none ;">
                        <table>
                            <thead>
                              <tr>
                                <th colspan="2">수집 · 이용에 관한 사항</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>수집 · 이용 목적</td>
                                <td>-상품 · 서비스 소개 및 판매 사은 · 판촉행사 안내 시장조사, 보험설계사 서비스</td>
                              </tr>
                              <tr>
                                <td>보유 및 이용 기간</td>
                                <td>- 계약 체결실적이 있는 경우 동의일로부터 5년<br>- 계약 체결실적이 없는 경우 동의일로부터 2년<br>(단, 비대면채널은 동의일로부터 최대 3년)</td>
                              </tr>
                              <tr>
                                <td>거부 권리 및 불이익</td>
                                <td>- 귀하는 아래 개인 신용 정보 수집 · 이용에 관한 동의를 거부하실 수 있습니다. <br>다만 동의하지 않으실 경우 이용 목적에 따른 혜택을 받지 못할 수 있습니다.</td>
                              </tr>
                            </tbody>
                        </table>

                        <table>
                            <thead>
                                <tr>
                                <th colspan="3">수집 · 이용 항목</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <td>개인(신용)정보</td>
                                <td></td>
                                <td rowspan="4">□ 미동의 □ 동의</td>
                                </tr>
                                <tr>
                                <td>일반개인정보</td>
                                <td>- 성명, 주소, 생년월일, 이메일, 유 · 무선 전화번호, 직업</td>
                                </tr>
                                <tr>
                                <td rowspan="2">신용거래정보</td>
                                <td>- 계약정보(상품종류, 기간, 가입금액 등)</td>
                                </tr>
                                <tr>
                                <td>위 개인 신용정보 수집 · 이용에 동의하십니까?</td>
                                </tr>
                            </tbody>
                        </table>

                        <table>
                            <thead>
                                <tr>
                                <th colspan="6">광고성 정보의 수신동의</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <td colspan="5">전자적 전송매체를 통한 광고성 정보의 수신을 동의하시겠습니까?</td>
                                <td rowspan="2">□ 미동의 □ 동의</td>
                                </tr>
                                <tr>
                                <td>전체</td>
                                <td>문자</td>
                                <td>이메일</td>
                                <td>전화(ARS)</td>
                                <td>DM</td>
                                </tr>
                            </tbody>
                        </table>
                    </dd>
                </dl>


                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck8" title="개인[신용]정보의 제공에 관한 사항(선택)" onchange="checks01()">
                        <a>개인[신용]정보의 제공에 관한 사항(선택)</a>
                    </dt>
                    <dd  id="s08" style="display:none ;">
                        <table>
                            <thead>
                              <tr>
                                <th colspan="2">제공에 관한 사항</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>제공받는 자</td>
                                <td>- 흥국화재(주), 흥국자산운용(주), 흥국증권(주), (주)티알엔, (주)티시스,<br>(주)고려저축은행, (주)예가람저축은행</td>
                              </tr>
                              <tr>
                                <td>제공받는자의 이용목적</td>
                                <td>- 제휴사 제휴사의 상품 ·서비스 소개 및 서비스 제공, 보험설계사 서비스</td>
                              </tr>
                              <tr>
                                <td>보유기간 및 이용기간</td>
                                <td>- 동읠일로부터 5년 또는 동의 철회시까지</td>
                              </tr>
                              <tr>
                                <td>거부 권리 및 불이익</td>
                                <td>- 귀하는 아래 개인 신용 정보 제공에 관한 동의를 거부하실 수 있습니다.<br>다만, 동의하지 않으시는 경우 이용 목적에 따른 혜택을 받지 못할 수 있습니다.</td>
                              </tr>
                            </tbody>
                        </table>

                        <table>
                            <thead>
                              <tr>
                                <th colspan="3">제공항목</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td colspan="2">개인(신용)정보</td>
                                <td rowspan="3">□ 미동의 □ 동의</td>
                              </tr>
                              <tr>
                                <td>일반개인 정보</td>
                                <td>- 성명, 주소, 생년월일, 이메일, 유 · 무선 전화번호, 직업</td>
                              </tr>
                              <tr>
                                <td></td>
                                <td>위 개인 신용정보 제공에 동의하십니까?</td>
                              </tr>
                            </tbody>
                        </table>
                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input type="checkbox" class="checkbox" id="ck9" title="이벤트 참여를 위한 동의" onchange="checks01()" >
                        <a>이벤트 참여를 위한 동의</a>
                    </dt>
                    <dd  id="s09" style="display:none ;" >
                        <p>이벤트 참여를 위해서는 아래 사항에 대한 동의가 필요합니다. <br> 이에 대한 동의가 없는 경우 이벤트 참여가 불가능함을 알려드립니다.</p>
                        □ 개인(신용)정보를 제공받는 자 
                        <table>
                            <thead>
                              <tr>
                                <th colspan="2">이벤트 사은품 발송처리를 위한 제공 목적 별 개인정보 제공 처</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>구분</td>
                                <td> 내용</td>
                              </tr>
                              <tr>
                                <td> 개인정보를 제공받는 자</td>
                                <td> (주)즐거운</td>
                              </tr>
                              <tr>
                                <td> 개인정보를 제공받는 자의 이용목적</td>
                                <td> 이벤트 당첨자에 대한 사은품 발송</td>
                              </tr>
                              <tr>
                                <td> 제공 할 개인정보의 내용</td>
                                <td> 성명, 전화번호(휴대폰번호)</td>
                              </tr>
                              <tr>
                                <td> 제공받는 자의 개인정보 이용, 보유기간</td>
                                <td>사은품 발송일로부터 5년</td>
                              </tr>
                            </tbody>
                        </table>
                            <p>본인은[개인정보보호법]에 따라 귀사가 본인의 개인(신용) 정보를 상기 내용과 같이 제공하는 것에 동의합니다.</p>
                            <p>동의를 거부할 권리가 있으며, 동의 거부시 이벤트 참여가 불가능 합니다.</p>
                    </dd>
                </dl>
            </div>

            <div class="txtcenter" style="margin: 2%">
              <button type="submit">확인</button>
            </div>
        </div>
    </div>
    
</form>
</body>
</html>