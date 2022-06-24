<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보험 비교</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
</head>
<body>

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
 	
 	int num1 = 3000;
 	
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
 
  <div>
 	<span><%=manAge%>세</span>
 	<span><%=smoking%></span>
 	<span><%=gender %></span>
 	<span><%=custBirth_MENU3 %></span>
 </div>
 
 	 <div id="page3" class="setBorder">
        <h2 class="">(무)흥국생명 온라인정기보험</h2>
        <div>
            <div class="contents">
                <ul class="box2 compare">
                    <li class="setBorder">
                        <span>월 보험료</span>
                        <span>3,000원</span>
                        <p>10년 만기(갱신형) / 10년납 / 24세, 여자</p>
                    </li>
                    <li class="setBorder">
                        <span>월 보험료</span>
                        <span>20,000원</span>
                        <p>60세 만기 / 10년 납입 / 24세, 여자</p>
                    </li>
                </ul>
            </div>
        </div>

        <div>
            <div class="tbl">
                <table>
                    <colgroup>
                        <col style="width: 160px;">
                        <col>
                    </colgroup>
                    <thead>
                        <tr>
                            <th>보장내용</th>
                            <th scope="col" colspan="2">보장금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>재해사망보험금</td>
                            <td>20,000만원</td>
                            <td>20,0000만원</td>
                        </tr>
                        <tr>
                            <td>일반사망보험금</td>
                            <td>10,000만원</td>
                            <td>10,0000만원</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        
        <button>돌아가기</button>
        
        <!-- <a>
        <script type="text/javascript"> window.history.back();</script>
        	<span>확인</span>
        </a> -->

    </div>

</body>
</html>