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

<%

	/* 만나이, 생년월일, 월보험료, 흡연여부, 성별 */
	int manage = (Integer)session.getAttribute("manage");
	int birth = (Integer)session.getAttribute("birth");
	int num1 = (Integer)session.getAttribute("num1");
	String smoking = (String) session.getAttribute("smoking");
	String gender = (String) session.getAttribute("gender");

	/* 보험기간 */
	String payMoney = request.getParameter("payMoney");
	String paymoney = "보험기간";
	if(payMoney.equals("10y")){
		paymoney = "10년 만기(갱신형)";
	}else if(payMoney.equals("20y")){
		paymoney = "20년 만기";
	}else if(payMoney.equals("60y")){
		paymoney = "60세 만기";
	}else if(payMoney.equals("80y")){
		paymoney = "80세 만기";
	}
	
	String money = request.getParameter("money");
	String remoney = "가입금액";
	if(money.equals("20milion")){
		remoney = "200,000,000원";
	}else if(money.equals("15milion")){
		remoney = "150,000,000원";
	}else if(money.equals("10milion")){
		remoney = "100,000,000원";
	}else if(money.equals("05milion")){
		remoney = "50,000,000원";
	}
	
	
	
	session.setAttribute("paymoney", paymoney);
	session.setAttribute("remoney", remoney);
	
%>



 
  <div>
  <span>  <%=manage%> </span>

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