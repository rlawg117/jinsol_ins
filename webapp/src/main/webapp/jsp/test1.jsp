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
 		out.println("<b>����</b><br>");
 		gender="m";
 	}else{
 		out.println("<b>����</b><br>");
 		gender="w";
 	}
 	String smoke = request.getParameter("smoke_yn");
 	if(smoke.equals("1")){
 		out.println("<b>��</b><br>");
 	}else{
 		out.println("<b>����</b><br>");
 	}
 /* 	c:if smoke_yn="$(!empty param.smoke_yn)"
 			$("[name=smoke_yn]").filter("[value=$(1)]").prop("checked",true); */
 %>
 

</body>

	<div class="input_area">
 
        <table class="input_tbl">
            <!-- ����� ��� ���� = �������, ����, ������ -->
            <colgroup>
                <col style="width: 150px;">
                <col style="width:*;"> 
            </colgroup>
            <tbody>
                <tr>
                   <th> ���質�� 24�� </th> 
                   <td>
                        <span>
                            <%=request.getParameter("custBirth") %>
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
        </table>

        <div>
            <table class="tbl">
                <colgroup>
                    <col style="width: 150px;">
                    <col style="width:*;"> 
                </colgroup>
                <tbody>
                    <tr>
                        <th> ����Ⱓ </th>
                        <td>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
                                    <span>10�⸸��(������)</span>
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
                                    <span>20��</span> 
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
                                    <span>60��</span>
                                </label>
                            </span>
                            <span>
                                <label>
                                    <input type="radio" class="d-radio" name="manYear">
                                    <span>80��</span>
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
                    <th>���ԱⰣ</th>
                    <td>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>10�ⳳ</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>20�ⳳ</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>60����</span> 
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio" name="payYear" class="d-radio">
                                <span>80����</span>
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
                    <th>���ػ��</th>
                    <td>
                        <span>
                            <label>
                                <input type="radio">
                                <span>��</span>
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
                    <th>�Ϲݻ�������</th>
                    <td>
                        <div>
                            <input type="text" title="���谡�Աݾ��Է�"value="10,000">
                            <span>����</span>
                            <a href="#n" class="btn btn-plus">
                                <span>1000�� ���� ����</span>
                            </a>
                            <a href="#n" class="btn btn-minus">
                                <span>1000�� ���� ����</span>
                            </a>
                        </div>
                        <span>
                            <label>
                                <input type="radio">
                                <span>2��</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio">
                                <span>1��5õ��</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio">
                                <span>1��</span>
                            </label>
                        </span>

</html>