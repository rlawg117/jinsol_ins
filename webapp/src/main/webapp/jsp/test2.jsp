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
                <h1>(무)흥국생명온라인 정기보험 가입하기</h1>
                <div class="plandata box">
                    <dl>
                        <dt>구분</dt>
                        <dd>
                            <%=request.getParameter("custBirth") %>
                        </dd>
                    </dl>
                    <dl>
                        <dt>보험기간</dt>
                        <dd>
                            <b>10년</b>
                        </dd>
                    </dl>
                    <dl>
                        <dt>납입기간</dt>
                        <dd>
                            <b>전기납</b>
                        </dd>
                    </dl>
                    <dl>
                        <dt>가입금액</dt>
                        <dd>
                            <b>200,000,000원</b>
                        </dd>
                    </dl>
                    <dl>
                        <dt>월 보험료</dt>
                        <dd>
                            <b>6,000원</b>
                        </dd>
                    </dl>
                    
                </div>
            </div>
        </div>

        <form method="post">

            <div class="sub_cont">
                <div class="sub_cont01">
                    <div class="boxguide">
                        <b>개인정보를 입력하는 단계입니다.</b>
                        계약자님의 정보를 입력하고, 정보처리에 동의하는 단계입니다.
                    </div>
                    
                    <dir></dir>
                </div>
            </div>

        </form>



    </div>


</body>
</html>