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
            <h3>(��)�ﱹ���� �¶���</h3>
            <h2>���⺸��</h2>
            <h4>�츮������ �̷��� ���⺸������ �Ƚ�!</h4>
        </div>
       
<!-- ���� ���� �����Ϸ����� ��ư -->


            <div class="detBorder" >
                <h4>
                    <b>���⺸��</b>
                    "����� �˾ƺ���"
                </h4>
                
	<form action="test1.jsp" method="post">
        <table class="input_tbl">
            <colgroup>
                <col style="width: 150px;">
                <col style="width:*"> 
            </colgroup>
            <tbody>
                <tr>
                   <th> ���質��</th> 
                   <td>
                        <span>
                            <input type="text" id="custBirth" name="custBirth" maxlength="6" class="input number" placeholder="����)720322" title="������� �Է�">
                        </span>
                       <span>
                            <label>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="���� ����">
                                <span>����</span>
                            </label>
                            <label>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="2" title="���� ����">
                                <span>����</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="smoke_yn" value="1" title="�� ����"  class="radio">
                                <span>��</span>
                            </label>
                            <label>
                                <input type="radio" name="smoke_yn" value="2" title="���� ����"  class="radio">
                                <span>����</span>
                            </label>
                        </span>
                   </td>
                   
                </tr>
            </tbody>
            <input type="submit" value="�������">
        </table>
    </form>
    </div>
</body>
</html>