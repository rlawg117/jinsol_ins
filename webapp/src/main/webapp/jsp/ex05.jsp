<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청약 전 안내사항</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
</head>
<body>
<%

	/* 만나이, 생년월일, 월보험료, 흡연여부, 성별 */
	int manage = (Integer)session.getAttribute("manage");
	String birth = (String)session.getAttribute("birth");
	int num1 = (Integer)session.getAttribute("num1");
	String smoking = (String) session.getAttribute("smoking");
	String gender = (String) session.getAttribute("gender");

	/* 보험기간 */
	String payMoney = request.getParameter("payMoney");
	String paymoney = "보험기간";
	String gang = "갱신여부";
	if(payMoney.equals("10y")){
		paymoney = "10년";
		gang ="(갱신형)";
	}else if(payMoney.equals("20y")){
		paymoney = "20년";
		gang ="(일반형)";
	}else if(payMoney.equals("60y")){
		paymoney = "60세";
		gang ="(일반형)";
	}else if(payMoney.equals("80y")){
		paymoney = "80세";
		gang ="(일반형)";
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
	session.setAttribute("gang", gang);
	session.setAttribute("remoney", remoney);
	
%>
 


<form action="ex06.jsp" method="post">
<div class="wrap setBorder ">
        <div class="txtcenter">
            <h1>흥국생명 온라인보험 청약 전 안내사항</h1>
        </div>

        <div class="notice_bar txtcenter" style="padding: 2%">
            <a>가입 전 준비사항을 확인하세요</a>
        </div>
        
        <div>
        
     
    
        </div>
        

        <div class="subscription_coint wrap">
            <div>
                <dl>
                    <dt>
                        보안프로그램 설치 안내
                    </dt>
                    <dd>
                        보안프로그램 설치되지 않을 경우 [수동설치] 버튼을 선택하십시오.
                        <a href="../text/magicline4npiz.exe" download>수동설치</a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a>
                            <b>01</b>
                            본인인증이 필요합니다.
                        </a>
                    </dt>
                    <dd>
                        <li>본인 명의의 개인공동인증서</li>
                        <li>스마트폰에서는 공동인증서 어플리케이션(MSign)에 인증서 복사</li>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a>
                            <b>02</b>
                            결제방법을 확인하세요.
                        </a>
                    </dt>
                    <dd>
                        
                        <li>
                            실시간이체
                            <div><p>이체가능은행</p></div>
                        </li>
                        <li>
                            신용카드
                            <div><p>BC카드 / 삼성카드 / 현대카드 / NH농협카드 / 롯데카드</p></div>
                        </li>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a>
                            <b>03</b>
                            외국인이실 경우 확인해 주세요.
                        </a>
                    </dt>
                    <dd>
                        
                        <li>
                            휴대폰으로 찍은 신분증 사본(3M이하)
                        </li>
                        <li>
                           어린이 보험은 자녀 신분증 사본
                        </li>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a>
                            <b>04</b>
                            보험가입 유의사항
                        </a>
                    </dt>
                    <dd>
                        
                        <li>
                            <b>계약자와 피보험자가 동일해야합니다.(어린이 보험 제외)</b>
                        </li>
                        <li>
                            <b>초회보험료 납입</b>
                            <div>
                                <span>-초회보험료는 즉시 납입되며, 신용카드는 첫 1회 보험료만 납입이 가능합니다.</span>
                                <span>-실시간이체 이용시 잔고부족, 신용카드 이용시 한도초과의 경우 보험료가입이 완료되지 않습니다.</span>
                            </div>
                        </li>
                        <li>
                            <span>
                                보험가입 불가 시간 : 
                                <b>은행점검시간(23:00~01:00)</b>
                            </span>
                        </li>
                    </dd>
                </dl>
            </div>
        </div>
        
        <div class="divcenter" style="padding: 2%">
            <button type="submit"><a>바로 가입하기</a></button> 
        </div>
        

    </div>
    
    </form>
</body>
</html>