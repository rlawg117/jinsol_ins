<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 창</title>
<script type="text/javascript" src="../js/page11.js"></script>
<script src="jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");
	int manage = (Integer)session.getAttribute("manage");
	String birth = (String)session.getAttribute("birth");
	int num1 = (Integer)session.getAttribute("num1");
	String smoking = (String) session.getAttribute("smoking");
	String gender = (String) session.getAttribute("gender");
	String paymoney = (String) session.getAttribute("paymoney");
	String gang = (String) session.getAttribute("gang");
	String remoney =(String) session.getAttribute("remoney");
	String myname = (String) session.getAttribute("myname");
	String email1 = (String) session.getAttribute("email1");
	String email2 = (String) session.getAttribute("email2");
	String call = (String) session.getAttribute("call");
		
%>

<div class="payMoney">
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
                    <b>청약문서를 확인하고 결제를 진행하는 단계입니다.</b>
                    최종 보험료 결제 전 계약관련 서류와 정보들을 확인해주세요.
                </div>

                <div class="card">
                    <table class="tg">
                        <thead>
                          <tr>
                            <td class="tg-0lax"> 보험료 납입</td>
                            <td class="tg-0lax"> 
                                결제수단 
                                <input type="radio" name="checkPay" value="money" class="m-radio" id="mon" checked onchange="checkcard()"><span>계좌이체</span>
                                <input type="radio" name="checkPay" value="card" class="m-radio" id="card" onchange="checkcard()"><span>신용카드</span>

                                <div id="mnp">
                                    <p>* 계약자와 예금주는 반드시 동일해야 합니다.</p>
                                    <p>* 1회차 보험료는 즉시 출금되며, 이체 완료시 가입이 완료됩니다.</p>
                                    <table class="tg">
                                      
                                        <tbody>
                                            <tr>
                                                <td class="tg-0lax">첫 1회 보험료</td>
                                                <td class="tg-0lax"><%=num1 %>원</td>
                                              </tr>
                                          <tr>
                                            <td class="tg-0lax">2회 이후 보험료 납입 희망일</td>
                                            <td class="tg-0lax">
                                                <input type="radio" name="day-radio" id="5day"><span>5일</span>
                                                <input type="radio" name="day-radio" id="10day"><span>10일</span>
                                                <input type="radio" name="day-radio" id="15day"><span>15일</span>
                                                <input type="radio" name="day-radio" id="20day"><span>20일</span>
                                                <input type="radio" name="day-radio" id="25day"><span>25일</span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="tg-0lax">납입계좌</td>
                                            <td class="tg-0lax">
                                                
                                                <select name="bank" id="bank">
                                                    <option value>이체은행선택</option>
                                                    <option value="국민">국민</option>
                                                    <option value="우리">우리</option>
                                                    <option value="신한">신한</option>
                                                    <option value="하나">하나</option>
                                                    <option value="농협(중앙)">농협(중앙)</option>
                                                    <option value="농협(단위)">농협(단위)</option>
                                                    <option value="기업">기업</option>
                                                    <option value="외환">외환</option>
                                                    <option value="한국씨티은행">한국씨티은행</option>
                                                    <option value="SC">SC</option>
                                                    <option value="우체국">우체국</option>
                                                    <option value="대구">대구</option>
                                                    <option value="부산">부산</option>
                                                    <option value="광주">광주</option>
                                                    <option value="제주">제주</option>
                                                    <option value="전북">전북</option>
                                                    <option value="경남">경남</option>
                                                    <option value="산업">산업</option>
                                                    <option value="수협">수협</option>
                                                    <option value="금고(45)">금고(45)</option>
                                                    <option value="유안타증권">유안타증권</option>
                                                    <option value="미래에셋증권">미래에셋증권</option>
                                                    <option value="삼성증권">삼성증권</option>
                                                    <option value="한화증권">한화증권</option>
                                                    <option value="신협(48)">신협(48)</option>
                                                    <option value="케이뱅크">케이뱅크</option>
                                                    <option value="카카오뱅크">카카오뱅크</option>
                                               
                                                </select>
                                                <span>-</span>
                                                <input type="text" name="bkm" id="bkm" placeholder="계좌번호(-없이 입력)">
                                                <input type="button" value="계좌확인">
                                            
                                            </td>
                                          </tr>
                                        </tbody>
                                        </table>

                                </div>


                                <div id="cdp" style="display: none;">
                                    <p>* 계약자와 카드명의자는 반드시 동일해야 하며 1회차 보험료는 즉시 결제됩니다. 이후 보험료는 계좌이체로 납입 가능합니다.</p>
                                    <table class="tg">
                                        <thead>
                                            <tr>
                                                <td>카드사/카드번호</td>
                                                <td>
                                                    <select name="card" id="card">
                                                        <option value>카드사선택</option>
                                                        <option value="bc">BC카드</option>
                                                        <option value="삼성">삼성카드</option>
                                                        <option value="현대">현대카드</option>
                                                        <option value="롯데">롯데카드</option>
                                                        <option value="농협">NH농협카드</option>
                                                    </select>
                                                    <span>/</span>
                                                    <input type="text" name="card1" id="card1">
                                                    <span>-</span>
                                                    <input type="text" name="card2" id="card2">
                                                    <span>-</span>
                                                    <input type="text" name="card3" id="card3">
                                                    <span>-</span>
                                                    <input type="text" name="card4" id="card4">
                                                    </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>유효기간</td>
                                                <td>
                                                    <select name="mo" id="mo">
                                                        <option value>월 선택</option>
                                                        <option value="1월">01</option>
                                                        <option value="2월">02</option>
                                                        <option value="3월">03</option>
                                                        <option value="4월">04</option>
                                                        <option value="5월">05</option>
                                                        <option value="6월">06</option>
                                                        <option value="7월">07</option>
                                                        <option value="8월">08</option>
                                                        <option value="9월">09</option>
                                                        <option value="10월">10</option>
                                                        <option value="11월">11</option>
                                                        <option value="12월">12</option>
                                                    </select>
                                                    <select name="ye" id="ye">
                                                        <option value>년도 선택</option>
                                                        <option value="22년">2022년</option>
                                                        <option value="23년">2023년</option>
                                                        <option value="24년">2024년</option>
                                                        <option value="25년">2025년</option>
                                                        <option value="26년">2026년</option>
                                                        <option value="27년">2027년</option>
                                                        <option value="28년">2028년</option>
                                                        <option value="29년">2029년</option>
                                                        <option value="30년">2030년</option>
                                                        <option value="31년">2031년</option>
                                                        <option value="32년">2032년</option>
                                                    </select>
                                                    <input type="button" value="카드확인">
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <td class="tg-0lax">첫 1회 보험료</td>
                                                <td class="tg-0lax">3,000원</td>
                                            </tr>
                                          <tr>
                                            <td class="tg-0lax">2회 이후 보험료 납입 희망일</td>
                                            <td class="tg-0lax">
                                                <input type="radio" name="day-radio" id="5day"><span>5일</span>
                                                <input type="radio" name="day-radio" id="10day"><span>10일</span>
                                                <input type="radio" name="day-radio" id="15day"><span>15일</span>
                                                <input type="radio" name="day-radio" id="20day"><span>20일</span>
                                                <input type="radio" name="day-radio" id="25day"><span>25일</span>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="tg-0lax">납입계좌</td>
                                            <td class="tg-0lax">
                                                
                                                <select name="bank" id="bank">
                                                    <option value>이체은행선택</option>
                                                    <option value="국민">국민</option>
                                                    <option value="우리">우리</option>
                                                    <option value="신한">신한</option>
                                                    <option value="하나">하나</option>
                                                    <option value="농협(중앙)">농협(중앙)</option>
                                                    <option value="농협(단위)">농협(단위)</option>
                                                    <option value="기업">기업</option>
                                                    <option value="외환">외환</option>
                                                    <option value="한국씨티은행">한국씨티은행</option>
                                                    <option value="SC">SC</option>
                                                    <option value="우체국">우체국</option>
                                                    <option value="대구">대구</option>
                                                    <option value="부산">부산</option>
                                                    <option value="광주">광주</option>
                                                    <option value="제주">제주</option>
                                                    <option value="전북">전북</option>
                                                    <option value="경남">경남</option>
                                                    <option value="산업">산업</option>
                                                    <option value="수협">수협</option>
                                                    <option value="금고(45)">금고(45)</option>
                                                    <option value="유안타증권">유안타증권</option>
                                                    <option value="미래에셋증권">미래에셋증권</option>
                                                    <option value="삼성증권">삼성증권</option>
                                                    <option value="한화증권">한화증권</option>
                                                    <option value="신협(48)">신협(48)</option>
                                                    <option value="케이뱅크">케이뱅크</option>
                                                    <option value="카카오뱅크">카카오뱅크</option>
                                               
                                                </select>
                                                <span>-</span>
                                                <input type="text" name="bkm" id="bkm" placeholder="계좌번호(-없이 입력)">
                                                <input type="button" value="계좌확인">
                                            
                                            </td>
                                          </tr>
                                        </tbody>
                                        </table>

                                </div>

                            </td>
                          </tr>
                        </thead>
                        </table>
                </div>
            </div>
        </div>

        <div>
            <table class="tg">
                <thead>
                  <tr>
                    <td class="tg-0lax" rowspan="4">계약내용 확인</td>
                    <td class="tg-0lax">보험약관
                        <button><a href="../text/(무)흥국생명 온라인정기보험_인쇄용약관(202107)_공시용.pdf" download>확인하기</a></button>
                    </td>
                  </tr>
                  <tr>
                    <td class="tg-0lax">청약서
                        <button><a href="../text/청약서.pdf" download>확인하기</a></button>
                    </td>
                  </tr>
                  <tr>
                    <td class="tg-0lax">상품설명서 
                        <button><a href="../text/상품설명서.pdf" download>확인하기</a></button>
                    </td>
                  </tr>
                  <tr>
                    <td class="tg-0lax">*다음 단계에서 다운로드 완료하셔야 청약이 완료됩니다,<br>*청약서, 상품설명서, 보험약관은 청약시 입력하신 이메일로 발송됩니다.</td>
                  </tr>
                </thead>
                </table>
        </div>
		<input type="submit" value="가입완료">
    </div>
</body>
</html>