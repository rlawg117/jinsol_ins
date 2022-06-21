<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
</head>
<body>
 <% request.setCharacterEncoding("UTF-8");
 	String custBirth_MENU3 = request.getParameter("custBirth_MENU3");
 	String gender=null;
 	String custGnder_MENU3 = request.getParameter("custGnder_MENU3");
 	if(custGnder_MENU3.equals("1")){
 		gender="m";
 	}else{
 		gender="w";
 	}
 	String sk=null;
 	String smoke_yn = request.getParameter("smoke_yn");
 	if(smoke_yn.equals("1")){
 		sk="y";
 	}else{
 		sk="y";
 	}

 %>
   <div class="input_area setBorder">
        <table class="input_tbl">
            <!-- ����� ��� ���� = �������, ����, ������ -->
            <colgroup>
                <col style="width: 150px;">

            </colgroup>
            <tbody>
                <tr>
                   <th> ���質�� 24�� </th> 
                   <td>
                        <span>
                        	<input name="custBirth" type="text" value="<%=request.getParameter("custBirth_MENU3") %>">
                        </span>
                        <span>
                            <label>
                                <% if(request.getParameter("custGnder_MENU3").equals("1")) {%>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="���� ����" checked="checked">
                                <span>����</span>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="2" title="���� ����">
                                <span>����</span>
                                <%}else if(request.getParameter("custGnder_MENU3").equals("2")){%>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="1" title="���� ����">
                                <span>����</span>
                                <input type="radio" name="custGnder_MENU3" class="d-radio" value="2" title="���� ����" checked="checked">
                                <span>����</span>
                                <%} %>
                            </label>
                        </span>
                        <span>
                            <label>
                                <% if(request.getParameter("smoke_yn").equals("1")) {%>
                                <input type="radio" name="smoke_yn" value="1" title="�� ����"  class="radio" checked="checked">
                                <span>��</span>
                                <input type="radio" name="smoke_yn" value="2" title="���� ����"  class="radio">
                                <span>����</span>
                                <%}else if(request.getParameter("custGnder_MENU3").equals("2")){%>
                                <input type="radio" name="smoke_yn" value="1" title="�� ����"  class="radio">
                                <span>��</span>
                                <input type="radio" name="smoke_yn" value="2" title="���� ����"  class="radio" checked="checked">
                                <span>����</span>
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
                </colgroup>
                <tbody>
                    <th>���ԱⰣ</th>
                    <td>
                        <span>
                            <label>
                                <input type="radio">
                                <span>10�ⳳ</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio">
                                <span>20�ⳳ</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio">
                                <span>60����</span>
                            </label>
                        </span>
                        <span>
                            <label>
                                <input type="radio">
                                <span>80����</span>
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
                        <span>
                            <label>
                                <input type="radio">
                                <span>5õ��</span>
                            </label>
                        </span>
                    </td>
                </tbody>

            </table>

            <div>
                <span>
                    <label>
                        <input type="checkbox">
                        <span>
                            ���� ���� �����ϴ� ����
                        </span>
                    </label>
                </span>
                <a href="">
                    <span>
                        �������
                    </span>
                </a>
            </div>

        </div>

    </div>

    <div>
        <div class="setBorder">
            <h2>����� �����</h2>
            <h3>���� ������ ������ �� [���峻�� ��] ��ư�� Ŭ�� �� ���� ������ ���Ͽ� Ȯ���� �� �ֽ��ϴ�.</h3>
            <a href="./page03.jsp">���峻�� ��</a>

        </div>

        <div class="clickBox setBorder">
            <ul class="box">
                <li class="contentBox setBorder">
                    <div>
                        <span>���� ����</span>
                        <span>
                            <input type="checkbox" title="���� ����">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>�� �����</span>
                                <span>3,000��</span>
                            </li>
                            <li>
                                <span>���ػ�������</span>
                                <span>2���</span>
                            </li>
                            <li>
                                <span>�Ϲݻ�������</span>
                                <span>1���</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">�����ϱ�</a>
                    </div>
                </li>

                <li class="contentBox setBorder">
                    <div>
                        <span>�ִ뺸��</span>
                        <span>
                            <input type="checkbox" title="�ִ뺸��">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>�� �����</span>
                                <span>84,000��</span>
                            </li>
                            <li>
                                <span>���ػ�������</span>
                                <span>4���</span>
                            </li>
                            <li>
                                <span>�Ϲݻ�������</span>
                                <span>2���</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">�����ϱ�</a>
                    </div>
                </li>

                <li class="contentBox setBorder">
                    <div>
                        <span>�Ϲݺ���</span>
                        <span>
                            <input type="checkbox" title="�Ϲݺ���">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>�� �����</span>
                                <span>20,00��</span>
                            </li>
                            <li>
                                <span>���ػ�������</span>
                                <span>2���</span>
                            </li>
                            <li>
                                <span>�Ϲݻ�������</span>
                                <span>1���</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">�����ϱ�</a>
                    </div>
                </li>

                <li class="contentBox setBorder">
                    <div>
                        <span>��������</span>
                        <span>
                            <input type="checkbox" title="��������">
                        </span>
                    </div>
                    <div>
                        <ul>
                            <li>
                                <span>�� �����</span>
                                <span>3,000��</span>
                            </li>
                            <li>
                                <span>���ػ�������</span>
                                <span>2���</span>
                            </li>
                            <li>
                                <span>�Ϲݻ�������</span>
                                <span>1���</span>
                            </li>
                        </ul>
                        <a href="page05.jsp">�����ϱ�</a>
                    </div>
                </li>
            </ul>
        </div>

        <div class="setBorder">
            <div>
                <p> 10�� ����(������) / 10�ⳳ / ���ػ�� �߰����� / ���� / 24�� / ���� </p>
                <span>
                    <a href="">����</a>
                    <a href="../text/(��)�ﱹ���� �¶������⺸��_�μ����(202107)_���ÿ�.pdf" download>�������ȼ�</a>
                    <a href="">���Ϲ߼�</a>
                </span>
            </div>

            <div class="setBorder">
                <dl>
                    <dt>
                        <a href=""> ���峻�� </a>
                    </dt>
                    <dd>
                        <a href="">
                            <div>
                                <table class="setBorder">
                                    <colgroup>
                                        <col style="width: 166px;">
                                        <col style="width: 208px;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>���峻��</th>
                                            <th>���޻���</th>
                                            <th>����ݾ�</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>���ػ�������</th>
                                            <th>���ظ� �������� �����</th>
                                            <th>2��</th>
                                        </tr>
                                        <tr>
                                            <th>�Ϲݻ�������</th>
                                            <th>�����̿��� �������� �����</th>
                                            <th>1��</th>
                                        </tr>
                                    </tbody>
                                </table>
                                <ul>
                                    <li> *��, '������ ��� �� 2�� �̳� �ڻ�'�� ��쿡 �������� ������ ���ѵ˴ϴ�.</li>
                                </ul>
                            </div>
                        </a>
                    </dd>
                </dl>
            </div>

            <div class="setBorder">
                <dl>
                    <dt>
                        <a href=""> ����ȯ�ޱ� ����ǥ(���� : ��,%) </a>
                    </dt>
                    <dd>
                        <a href="">
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
                                            <th>����ð�</th>
                                            <th>���޳���</th>
                                            <th>���Ժ���� ����</th>
                                            <th>����ȯ�ޱ�</th>
                                            <th>ȯ�޷�</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>3����</th>
                                            <th>24��</th>
                                            <th>9,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>6����</th>
                                            <th>24��</th>
                                            <th>18,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>9����</th>
                                            <th>24��</th>
                                            <th>27,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>1��</th>
                                            <th>25��</th>
                                            <th>36,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>2��</th>
                                            <th>26��</th>
                                            <th>72,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>
                                        <tr>
                                            <th>3��</th>
                                            <th>27��</th>
                                            <th>108,000</th>
                                            <th>1,446</th>
                                            <th>1.3</th>
                                        </tr>
                                        <tr>
                                            <th>4��</th>
                                            <th>28��</th>
                                            <th>144,000</th>
                                            <th>6,084</th>
                                            <th>4.2</th>
                                        </tr>
                                        <tr>
                                            <th>5��</th>
                                            <th>29��</th>
                                            <th>180,000</th>
                                            <th>10,723</th>
                                            <th>5.9</th>
                                        </tr>
                                        <tr>
                                            <th>6��</th>
                                            <th>30��</th>
                                            <th>216,000</th>
                                            <th>12,361</th>
                                            <th>5.7</th>
                                        </tr>
                                        <tr>
                                            <th>7��</th>
                                            <th>31��</th>
                                            <th>252,000</th>
                                            <th>15,000</th>
                                            <th>5.9</th>
                                        </tr>
                                        <tr>
                                            <th>8��</th>
                                            <th>32��</th>
                                            <th>288,000</th>
                                            <th>11,000</th>
                                            <th>3.8</th>
                                        </tr>
                                        <tr>
                                            <th>9��</th>
                                            <th>33��</th>
                                            <th>324,000</th>
                                            <th>7,000</th>
                                            <th>2.1</th>
                                        </tr>
                                        <tr>
                                            <th>10��</th>
                                            <th>34��</th>
                                            <th>360,000</th>
                                            <th>0</th>
                                            <th>0.0</th>
                                        </tr>

                                    </tbody>
                                </table>
                                <ul>
                                    <li> *���� ��ຸ��Ⱓ ������ ���Ժ���� �� ����ȯ�ޱݸ� �ݿ��� �ݾ��̸�, ���� ���ſ��� � ���� �޶��� �� �ֽ��ϴ�.</li>
                                    <li> �� ���貲���� �ߵ����� �� ��� ����ȯ�ޱ��� ������ ����ῡ�� ����� �Ⱓ�� ���躸���, �����(���������� ����)���� �����ǹǷ� ���Ժ���Ẹ�� ���ų� ���� ���� �ֽ��ϴ�.</li>
                                    <li>����� ����ȯ�ޱ��� ���� ���������� ��ǰ�Դϴ�.</li>
                                    <li>��� ���ñݾ��� �����ݾ� �����Դϴ�.</li>
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