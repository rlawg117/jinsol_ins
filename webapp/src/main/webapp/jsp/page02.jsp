<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
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
<!--https://jsfiddle.net/loomio3030/j9c58etd/  -->
 <% request.setCharacterEncoding("UTF-8");
 	String custBirth_MENU3 = request.getParameter("custBirth_MENU3");

 	String custGnder_MENU3 = request.getParameter("custGnder_MENU3");
 	String gender="성별";
 	if(custGnder_MENU3.equals("1")){
 		gender="남자";
 	}else if(custGnder_MENU3.equals("2")){
 		gender="여자";
 	}
 	
 	String smoke_yn = request.getParameter("smoke_yn");
 	String smoking = "담배";
 	if(smoke_yn.equals("1")){
 		smoking="흡연";	
 	}else if(smoke_yn.equals("2")){
 		smoking="비흡연";	
 	}
 	
 
 	
 %>
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
 %>
 
 <%
 
 int num1 = 0;
 int num2 = 0;
 int num3 = 0;
 int num4 = 0;
	if(manAge<30 && custGnder_MENU3.equals("1") && smoke_yn.equals("2")){
		num1 = 5000;
		num2 = 142000;
		num3 = 35000;
		num4 = 2000;
	}else if(manAge<30 && custGnder_MENU3.equals("1") && smoke_yn.equals("1")){
		num1 = 6000;
		num2 = 154000;
		num3 = 41000;
		num4 = 2500;
	}else if(manAge<30 && custGnder_MENU3.equals("2") && smoke_yn.equals("2")){
		num1 = 3000;
		num2 = 78000;
		num3 = 19000;
		num4 = 1500;
	}else if(manAge<30 && custGnder_MENU3.equals("2") && smoke_yn.equals("1")){
		num1 = 3000;
		num2 = 80000;
		num3 = 20000;
		num4 = 1500;
	}
	
	
	else if(manAge<40 && custGnder_MENU3.equals("1") && smoke_yn.equals("2")){
		num1 = 11000;
		num2 = 202000;
		num3 = 37000;
		num4 = 4500;
	}else if(manAge<40 && custGnder_MENU3.equals("1") && smoke_yn.equals("1")){
		num1 = 13000;
		num2 = 218000;
		num3 = 42000;
		num4 = 5500;
	}else if(manAge<40 && custGnder_MENU3.equals("2") && smoke_yn.equals("2")){
		num1 = 6000;
		num2 = 108000;
		num3 = 18000;
		num4 = 3000;
	}else if(manAge<40 && custGnder_MENU3.equals("2") && smoke_yn.equals("1")){
		num1 = 7000;
		num2 = 112000;
		num3 = 19000;
		num4 = 3500;
	}
	
	
	else if(manAge<50 && custGnder_MENU3.equals("1") && smoke_yn.equals("2")){
		num1 = 27000;
		num2 = 242000;
		num3 = 31000;
		num4 = 1200;
	}else if(manAge<50 && custGnder_MENU3.equals("1") && smoke_yn.equals("1")){
		num1 = 31000;
		num2 = 262000;
		num3 = 36000;
		num4 = 14000;
	}else if(manAge<50 && custGnder_MENU3.equals("2") && smoke_yn.equals("2")){
		num1 = 12000;
		num2 = 126000;
		num3 = 14000;
		num4 = 6000;
	}else if(manAge<50 && custGnder_MENU3.equals("2") && smoke_yn.equals("1")){
		num1 = 12000;
		num2 = 130000;
		num3 = 14000;
		num4 = 6000;
	}
	
	else if(manAge>=50 && custGnder_MENU3.equals("1") && smoke_yn.equals("2")){
		num1 = 32000;
		num2 = 252000;
		num3 = 100000;
		num4 = 14000;
	}else if(manAge>=50 && custGnder_MENU3.equals("1") && smoke_yn.equals("1")){
		num1 = 37000;
		num2 = 272000;
		num3 = 108000;
		num4 = 16500;
	}else if(manAge>=50 && custGnder_MENU3.equals("2") && smoke_yn.equals("2")){
		num1 = 14000;
		num2 = 130000;
		num3 = 51000;
		num4 = 7000;
	}else if(manAge>=50 && custGnder_MENU3.equals("2") && smoke_yn.equals("1")){
		num1 = 14000;
		num2 = 134000;
		num3 = 52000;
		num4 = 7000;
	}
	
	String birth = request.getParameter("custBirth_MENU3");
	
	session.setAttribute("manage", manAge);
	session.setAttribute("num1", num1);
	session.setAttribute("smoking", smoking);
	session.setAttribute("gender", gender);
	session.setAttribute("birth", birth);
	 	
	
 %>
               
              
