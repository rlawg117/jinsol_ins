<%@page import="java.time.LocalDate"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보험계산</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/page02.js"></script>
<script src="jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
 <% request.setCharacterEncoding("UTF-8");
 	String custBirth_MENU3 = request.getParameter("custBirth_MENU3");
/*  	String gender=null; */
 	String custGnder_MENU3 = request.getParameter("custGnder_MENU3");
/*  	if(custGnder_MENU3.equals("1")){
 		gender="m";
 	}else{
 		gender="w";
 	} */
 /* 	String sk=null; */
 	String smoke_yn = request.getParameter("smoke_yn");
 	/* if(smoke_yn.equals("1")){
 		sk="y";
 	}else{
 		sk="y";
 	}
 */
 %>
   <div class="input_area setBorder">
        <table class="input_tbl">
            <!-- 보험료 계산 영역 = 생년월일, 성별, 흡연여부 -->
            <colgroup>
                <col style="width: 150px;">
				<col style="width:*;"> 
            </colgroup>
            <tbody>
                <tr>
                   <th> 보험나이 
                   <span>
                   <% 
                   String age = custBirth_MENU3;
                   int years = Integer.parseInt(age.substring(0, 2));
                   int months = Integer.parseInt(age.substring(2, 4));
                   int days = Integer.parseInt(age.substring(4, 6));
                   
                   
                   LocalDate today = LocalDate.now();
                   int todayYear = today.getYear();
                   int todayMonth = today.getMonthValue();
                   int todayDay= today.getDayOfMonth();
                   
                   int manAge = todayYear - years;
                   
                   if(months>todayMonth){
                	   manAge--;
                   }else if(months == todayMonth){
                	   if(days > todayDay){
                		   manAge--;
                	   }
                   }
                   
                   if(manAge>2000){
                	   manAge-=2000;
                   }else if(manAge<2000){
                	   manAge-=1900;
                   }
                   out.print(manAge);
                   %>세
                   </span>
                   </th> 
                   
                   
                   <td>
                        <span>
                        	<input name="custBirth" type="text" value="<%=request.getParameter("custBirth_MENU3") %>">
                        </span>
                        <span>
                            <label>
                                <% if(request.getParameter("custGnder_MENU3").equals("1")) {%>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="남자 선택" checked="checked">
                                <span>남자</span>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="2" title="여자 선택">
                                <span>여자</span>
                                <%}else if(request.getParameter("custGnder_MENU3").equals("2")){%>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="남자 선택">
                                <span>남자</span>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="2" title="여자 선택" checked="checked">
                                <span>여자</span>
                                <%} %>
                            </label>
                        </span>
                        <span>
                            <label>
                                <% if(request.getParameter("smoke_yn").equals("1")) {%>
                                <input type="radio" name="smoke_yn" value="1" title="흡연 선택"  class="radio" checked="checked">
                                <span>흡연</span>
                                <input type="radio" name="smoke_yn" value="2" title="비흡연 선택"  class="radio">
                                <span>비흡연</span>
                                <%}else if(request.getParameter("custGnder_MENU3").equals("2")){%>
                                <input type="radio" name="smoke_yn" value="1" title="흡연 선택"  class="radio">
                                <span>흡연</span>
                                <input type="radio" name="smoke_yn" value="2" title="비흡연 선택"  class="radio" checked="checked">
                                <span>비흡연</span>
                                <%} %>
                            </label>
                        </span>
                   </td>
                   
                </tr>
            </tbody>
        </table>

        <div>
            <table class="tbl">
                <colgroup>
                    <col style="width: 150px;">

                </colgroup>
                <tbody>
                    <tr>
                        <th> 보험기간 </th>
                       <td>
                            <span>
                                <label>
                                    <input type="radio" name="payMoney" value="10y" id="10y" onchange="setDisplay()">
                                    <span>10년만기(갱신형)</span>
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" name="payMoney" value="20y" id="20y" onchange="setDisplay()">
                                    <span>20년</span>
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" name="payMoney" value="60y" id="60y" onchange="setDisplay()">
                                    <span>60세</span>
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" name="payMoney" value="80y" id="80y" onchange="setDisplay()">
                                    <span>80세</span>
                                </label>
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>

            <table class="tbl">
                <colgroup>
                    <col style="width: 150px;">
                </colgroup>
                <tbody>
                    <th>납입기간</th>
                    <td id="open">
                        <span>
                            <label>
                                <input type="radio" name="payYear" id="10year" style="display:none;" >
                                <span>10년납</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" id="20year" style="display:none;" >
                                <span>20년납</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" id="60year" style="display:none;" >
                               	<span>60세납</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" id="80year" style="display:none;" >
                                <span>80세납</span>
                            </label>
                        </span>
        
                    </td>
                </tbody>
            </table>

            <table class="tbl">
                <colgroup>
                    <col style="width: 150px;">
                </colgroup>
                <tbody>
                    <th>재해사망</th>
                    <td>
                        <span>
                            <label>
                                <input type="radio">
                                <span>예</span>
                            </label>
                        </span>
                    </td>
                </tbody>
            </table>

            <table class="tbl">
                <colgroup>
                    <col style="width: 150px;">
                </colgroup>
                <tbody>
                    <th>일반사망보험금</th>
                    <td>
                        <div>
                            
                            <input type='button' onclick='count("plus")' value='+'/>

                         
                            <span id='result'>20000</span>
                            <span>만원</span>
                            
                            <input type='button' onclick='count("minus")' value='-'/>

                        </div>
                        <span>
                            <label>
                                <input type="radio" name="money">
                                <span>2억</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="money">
                                <span>1억5천만</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="money">
                                <span>1억</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="money">
                                <span>5천만</span>
                            </label>
                        </span>
                    </td>
                </tbody>

            </table>

            <div>
                <span>
                    <label>
                        <input type="checkbox" name="many" id="many">
                        <span>
                            가장 많이 가입하는 설계
                        </span>
                    </label>
                </span>
                <a>
                    <span>
                        <h4 class="sub">보험료계산</h4> 
                    </span>
                </a>
            </div>

        </div>

    </div>

    <div>
        <div class="setBorder">
            <h3 class="sub">보험료 계산결과</h3>
            <h4 class="sub">설계 내역을 선택한 후 [보장내용 비교] 버튼을 클릭 시 보장 내용을 비교하여 확인할 수 있습니다.</h4>
            <a href="page03.jsp" class="sub" style="margin-bottom: 1%">보장내용 비교</a>

        </div>

        <div class="clickBox setBorder manypp" >
            <ul class="box2">
                <li class="contentBox setBorder">
                    <div>
                        <span>나의 설계</span>
                        <span>
                            <input type="checkbox" title="나의 설계">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>월 보험료</span>
                                <span>3,000원</span>
                            </li>
                            <li>
                                <span>재해사망보험금</span>
                                <span>2억원</span>
                            </li>
                            <li>
                                <span>일반사망보험금</span>
                                <span>1억원</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">가입하기</a>
                    </div>
                </li>

                <li class="contentBox setBorder">
                    <div>
                        <span>최대보장</span>
                        <span>
                            <input type="checkbox" title="최대보장">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>월 보험료</span>
                                <span>84,000원</span>
                            </li>
                            <li>
                                <span>재해사망보험금</span>
                                <span>4억원</span>
                            </li>
                            <li>
                                <span>일반사망보험금</span>
                                <span>2억원</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">가입하기</a>
                    </div>
                </li>

                <li class="contentBox setBorder">
                    <div>
                        <span>일반보장</span>
                        <span>
                            <input type="checkbox" title="일반보장">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>월 보험료</span>
                                <span>20,00원</span>
                            </li>
                            <li>
                                <span>재해사망보험금</span>
                                <span>2억원</span>
                            </li>
                            <li>
                                <span>일반사망보험금</span>
                                <span>1억원</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">가입하기</a>
                    </div>
                </li>

                <li class="contentBox setBorder">
                    <div>
                        <span>최저가격</span>
                        <span>
                            <input type="checkbox" title="최저가격">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>월 보험료</span>
                                <span>3,000원</span>
                            </li>
                            <li>
                                <span>재해사망보험금</span>
                                <span>2억원</span>
                            </li>
                            <li>
                                <span>일반사망보험금</span>
                                <span>1억원</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">가입하기</a>
                    </div>
                </li>
            </ul>
        </div>

        <div class="setBorder">
            <div class="sub" >
                <p> 10년 만기(갱신형) / 10년납 / 재해사망 추가보장 / 비흡연 / 24세 / 여자 </p>
                <span>
                    <a>수정</a>
                    <a href="../text/(무)흥국생명 온라인정기보험_인쇄용약관(202107)_공시용.pdf" download>가입제안서</a>
                    <a href="page04.jsp">메일발송</a>
                </span>
            </div>
            <div style="border-top:0.3px solid black ">
                <dl>
                    <dt class="sub">
                        <a> 보장내용 </a>
                    </dt>
                    <dd>
                        <a>
                            <div>
                                <table class="setBorder">
                                    <colgroup>
                                        <col style="width: 166px;">
                                        <col style="width: 208px;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>보장내용</th>
                                            <th>지급사유</th>
                                            <th>보장금액</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>재해사망보험금</th>
                                            <th>재해를 원인으로 사망시</th>
                                            <th>2억</th>
                                        </tr>
                                        <tr>
                                            <th>일반사망보험금</th>
                                            <th>재해이외의 원인으로 사망시</th>
                                            <th>1억</th>
                                        </tr>
                                    </tbody>
                                </table>
                                <ul>
                                    <li> *단, '고의적 사고 및 2년 이내 자살'의 경우에 사망보험금 지급이 제한됩니다.</li>
                                </ul>
                            </div>
                        </a>
                    </dd>
                </dl>
            </div>

            <div style="border-top:0.3px solid black ">
                <dl>
                    <dt class="sub">
                        <a> 해지환급금 예시표(단위 : 원,%) </a>
                    </dt>
                    <dd>
                        <a>
                            <div>
                                <table class="setBorder">
                                    <colgroup>
                                        <col style="width: 166px;">
                                        <col style="width: 166px;">
                                        <col style="width: 166px;">
                                        <col style="width: 166px;">
                                        <col style="width: 166px;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>경과시간</th>
                                            <th>도달나이</th>
                                            <th>납입보험료 누계</th>
                                            <th>해지환급금</th>
                                            <th>환급률</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>3개월</th>
                                            <th>24세</th>
                                            <th>9,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>6개월</th>
                                            <th>24세</th>
                                            <th>18,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>9개월</th>
                                            <th>24세</th>
                                            <th>27,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>1년</th>
                                            <th>25세</th>
                                            <th>36,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>2년</th>
                                            <th>26세</th>
                                            <th>72,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>3년</th>
                                            <th>27세</th>
                                            <th>108,000</th>
                                            <th>1,446</th>
                                            <th>1.3</th>
                                        </tr>
                                        <tr>
                                            <th>4년</th>
                                            <th>28세</th>
                                            <th>144,000</th>
                                            <th>6,084</th>
                                            <th>4.2</th>
                                        </tr>
                                        <tr>
                                            <th>5년</th>
                                            <th>29세</th>
                                            <th>180,000</th>
                                            <th>10,723</th>
                                            <th>5.9</th>
                                        </tr>
                                        <tr>
                                            <th>6년</th>
                                            <th>30세</th>
                                            <th>216,000</th>
                                            <th>12,361</th>
                                            <th>5.7</th>
                                        </tr>
                                        <tr>
                                            <th>7년</th>
                                            <th>31세</th>
                                            <th>252,000</th>
                                            <th>15,000</th>
                                            <th>5.9</th>
                                        </tr>
                                        <tr>
                                            <th>8년</th>
                                            <th>32세</th>
                                            <th>288,000</th>
                                            <th>11,000</th>
                                            <th>3.8</th>
                                        </tr>
                                        <tr>
                                            <th>9년</th>
                                            <th>33세</th>
                                            <th>324,000</th>
                                            <th>7,000</th>
                                            <th>2.1</th>
                                        </tr>
                                        <tr>
                                            <th>10년</th>
                                            <th>34세</th>
                                            <th>360,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>

                                    </tbody>
                                </table>
                                <ul>
                                    <li> *최초 계약보험기간 동안의 납입보험료 및 해지환급금만 반영된 금액이며, 향후 갱신여부 등에 따라 달라질 수 있습니다.</li>
                                    <li> 이 보험께약을 중도해지 할 경우 해지환급금은 납입한 보험료에서 경과된 기간의 위험보험료, 사업비(해제공제액 포함)등이 차감되므로 납입보험료보다 적거나 없을 수도 있습니다.</li>
                                    <li>만기시 만기환급금이 없는 순수보장형 상품입니다.</li>
                                    <li>상기 예시금액은 세전금액 기준입니다.</li>
                                </ul>
                            </div>
                        </a>
                    </dd>
                </dl>
            </div>

        </div>


    </div>
</body>
</html>