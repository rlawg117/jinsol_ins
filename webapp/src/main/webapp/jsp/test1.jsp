<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

 <% request.setCharacterEncoding("UTF-8");
 	String custBirth = request.getParameter("custBirth");
 	out.println("<p>"+custBirth+"</p>");
 	String gender=null;
 	String custGnder = request.getParameter("custGnder_MENU3");
 	if(custGnder.equals("1")){
 		out.println("<b>남자</b><br>");
 		gender="m";
 	}else{
 		out.println("<b>여자</b><br>");
 		gender="w";
 	}
 	String smoke = request.getParameter("smoke_yn");
 	if(smoke.equals("1")){
 		out.println("<b>흡연</b><br>");
 	}else{
 		out.println("<b>비흡연</b><br>");
 	}
 /* 	c:if smoke_yn="$(!empty param.smoke_yn)"
 			$("[name=smoke_yn]").filter("[value=$(1)]").prop("checked",true); */
 %>
 

</body>

	<div class="input_area">
 
        <table class="input_tbl">
            <!-- 보험료 계산 영역 = 생년월일, 성별, 흡연여부 -->
            <colgroup>
                <col style="width: 150px;">
                <col style="width:*;"> 
            </colgroup>
            <tbody>
                <tr>
                   <th> 보험나이 24세 </th> 
                   <td>
                        <span>
                            <%=request.getParameter("custBirth") %>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="남자 선택">
                                
                                <span>남자</span>
                            </label>
                            <label>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="2" title="여자 선택">
                                <span>여자</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="smoke_yn" value="1" title="흡연 선택"  class="radio">
                                <span>흡연</span>
                            </label>
                            <label>
                                <input type="radio" name="smoke_yn" value="2" title="비흡연 선택"  class="radio">
                                <span>비흡연</span>
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
                    <col style="width:*;"> 
                </colgroup>
                <tbody>
                    <tr>
                        <th> 보험기간 </th>
                        <td>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
                                    <span>10년만기(갱신형)</span>
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
                                    <span>20년</span> 
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
                                    <span>60세</span>
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
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
                    <col style="width:*;"> 
                </colgroup>
                <tbody>
                    <th>납입기간</th>
                    <td>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>10년납</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>20년납</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>60세납</span> 
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>80세납</span>
                            </label>
                        </span>

                    </td>
                </tbody>
            </table>

            <table class="tbl">
                <colgroup>
                    <col style="width: 150px;">
                    <col style="width:*;"> 
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
                    <col style="width:*;"> 
                </colgroup>
                <tbody>
                    <th>일반사망보험금</th>
                    <td>
                        <div>
                            <input type="text" title="보험가입금액입력"value="10,000">
                            <span>만원</span>
                            <a href="#n" class="btn btn-plus">
                                <span>1000만 단위 증감</span>
                            </a>
                            <a href="#n" class="btn btn-minus">
                                <span>1000만 단위 감소</span>
                            </a>
                        </div>
                        <span>
                            <label>
                                <input type="radio">
                                <span>2억</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio">
                                <span>1억5천만</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio">
                                <span>1억</span>
                            </label>
                        </span>

</html>