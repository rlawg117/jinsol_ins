<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메일보내기</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="page4" class="setBorder emailbox">
        <h2>메일 보내기</h2>
        <h4>보험가입설계에 대한 상세내용과 가입제안서를 메일로 받아보실 수 있습니다.</h4>
        <div>
           <span>이메일</span>
           <input type="text" class="setBorder" id="email1" title="이메일 주소 입력" value>
            @
           <input type="text" class="setBorder" id="email2" title="이메일 도메인 주소 입력" value>
        </div>

        <div>
            <div class="title setBorder">
                <p>개인(신용)정보 수집 및 이용동의</p>
                <div class="agree">
                    <input type="radio" name="agreeyn" class="i-radio" value="1" title="동의">
                    <span>동의</span>
                    <input type="radio" name="agreeyn" class="i-radio" value="2" title="비동의">
                    <span>비동의</span>
                </div>
            </div>

            <div>
                <ul>
                    <li>
                        <span>1.수집 및 이용 목적</span>
                        <p>보험상품 설계내용 및 가입제안서 발송</p>
                    </li>
                    <li>
                        <span>2. 수집하는 개인정보의 항목</span>
                        <p>이메일주소</p>
                    </li>
                    <li>
                        <span>3. 보유기간 및 이용시간</span>
                        <p>이메일 발송 직후 즉시 파기</p>
                    </li>
                </ul>
                <p>
                    고객님께서는 동의를 거부할 수 있습니다. 다만, 동의 거부 시에는 해당 서비스 이용이 제한됩니다. 위 사항에 동의 하십니까?
                </p>
            </div>
        </div>

        <div class="btn_wrap">
            <a href="" onclick="">이메일보내기</a>
            <a href="" onclick="">닫기</a>
        </div>

    </div>

</body>
</html>