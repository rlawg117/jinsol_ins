<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");
 	String custBirth = request.getParameter("custBirth");
 %>

<div>
        <div class="topwrap">
            <div class="topwrap">
                <h1>(��)�ﱹ����¶��� ���⺸�� �����ϱ�</h1>
                <div class="plandata box">
                    <dl>
                        <dt>����</dt>
                        <dd>
                            <%=request.getParameter("custBirth") %>
                        </dd>
                    </dl>
                    <dl>
                        <dt>����Ⱓ</dt>
                        <dd>
                            <b>10��</b>
                        </dd>
                    </dl>
                    <dl>
                        <dt>���ԱⰣ</dt>
                        <dd>
                            <b>���ⳳ</b>
                        </dd>
                    </dl>
                    <dl>
                        <dt>���Աݾ�</dt>
                        <dd>
                            <b>200,000,000��</b>
                        </dd>
                    </dl>
                    <dl>
                        <dt>�� �����</dt>
                        <dd>
                            <b>6,000��</b>
                        </dd>
                    </dl>
                    
                </div>
            </div>
        </div>

        <form method="post">

            <div class="sub_cont">
                <div class="sub_cont01">
                    <div class="boxguide">
                        <b>���������� �Է��ϴ� �ܰ��Դϴ�.</b>
                        ����ڴ��� ������ �Է��ϰ�, ����ó���� �����ϴ� �ܰ��Դϴ�.
                    </div>
                    
                    <dir></dir>
                </div>
            </div>

        </form>



    </div>


</body>
</html>