<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건강상태 체크</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
<script src="jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<% 
	int manage = (Integer)session.getAttribute("manage");
	String birth = (String)session.getAttribute("birth");
	int num1 = (Integer)session.getAttribute("num1");
	String smoking = (String) session.getAttribute("smoking");
	String gender = (String) session.getAttribute("gender");
	String paymoney = (String) session.getAttribute("paymoney");
	String gang = (String) session.getAttribute("gang");
	String remoney =(String) session.getAttribute("remoney");
		
%>

<div class="healthy_wrap">
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
                        <dd id="p_item_cont1"><b><span>(<%=smoking %>)2종<%=gang %></span></b></dd>
                    </dl>
                    <dl class="period1">
                        <dt>보험기간</dt>
                        <dd id="p_item_cont2"><b><%=paymoney %></b></dd>
                    </dl>
                    <dl class="period2">
                        <dt>납입기간</dt>
                        <dd id="p_item_cont3"><b><b>전기납</b></b></dd>
                    </dl>
                    <dl class="money1">
                        <dt>가입금액</dt>
                        <dd id="p_item_cont6"><b><%=remoney %></b></dd>
                    </dl>
                    <dl>
                        <dt>월 보험료</dt>
                        <dd id="p_item_cont5"><b><%=num1 %>원</b></dd>
                    </dl>
                </div>
                <div class="subscription_cont">
                </div>
            </div>
        </div>

        <table class="tg">
            <thead>
              <tr>
                <td class="tg-0lax"> 000님의 건강상태를 입력하는 단계입니다.<br>피보험자에 관한 다음 사항은 회가사 보험계약의 청약을 심사하고 인수하는데 필요한 자료이므로 보험계약자 및 피보험자는 아래 질문들에 대해 사실대로 알려야 하며 직접 작성하시기 바랍니다.<br>만약 아래 질문들에 대하여 사실대로 알리지 않거나 사실과 다르게 알린 경우에는 보험가입이 거절될 수 있으며, 특히 아래 질병 및 장해 관련 질문에 대하여 알린 내용이 [중요한사항]에 해당하는 경우 회사는 보험약관에 따라 이 보험계약을 일방적으로 해지할 수 있고 이미 보험사고가 발생하였더라고 보험금 지급을 거절하는 등 보장이 제한될 수 있습니다.<br>* 부활(효력회복)시에는 계약전 알릴의무 대상기간을 최초 계약 해당일(또는 직전 부활(효력회복)일) 이후부터 부활(효력회복)을 청약한 날까지의 기간과 계약전 알릴의무 대상기간(아래 질문의 최근 3개월, 1년, 5년)중 짧은 기간으로 합니다.<br>* 다음 사항을 보험설계사 등에게 구두로 알린 경우레는 보험회사에 알리지 않은 것으로 간주되므로 청약서에 서면으로 알리시기 바랍니다.</td>
              </tr>
            </thead>
        </table>

        <table class="tg">
            <thead>
              <tr>
                <td class="tg-0lax rows" rowspan="3">1년이내 질병</td>
                <td class="tg-0lax"> 최근 3개월 이내에 의사로부터 진찰 또는 검사를 통하여 다음과 같은 의료행위를 받은 사실이 있습니까?<br>질병확정진단, 질병의심소견, 치료, 입원, 수술(제왕절개포함), 투약
                    <br>
                    <input type="radio" class="a-radio" name="a-radio" title="1년이내 질병 의료행위 예" value="0">
                    <a>예</a>
                    <input type="radio" class="a-radio" name="a-radio" title="1년이내 질병 의료행위 아니오" value="1">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax">최근 3개월 이내에 마약을 사용하거나 혈압강하제, 각성제(흥분제), 신경안정제, 수면제, 진통제 등 약품을 상시 복용한 사실이 있습니까?
                    <br>
                    <input type="radio" class="b-radio" name="b-radio" title="1년이내 질병 약품복용 예" value="10">
                        <a>예</a>
                    <input type="radio" class="b-radio" name="b-radio" title="1년이내 질병 약품복용 아니오" value="11">
                        <a>아니오</a>

                </td>
              </tr>
              <tr>
                <td class="tg-0lax">최근 1년 이내에 의사로 부터 진찰 또는 검사를 통하여 추가검사(재검사)를 받은 사실이 있습니까?
                    <br>
                    <input type="radio" class="c-radio" name="c-radio" title="1년이내 질병 추가검사 예"  value="20">
                        <a>예</a>
                    <input type="radio" class="c-radio" name="c-radio" title="1년이내 질병 추가검사 아니오" value="21">
                        <a>아니오</a>
                </td>
              </tr>
            </thead>
        </table>

        <table class="tg">
            <thead>
              <tr>
                <td class="tg-0lax rows" rowspan="2">5년이내 질병</td>
                <td class="tg-0lax">최근 5년 이내에 의사로부터 진찰 또는 검사를 통하여 다음과 같은 의료행위를 받은 사실이 있습니까?<br>입원, 수술(제왕절개포함), 계속하여 7일이상 치료, 30일 이상 투약
                    <br>
                    <input type="radio" class="d-radio" name="d-radio" title="5년이내 질병 의료행위 예"  value="30">
                        <a>예</a>
                    <input type="radio" class="d-radio" name="d-radio" title="5년이내 질병 의료행위 아니오" value="31">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax"> 최근 5년 이내에 10대질병으로 부터 진찰 또는 검사를 통하여 다음과 같은 의료행위를 받은 사실이 있습니까?<br>- 질병확정진단, 치료, 입원, 수술, 투약<br>- 10대질병 : 암, 백혈병, 고혈압, 협심증, 심근경색, 심장판막증, 간경화증, 뇌졸줄증(뇌출혈, 외경색), 당뇨병, 에이즈(AIDS) 및 HIV보균
                    <br>
                    <input type="radio" class="e-radio" name="e-radio"  title="5년이내 질병 10대질병 예"  value="40">
                        <a>예</a>
                    <input type="radio" class="e-radio" name="e-radio"  title="5년이내 질병 10대질병 아니오" value="41">
                        <a>아니오</a>
                </td>
              </tr>
            </thead>
        </table>

        <table class="tg">
            <thead>
              <tr>
                <td class="tg-0lax rows" rowspan="8"> 기타사항</td>
                <td class="tg-0lax"> 이륜자동차(자동차관리법상 이륜차로 분류되는 삼륜 또는 사륜의 자동차를 포함)<br>또는 원동기 장치 자전거(전동킥보드, 전동이륜평행차, 전동기의 동력만으로 움직일 수 있는 자전거 등 개인형 이동장치를 포함)를 사용하십니까?<br>(다마느 전동휠체어, 의료용 스쿠터 등 보행보조용 의자차는 제외합니다.)
                    <br>*계속적으로 사용(작업, 직무 또는 동호회 활동과 출퇴근용도 등으로 주로 사용하는 경우에 한함)하는 경우 기재<br>
                    <input type="radio" class="f-radio" name="f-radio" title="기타 이륜차 예"  value="50">
                        <a>예</a>
                    <input type="radio" class="f-radio" name="f-radio" title="기타 이륜차 아니오"  value="51">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax">최근 1년 이내에 다음과 같은 취미를 자주 반복적으로 하고 있거나 관련 자격증을 가지고 있습니까?<br>스쿠버다이빙 행글라이딩/패러글라이딩, 스카이다이빙, 수상스키, 자동차/오토바이 경주, 번지점프, 빙벽 암벽등반, 제트스키, 레프팅
                    <br>
                    <input type="radio" class="g-radio" name="g-radio" title="기타 취미 예"  value="60">
                    <a>예</a>
                    <input type="radio" class="g-radio" name="g-radio" title="기타 취미 아니오" value="61">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax"> 부업 또는 겸업, 계절적으로 종사하는 업무가 있습니까?
                    <br>
                    <input type="radio" class="h-radio" name="h-radio" title="기타 계절 예" value="70">
                        <a>예</a>
                    <input type="radio" class="h-radio" name="h-radio" title="기타 계절 아니오"  value="71">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax"> 향후 3개월 이내에 다름과 같은 해외 위험지역으로 출국할 예정이 있습니까?<br>전쟁지역, 미개척지(열대, 한대), 등반산악지대
                    <br>
                    <input type="radio" class="i-radio" name="i-radio" title="기타 출국 예"  value="80">
                        <a>예</a>
                    <input type="radio" class="i-radio" name="i-radio" title="기타 출국 아니오" value="81">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax"> 술을 드시나요?
                    <br>
                    <input type="radio" class="l-radio" name="l-radio" title="술 예"  value="90">
                        <a>예</a>
                    <input type="radio" class="l-radio" name="l-radio" title="술 아니오"  value="91">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax"> 담배를 피우시나요?
                    <br>
                    <input type="radio" class="m-radio" name="m-radio" title="담배 예"  value="100">
                        <a>예</a>
                    <input type="radio" class="m-radio" name="m-radio" title="담배 아니오" value="101">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax">청약전 1년 이내에 담배를 피우신 적이 있습니까?
                    <br>
                    <input type="radio" class="n-radio" name="n-radio" title="1년이내 담배 예"  value="110">
                        <a>예</a> 
                    <input type="radio" class="n-radio" name="n-radio" title="1년이내 담배 아니오" value="111">
                        <a>아니오</a>
                </td>
              </tr>
              <tr>
                <td class="tg-0lax"> 키와 몸무게를 입력해주세요
                    <br>
                    키/ 몸무게 
                    <input type="text" name="height" id="height">
                    <span>cm</span>
                    <input type="text" name="height" id="weight">
                    <span>kg</span>
                    <br><br>- 위의 각 계약전 알릴 의무사항에 대한 답변내용은 사실과 일치하며, 보험계약자 및 피보험자 본인이 직접 작성하였음을 확인합니다.<br>- 회사가 위 사항과 관련하여 필요 시에는 별도의 확인을 할 수 있으며, 의사가 본인의 질병 등의 건강상태를 조회하거나 열람토록 하는 것에 동의합니다.</td>
              </tr>
            </thead>
        </table>


		<div class="txtcenter">
		<a href="page09.jsp">
		<span>저장 후 다음단계</span>
		</a>
		</div>
		
    </div>

</body>
</html>