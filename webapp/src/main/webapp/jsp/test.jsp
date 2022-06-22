<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="/webapp/css/page02.css" rel="stylesheet" type="text/css">
</head>
<body>

        

  <div>
        <div class="setBorder">
            <h3>(무)흥국생명 온라인</h3>
            <h2>정기보험</h2>
            <h4>우리가족의 미래는 정기보험으로 안심!</h4>
        </div>
       
<!-- 정기 보험 가입하러가기 버튼 -->


            <div class="detBorder" >
                <h4>
                    <b>정기보험</b>
                    "보험료 알아보기"
                </h4>
                
	<form action="test1.jsp" method="post">
        <table class="input_tbl">
            <colgroup>
                <col style="width: 150px;">
                <col style="width:*"> 
            </colgroup>
            <tbody>
                <tr>
                   <th> 보험나이</th> 
                   <td>
                        <span>
                            <input type="text" id="custBirth" name="custBirth" maxlength="6" class="input number" placeholder="예시)720322" title="생년월일 입력">
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
            <input type="submit" value="보험료계산">
        </table>
    </form>
    </div>
</body>
</html>