<form action="page05.jsp" method="post"> 

<div>
	<h2 class="txtcenter">(무)흥국생명 온라인정기보험</h4>
</div>
                
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
                   <%=manAge%>세
                   </span>
                   </th> 
               
                   
                   <td>
                        <span>
                        	<input name="custBirth" type="text" value="<%=request.getParameter("custBirth_MENU3") %>">
                        </span>
                        <span>
                            <label>
                                <% if(request.getParameter("custGnder_MENU3").equals("1")) {%>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="남자 선택" checked="checked" >
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
                       
                        <span>
                            <label>
                                <input type="radio" name="money" id="20milion"  value="20milion" onclick="setDisplay2();setpay()">
                                <span>2억</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="money" id="15milion" value="15milion"  onclick="setDisplay2();setpay()">
                                <span>1억5천만</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="money" id="10milion" onclick="setDisplay2();setpay()">
                                <span>1억</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="money" id="05milion" onclick="setDisplay2();setpay()">
                                <span>5천만</span>
                            </label>
                        </span>
                        
                         <div id="pay" style="display: none;">
                            <input type='button' onclick='count("plus")' value='+'/>
                            <span id='result'>20000</span>
                            <span>만원</span>
                            <input type='button' onclick='count("minus")' value='-'/>

                        </div>
                        
                        <div id="pay2"  style="display: none;">
                            <input type='button' onclick='count("plus")' value='+'/>
                            <span id='result'>15000</span>
                            <span>만원</span>
                            <input type='button' onclick='count("minus")' value='-'/>

                        </div>
                        
                        <div id="pay3">
                            <input type='button' onclick='count("plus")' value='+'/>
                            <span id='result'>10000</span>
                            <span>만원</span>
                            <input type='button' onclick='count("minus")' value='-'/>

                        </div>
                        
                        <div id="pay4"  style="display: none;">
                            <input type='button' onclick='count("plus")' value='+'/>
                            <span id='result'>5000</span>
                            <span>만원</span>
                            <input type='button' onclick='count("minus")' value='-'/>

                        </div>
                        
                        
                    </td>
                </tbody>

            </table>

            <div>
                <span>
                    <label>
                        <input type="checkbox" name="many" id="many" onclick="setDisplay2()">
                        <span>
                            가장 많이 가입하는 설계
                        </span>
                    </label>
                </span>
                <a>
                    <span>
                        <button type="button" id="checkedpay"  onclick='getclick2()'> <h4 class="sub"  >보험료계산</h4>  </button>
                    </span>
                </a>
            </div>

        </div>

    </div>

    <div>
        <div class="setBorder">
            <h3 class="sub">보험료 계산결과</h3>
            <h4 class="sub">설계 내역을 선택한 후 [보장내용 비교] 버튼을 클릭 시 보장 내용을 비교하여 확인할 수 있습니다.</h4>
            <button type="button"><a href="page03.jsp" class="sub" style="padding: 2% 0% 2% 0%">보장내용 비교</a> </button>
        </div>

        <div class="clickBox setBorder manypp" >
            <ul class="box2">
                <li class="contentBox setBorder">
                    <div>
                        <span>나의 설계</span>
                        <span>
                            <input type="checkbox" title="나의 설계" checked>
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>월 보험료</span>
                                <span><%=num1 %>원</span>
                            </li>
                            <li>
                                <span>재해사망보험금</span>
                                <span class="result2"></span>
                                <span>억원</span>
                            </li>
                            <li>
                                <span>일반사망보험금</span>
                                <span class="result3"></span>
                                <span>억원</span>
                            </li>
                        </ul>
                        <button type="submit"> <a>가입하기</a> </button>
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
                         <button type="submit"> <a>가입하기</a> </button>
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
                                <span>20,000원</span>
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
                         <button type="submit"> <a>가입하기</a> </button>
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
                         <button type="submit"> <a>가입하기</a> </button>
                    </div>
                </li>
            </ul>
        </div>

        <div class="setBorder">
            <div class="sub" >
            
            

            <span id="Y10" style="display: none;"> 10년 만기(갱신형) / 10년납 / </span>
            <span id="Y20" style="display: none;"> 20년 만기 / 20년납 / </span>
            <span id="Y60" style="display: none;"> 60세 만기 / 60세납 / </span>
            <span id="Y80" style="display: none;"> 80세 만기 / 80세납 / </span>
                <span> 재해사망 추가보장 / <%=smoking %> /<%=manAge%>세/<%=gender %></span>
	<br>
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
                                            <th> <span class="result2"></span> <span>억</span> </th>
                                        </tr>
                                        <tr>
                                            <th>일반사망보험금</th>
                                            <th>재해이외의 원인으로 사망시</th>
                                            <th><span class="result3"></span> <span>억</span> </th>
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
                                            <th><%=manAge%>세</th>
                                            <th><% int num7=num1*3; %><%=num7 %></th>
                                            <th><%=num7/100*0.0%></th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>6개월</th>
                                            <th><%=manAge%>세</th>
                                            <th><% num7 =num1*6; %><%=num7 %></th>
                                            <th><%=num7/100*1.3%></th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>9개월</th>
                                            <th><%=manAge%>세</th>
                                            <th><% num7 =num1*9; %><%=num7 %></th>
                                            <th><%=num7/100*1.3%></th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>1년</th>
                                            <th><%=manAge+1%>세</th>
                                            <th><% num7 =num1*(12*1); %><%=num7 %></th>
                                            <th><%=num7/100*1.3%></th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>2년</th>
                                            <th><%=manAge+2%>세</th>
                                            <th><% num7 =num1*(12*2); %><%=num7 %></th>
                                            <th><%=num7/100*1.3%></th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>3년</th>
                                            <th><%=manAge+3%>세</th>
                                            <th><% num7 =num1*(12*3); %><%=num7 %></th>
                                            <th><%=num7/100*1.3%></th>
                                            <th>1.3</th>
                                        </tr>
                                        <tr>
                                            <th>4년</th>
                                            <th><%=manAge+4%>세</th>
                                            <th><% num7 =num1*(12*4); %><%=num7 %></th>
                                            <th><%=num7/100*4.2%></th>
                                            <th>4.2</th>
                                        </tr>
                                        <tr>
                                            <th>5년</th>
                                            <th><%=manAge+5%>세</th>
                                            <th><% num7 =num1*(12*5); %><%=num7 %></th>
                                            <th><%=num7/100*15.9%></th>
                                            <th>5.9</th>
                                        </tr>
                                        <tr>
                                            <th>6년</th>
                                            <th><%=manAge+6%>세</th>
 											<th><% num7 =num1*(12*6); %><%=num7 %></th>
                                            <th><%=num7/100*5.7%></th>
                                            <th>5.7</th>
                                        </tr>
                                        <tr>
                                            <th>7년</th>
                                            <th><%=manAge+7%>세</th>
                                             <th><% num7 =num1*(12*7); %><%=num7 %></th>
                                            <th><%=num7/100*5.9%></th>
                                            <th>5.9</th>
                                        </tr>
                                        <tr>
                                            <th>8년</th>
                                            <th><%=manAge+8%>세</th>
                                             <th><% num7 =num1*(12*8); %><%=num7 %></th>
                                            <th><%=num7/100*3.8%></th>
                                            <th>3.8</th>
                                        </tr>
                                        <tr>
                                            <th>9년</th>
                                            <th><%=manAge+9%>세</th>
                                             <th><% num7 =num1*(12*9); %><%=num7 %></th>
                                            <th><%=num7/100*2.1%></th>
                                            <th>2.1</th>
                                        </tr>
                                        <tr>
                                            <th>10년</th>
                                            <th><%=manAge+10%>세</th>
                                             <th><% num7 =num1*(12*10); %><%=num7 %></th>
                                            <th><%=num7/100*0.0%></th>
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
    
</form>
</body>
</html>