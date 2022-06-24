<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴대폰인증</title>
<link href="../css/page02.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/page10.js"></script>
<script src="jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<%
int manage = (Integer)session.getAttribute("manage");
String birth = (String)session.getAttribute("birth");
int num1 = (Integer)session.getAttribute("num1");
String smoking = (String) session.getAttribute("smoking");
String gender = (String) session.getAttribute("gender");

String paymoney = (String) session.getAttribute("paymoney");
String gang = (String) session.getAttribute("gang");
String remoney = (String) session.getAttribute("remoney");
String name = (String) session.getAttribute("name");
String email1 = (String) session.getAttribute("email1");
String email2 = (String) session.getAttribute("email2");
String call = (String) session.getAttribute("call");


%>
 
    <div class="tel wrap">
        <div>
            <h2 class="agreephone txtcenter">휴대폰인증</h2>
        </div>
        <div>
            <div>
                <div  class="agreephone" >
                <div>
                     <h4>약관동의</h4>
                    <input name="checkbox" id="allcheck" type="checkbox" class="checkbox" value="all" onclick='selectAll(this)'>
                    전체동의
                </div>

                <dl>
                    <dt>
                        <input name="checkbox" id="check1" type="checkbox" class="checkbox" value="개인정보수집이용제공동의 필수" onchange="check01()">
                        <a>개인정보수집이용제공동의(필수)</a>
                    </dt>
                    <dd id="01" style="display:none ;">
                        <p><b> 코리아크레딧뷰로㈜ 귀중 </b></p>
                        <p>귀사가 통신사(에스케이텔레콤㈜, ㈜케이티, LG유플러스㈜)로부터 위탁 받아 제공하는 휴대폰본인확인서비스 이용과 관련하여 본인의 개인정보를 수집•이용하고자 하는 경우에는 「개인정보보호법」 제15조, 제22조, 제24조, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조에 따라 본인의 동의를 얻어야 합니다. 이에 본인은 귀사가 아래와 같이 본인의 개인정보를 수집•이용하는데 동의합니다.</p>

                        <ul>
                            <li>
                                <p><b> □ 개인정보의 수집 및 이용목적</b></p>
                                ① 주민등록번호 대체서비스 제공
                                <br>개인정보보호법 제24조 2항에 의해 온라인 또는 오프라인상에서 회원가입, 글쓰기, 포인트적립 등 주민등록번호를 사용하지 않고도 본인임을 확인할 수 있는 개인정보보호 서비스(휴대폰본인확인서비스) 제공
                                <br>②. 에스케이텔레콤(주), (주)케이티, LG유플러스(주) 등 통신사에 이용자 정보를 전송하여 본인확인 및 휴대폰 정보의 일치 여부 확인 
                                <br>③. 휴대폰 사용자 확인을 위한 SMS(또는 LMS) 인증번호 전송
                                <br>④. 부정 이용 방지 및 수사의뢰
                                <br>⑤. 이용자 본인 요청에 의한 본인확인 이력정보 제공, 민원처리, 추후 분쟁조정을 위한 기록보존, 고지사항 전달 등
                                <br>⑥. 휴대폰번호보호서비스 가입여부 확인(서비스 가입자에 한함)
                            </li>
                            <li>
                                <p><b>  □ 수집할 개인정보</b></p>
                                ① 이용자가 가입한 이동통신사, 휴대폰번호, 성명, 성별, 생년월일, 내/외국인 구분
                                <br>② 중복가입확인정보(발급자의 웹사이트 중복가입 여부를 확인할 수 있는 정보)
                                <br>③ 연계정보(온/오프라인 사업자간 제휴 등 연계서비스가 가능하도록 특정 개인을 식별할 수 있는 정보)
                                <br>④ 인증처 및 사이트 URL
                                <br>⑤ 인증일시
                                <br>⑥ IP주소
                            </li>
                            <li>
                                <p> <b> □ 개인정보의 보유 및 이용기간</b></p>
                                개인정보는 개인정보의 수집목적 또는 제공받은 목적이 소멸되면 파기됩니다. 단, “개인정보보호법”, “정보통신망 이용 촉진 및 정보보호 등에 관한 법률”, “신용정보의 이용 및 보호에 관한 법률”, ” 본인확인기관 지정 및 관리에 관한 지침”, ”방송통신위원회 고시” 등 기타 관련법령의 규정에 의하여 법률관계의 확인 등을 이유로 특정한 기간 동안 보유하여야 할 필요가 있을 경우에는 아래에 정한 기간 동안 보유합니다.
                                <br>- 신용정보의 이용 및 보호의 관한 법률에 의거 정보 보존 기간: 3년
                                <br>- 계약 또는 청약철회 등에 관한 기록 : 5년
                                <br>- 대금결제 및 재화 등의 공급에 관한 기록 : 5년
                                <br>- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
                                <br>- 기타 다른 법률의 규정에 의하여 보유가 허용되는 기간
                            </li>
                            <li>
                                <p> □ 동의거부권리 및 거부에 따른 불이익 내용</p>
                                개인정보 수집 및 이용에 따른 동의는 거부할 수 있으며, 동의 후에도 언제든지 철회 가능합니다. 다만, 동의 거부 시에는 서비스 이용이 제한될 수 있습니다.
                            </li>
                        </ul>
                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input name="checkbox" id="check2" type="checkbox" class="checkbox" value="고유식별정보처리동의(필수)" onchange="check02()">
                        <a>고유식별정보처리동의(필수)</a>
                    </dt>
                    <dd id="02" style="display:none ;">
                        <p> <b> 통신사(에스케이텔레콤㈜, ㈜케이티, LGU플러스㈜) 귀중</b> </p>
                        <p>본인은 이 상거래와 관련하여 귀사(이하 ‘회사’)가 휴대폰본인확인서비스(이하 ‘서비스’)를 제공하기 위하여 고유식별정보를 다음과 같이 제3자에게 제공 등 처리 하는 데에 동의합니다.</p>

                        <ul>
                            <li>
                                <b> 1.고유식별정보를 제공받는자</b>
                                <br>-에스케이텔레콤 : NICE평가정보(주), 서울신용평가정보(주)
                                <br>-(주)케이티 : 코리아크레딧뷰로, 서울신용평가정보(주)
                                <br>-LGU플러스 : 서울신용평가정보(주)
                                <br><b> 2.고유식별정보를 제공받는 자의 목적: 연계정보(CI)와 중복가입확인정보(DI)의 생성 및 ‘회사’ 제공</b>
                                <br><b> 3.고유식별정보: ‘회사’가 보유하고 있는 고객의 주민등록번호와 외국인등록번호</b>
                                <br><b> 4.고유식별정보를 제공받는 자의 보유 및 이용기간: 연계정보(CI) 및 중복가입확인정보(DI) 생성 후 즉시 폐기</b>
                                <br>※ 귀하는 동의를 거부할 권리가 있으나, 동의하지 않는 경우 ‘서비스’를 이용할 수 없습니다.
                                <br>코리아크레딧뷰로㈜ 귀중
                                <br>귀사가 에스케이텔레콤㈜, ㈜케이티, LG유플러스㈜ 등 통신사로부터 위탁 받아 제공하는 휴대폰본인확인서비스 이용과 관련하여, 본인의 개인정보를 수집•이용하고자 하는 경우 「개인정보보호법」 제17조, 제22조, 제24조, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제24조의2에 따라 제3자에게 제공할 경우 본인의 사전동의를 얻어야 합니다. 이에 귀사가 아래와 같이 본인의 고유식별정보를 처리하는 것에 동의 합니다.
                            </li>
                            <li>
                                <p><b> □ 수집•이용 및 제공하는 고유식별정보 항목</b></p>
                                ① 주민등록번호(내국인)
                                <br> ② 외국인등록번호(국내거주외국인)
                            </li>
                            <li>
                                <p><b> □ 고유식별정보 보유 및 이용기간</b></p>
                                고유식별정보의 수집 • 이용 및 제공 목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 
                                <br> 다만, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련법령의 규정에 의하여 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
                                <br> - 계약 또는 청약철회 등에 관한 기록 : 5년
                                <br> - 대금결제 및 재화등의 공급에 관한 기록 : 5년
                                <br> - 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
                                <br> - 기타 다른 법률의 규정에 의하여 보유가 허용되는 기간
                            </li>
                            <li>
                                <p> <b> □ 동의거부 및 거부시 불이익</b></p>
                                고유식별정보 수집•이용 및 제공에 대한 동의는 거부할 수 있으며, 동의 후에도 철회 가능합니다. 다만, 동의 거부 및 철회 시에는 서비스 이용이 제한될 수 있습니다.
                            </li>
                        </ul>
                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input name="checkbox" id="check3" type="checkbox" class="checkbox" value="휴대폰본인확인서비스이용약관동의(필수)" onchange="check03()">
                        <a>휴대폰본인확인서비스이용약관동의(필수)</a>
                    </dt>
                    <dd id="03" style="display:none ;">
                        <p><b>  KCB휴대폰 본인확인 이용약관</b> </p>
                        
                        <ul>
                            <li>
                                <b> 제1조 (목적)</b>
                                <br>이 약관은 본인확인서비스 대행기관인 주식회사 코리아크레딧뷰로(이하 ''회사''라 합니다)와 본인확인서비스 이용자(이하 ''이용자''라 합니다) 간에 본인확인서비스 이용에 관한 회사와 이용자의 권리와 의무, 기타 제반 사항을 정함을 목적으로 합니다.
                                
                                <br><b>  제2조 (용어의 정리)</b>
                                <br>① "본인확인서비스"라 함은 이용자가 유무선 인터넷의 웹사이트 및 스마트폰 Application 등(이하 "사이트"라 합니다.)에서 본인 명의로 개통한 휴대폰을 이용하여, "본인확인정보"를 입력하고 인증 절차를 통하여 본인 여부와 본인이 등록한 정보의 정확성을 확인하여 주는 서비스를 말합니다. 
                                <br>② "본인확인정보"라 함은 이용자가 입력한 본인의 생년월일, 성별, 성명, 내/외국인 여부, 이동통신사, 본인명의로 개통된 휴대폰번호, 기타 본인확인기관과 이용자간에 별도로 설정한 번호 등 "이용자"의 본인 여부 확인에 필요한 정보를 말합니다. 
                                <br>③ "이용자"라 함은 "사이트"에서 본인확인기관이 제공하는 "본인확인서비스"를 이용하는 자를 말합니다. 
                                <br> ④ "본인확인기관"이라 함은 "본인확인서비스" 관련 법령에 따라 주민등록번호를 수집 이용하고, "사이트"에서 주민등록번호를 사용하지 아니하고 본인을 확인할 수 있도록 해주는 방법을 개발 제공 관리하는 업무를 담당하는 사업자를 말합니다. 
                                <br>⑤ "대행기관"은 본인확인기관을 대신하여 "이용자"가 "사이트"에서 "본인확인서비스"를 제공받을 수 있도록 "사이트"와 본인확인기관간의 "본인확인서비스"를 중계하고 "이용자"에게 이용방법의 안내와 문의 등 지원업무를 담당하여서, "사이트"에서 "이용자"에게 "본인확인서비스"를 대행하여 제공하는 사업자를 말합니다. 
                                <br>⑥ "사이트"라 함은 유무선 인터넷의 Web사이트, 스마트폰 Application(Apps)을 통하여 "이용자"에게 서비스, Contents, Point 등의 각종 재화와 용역을 유/무료로 제공하는 사업자 및 기관, 단체를 말합니다.
                                
                                <br><b> 제3조 (약관의 명시 및 변경)</b>
                                <br>① 회사는 본 약관을 서비스 초기 화면에 게시하여 이용자가 본 약관의 내용을 확인할 수 있도록 합니다.
                                <br>② 회사는 필요하다고 인정되는 경우 본 약관을 변경할 수 있으며, 회사가 약관을 변경할 경우에는 적용일자 및 변경사유를 명시하여 서비스 화면에 적용일자 14일 전부터 공지합니다. 
                                <br>③ 회사가 전항에 따라 변경 약관을 공지 또는 통지하면서 이용자에게 약관 변경 적용일 까지 거부의사를 표시하지 않으면 약관의 변경에 동의한 것으로 간주한다는 내용을 명확하게 공지 또는 통지하였음에도 이용자가 명시적으로 약관 변경에 대한 거부의사를 표시하지 아니하면 이용자가 변경 약관에 동의한 것으로 간주합니다.
                                <br>④ 이용자 또는 사이트가 변경된 약관에 대한 내용을 알지 못하여 발생하는 손해 및 피해에 대해서는 회사는 일체 책임을 지지 않습니다. 
                                <br>⑤ 회사의 약관은 개인정보보호 등을 규정한 정보통신 이용촉진 및 정보보호 등에 관한 법률 등 관련 법령에서 정한 절차와 범위 내에서만 유효합니다.
                                
                                <br><b> 제4조 (본인확인서비스 제공시간)</b>
                                <br>① 본인확인서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기 점검 및 기타 기술상의 이유, 기타 운영상의 사유와 목적에 따라 회사가 정한 기간에 일시 중지될 수 있으며, 각 사이트의 기술상, 운영상의 사유와 목적에 따라 일시 중지될 수 있습니다.
                                <br>② 회사는 본인확인서비스 중지에 따라 이용자에게 별도의 보상은 하지 않습니다. 
                                
                                <br><b> 제5조 (회사의 권리와 의무)</b>
                                <br>① 회사는 본인확인서비스 대행과 관련하여 인지한 이용자의 본인확인정보를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 기타 관계 법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다.
                                <br>② 회사는 이용자에게 안정적인 본인확인서비스 대행을 위하여 지속적으로 관련 시스템이나 절차, 기능 등의 예방점검, 유지보수 등을 이행하며, 본인확인서비스의 장애가 발생하는 경우, 이를 지체 없이 수리 및 복구합니다. 
                                <br>③ 회사는 서비스의 안전성과 신뢰성, 보안성을 확보하기 위하여 개인정보 처리시스템의 해킹방지시스템 및 보안관리 체계 운영 등 기술적, 관리적 조치를 취합니다. 
                                <br>④ 회사는 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖춥니다 
                                <br>⑤ 회사는 해킹 침해 방지를 위하여 다음 각 호의 시스템 및 프로그램을 설치하여 운영합니다. 
                                <br>1. 침입 차단 및 탐지시스템 설치 
                                <br>2. 그 밖에 필요한 보호장비 또는 암호프로그램 등 정보보호시스템 설치 
                                <br>⑥ 회사는 컴퓨터바이러스 감염을 방지하기 위하여 바이러스 방지 대책을 자체적으로 운영합니다.
                                
                                <br><b> 제6조 (이용자의 권리와 의무)</b>
                                <br>① 이용자는 서비스를 이용함에 있어서 다음 각호에 해당하는 행위를 하여서는 안되며, 회사는 위반 행위에 따르는 일체의 법적 책임을 지지 않습니다. 
                                <br>1. 본인이 아닌 타인의 본인확인정보를 부정하게 사용 및 도용하는 행위 
                                <br>2. 회사 및 본인확인기관, 사이트의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위 
                                <br>3. 법령에 규정하는 제반 범죄 및 위법 행위 
                                <br>② 이용자는 본 약관에서 규정하는 사항과 서비스에 대한 이용안내 또는 주의사항 등을 준수하여야 합니다. 
                                <br>③ 이용자는 이용자 본인의 접근매체, 본인확인정보의 분실, 유출, 누설없이 본인 스스로 성실히 관리하여야 합니다. 
                                <br>④ 이용자는 회사의 서비스 고객센터를 통하여 관련 문의를 할 수 있습니다. 
                                <br>《회사의 서비스 고객센터 연락처 : 02-708-1000, www.ok-name.co.kr》
                                <br>⑤ 이용자는 본인확인서비스가 자신의 의사에 반하여 특정 사이트에 제공되었음을 안 때에는 본인확인기관 또는 회사를 통하여 자신의 본인확인정보 삭제를 요구할 수 있으며, 본인확인기관 또는 회사는 그 정정요구를 받은 날부터 2주 이내에 처리 결과를 알려 주어야 합니다.
                                <br>회사의 서비스 고객센터 연락처 : 02-708-1000, www.ok-name.co.kr》
                                
                                <br><b> 제7조 (이용자의 개인정보보호)</b>
                                <br>① 회사는 본인확인서비스를 대행함에 있어 취득한 이용자의 정보 또는 자료를 이용자의 동의 없이 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 않습니다. 
                                <br>② 이용자의 개인정보 보호는 회사가 관련 법령과 회사가 수립하여 운영하는 개인정보 취급방침에 따릅니다. 자세한 회사의 개인정보 제공 범위와 보호 방침, 위탁은 서비스 홈페이지(www.ok-name.co.kr)에 제공되는 개인정보 취급방침을 참조하시기 바랍니다.
                                
                                <br><b>제8조 (약관 외 준칙)</b>
                                <br>본 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률 등 기타 관련 법령 또는 상관례에 따릅니다.

                                <br><b>부칙</b>
                                <br>(시행일) 이 약관은 공시한 날로부터 시행합니다.
                            </li>
                        </ul>
                    </dd>
                </dl>

                <dl>
                    <dt>
                        <input name="checkbox" id="check4" type="checkbox" class="checkbox" value="통신사이용약관(3사전체) (필수)" onchange="check04()">
                        <a>통신사이용약관(3사전체) (필수)</a>
                    </dt>
                    <dd id="04" style="display:none ;">
                        <p><b> SKT 이용 약관</b> </p>
                        
                        <ul>
                            <li>
                                제1조 (목적)
                                <br> 약관은 '본인확인서비스'를 제공하는 에스케이텔레콤 주식'회사'(이하 '회사'라 합니다)와 '본인 확인서비스' '이용자'(이하 '이용자'라 합니다)간에 '본인확인서비스' 이용에 관한 '회사'와 '이용자'의 권리와 의무, 기타 제반 사항을 정함을 목적으로 합니다.

                                <br>제2조 (용어의 정의)
                                <br>1. '본인확인서비스'라 함은 '이용자'가 유무선 인터넷 웹'사이트' 및 스마트폰 Application 등(이하 '사이트'라 합니다)에서 본인 명의로 개통한 휴대폰을 이용하여, '본인확인정보'를 입력하고 인증절차를 통하여 본인 여부와 본인이 등록한 정보의 정확성을 확인하여 주는 서비스를 말합니다.

                                <br>2. '본인확인정보'라 함은 본인확인을 위하여 '이용자'가 입력한 본인의 생년월일, 성별, 성명, 내/외국인 여부, 본인명의로 개통된 이동전화번호, 기타 '회사'와 '이용자'간에 별도로 설정한 번호 등'이용자'에 대한 '본인확인서비스' 제공을 위해 필요한 정보를 말합니다.

                                <br>3. '이용자'라 함은 '사이트'에서 '회사'가 제공하는 '본인확인서비스'를 이용하는 자를 말하며, '회사'의 이동전화서비스 가입자와 '회사'의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자중 '회사'의 '본인확인서비스'를 이용하는 자를 말합니다.

                                <br>4. '중복가입확인정보'라 함은 '이용자'가 '사이트'에 가입하거나 '사이트'에서 특정 서비스 이용, 구매 등 어떤 행동을 할 때, 해당 '이용자'의 기 가입/이용 여부를 확인하기 위하여 생성되는 정보를 말합니다.

                                <br>5.  '본인확인기관'이라 함은 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 '본인확인서비스' 관련 법령에 따라 주민등록번호를 수집/이용하고, '사이트'에서 주민등록번호를 사용하지 아니하고 본인을 확인할 수 있도록 해주는 방법(이하 '대체수단'이라 합니다)을 개발/제공/관리하는 업무를 담당하는 사업자를 말합니다.

                                <br>6. '연계 식별정보'라 함은 '이용자'가 가입/등록한 '사이트'들간의 서비스 또는 Contents, point등의 연계, 정산 등의 목적으로 '사이트'에 가입/등록한 '이용자'를 식별하기 위하여 생성되는 정보를 말합니다.

                                <br>7. '대행기관'은 '이용자'가 '사이트'에서 '본인확인서비스'를 제공받을 수 있도록, '사이트'와 '회사'간의 '본인확인서비스'를 중계하고 '이용자'에게 '본인확인서비스' 이용방법의 안내와 문의 등 지원업무를 담당하는 등, '회사'가 위탁한 업무범위 내에서 '회사'를 대신하여 '이용자'에게 '본인확인서비스'와 관련된 업무를 제공하는 사업자를 말합니다.

                                <br>8. '사이트'라 함은 유무선 인터넷 웹'사이트', 스마트폰 Application 등을 통하여 '이용자'에게 상품, 서비스, Contents, Point 등 각종 재화와 용역을 유/무료로 제공하는 개인, 법인, 기관, 단체 등을 말합니다.

                                <br>9. '접근매체'란 '본인확인서비스' 이용을 위해 '이용자' 및 '이용자'가 입력하는 내용 등의 진실성과 정확성을 담보하는 수단으로서, '이용자'가 입력하는 제2항의 정보, I-PIN ID 및 Password 등 '본인확인기관'에서 발급받은 정보, 기타 '이용자'가 '회사' 및 '사이트'에서 설정한 ID 및 Password등의 정보, '이용자' 명의의 이동전화 번호 등을 말합니다.

                                <br>10. '대체수단'이라 함은 '중복가입확인정보' 및 연계식별정보를 포함하여, 주민등록정보를 사용하지 아니하고 본인여부를 식별 및 확인할 수 있는 수단을 말합니다.

                                <br>11. '부가서비스'라 함은 '회사'가 '본인확인서비스'와 관련하여 추가적인 보안·인증절차 등을 유료 또는 무료로 제공하는 서비스를 말하며, 유료인 경우에는 '이용자'에 대해 '회사'의 이동전화서비스 청구서에 합산하여 '부가서비스' 이용요금을 청구하고 이동전화 요금과 함께 수납합니다.

                                <br>제3조 (약관의 명시 및 변경)
                                <br>1. '회사'는 이 약관을 '회사'가 운영하는 '사이트' 등에 게시하거나 '이용자'의 '본인확인서비스' 이용 시 공개하여 '이용자'가 이 약관의 내용을 확인할 수 있도록 합니다. 또한 '이용자'의 요청이 있는 경우 전자문서의 형태로 약관 사본을 '이용자'에게 교부합니다.

                                <br>2. '회사'는 필요하다고 인정되는 경우 이 약관을 변경할 수 있으며, '회사'가 약관을 변경할 경우에는 적용일자 및 변경사유를 명시하여 '회사'가 운영하는 '사이트'에서 적용일자 15일 전부터 공지합니다.

                                <br>3. '회사'가 전항에 따라 변경 약관을 공지 또는 통지하면서 '이용자'에게 약관 변경 적용일 까지 거부의사를 표시하지 않으면 약관의 변경에 '동의'한 것으로 간주한다는 내용을 명확하게 공지 또는 통지하였음에도 '이용자'가 명시적으로 약관 변경에 대한 거부의사를 표시하지 아니하면 '이용자'가 변경 약관에 '동의'한 것으로 간주합니다. '이용자'는 변경된 약관 사항에 '동의'하지 않으면 '본인확인서비스' 이용을 중단하고 이용 계약을 해지할 수 있습니다.

                                <br>4. '이용자' 또는 '사이트'가 이 약관의 내용(약관 변경 시 변경된 내용 포함)을 알지 못하여 발생하는 손해 및 피해에 대해서는 '회사'는 일체 책임을 지지 않습니다.

                                <br>제4조 (이용 계약의 성립)
                                <br>'이용자'가 '사이트' 등에 게시되거나 '본인확인서비스' 이용 시 공개되는 이 약관의 내용에 '동의'버튼을 누르거나 체크하면 약관에 '동의'하고, '본인확인서비스' 이용을 신청한 것으로 간주합니다.

                                <br>제5조 ('본인확인정보' 및 '접근매체'의 관리 등)
                                <br>1. '회사'는 '본인확인서비스' 제공 시 '이용자'가 사용한 '접근매체'와 입력된 '본인확인정보', '사이트'에서 제공하는 정보 등을 이용하여, '이용자'의 신원, 권한 및 '본인확인서비스'를 요청한 내역 등을 확인 할 수 있습니다.

                                <br>2. '이용자'는 자신의 본인확인 정보 및 '접근매체'를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공할 수 없으며, '본인확인정보' 및 '접근매체'의 도용이나 위조/변조 등을 방지하기 위해 충분한 주의를 기울여야 합니다. 

                                <br>3. '이용자'는 자신의 '본인확인정보' 및 '접근매체'를 제3자에게 누설 또는 노출하거나 방치하여서는 안됩니다.

                                <br>4. '이용자'는 '접근매체'의 분실/도난/유출/위조/변조 등 또는 '본인확인정보' 유출 등의 사실을 인지할 경우 '회사'에 즉시 통지하여야 하며, '회사'는 '이용자'의 통지를 받은 때부터 즉시 '본인확인서비스'를 중지합니다.

                                <br>제6조 ('본인확인서비스' 안내)
                                <br>1. '회사'가 제공하는 '본인확인서비스'는, '이용자'가 입력한 '본인확인정보'에 대해, '이용자'가 본인명의로 개통하고 사용하고 있는 이동전화 서비스 관련 정보/'중복가입확인정보'/'연계 식별정보'를 이용하여, 본인 식별 또는 본인의 성년/미성년 여부, 중복가입여부 등을 확인하여주는 서비스 입니다. 단 '회사'의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자에 대해서는 개별 별정통신사업자가 '회사'에 취급을 위탁한 정보만을 기반으로 본문의 서비스를 제공합니다.

                                <br>2. '회사'는 직접 또는 '대행기관'을 통하여 '사이트'에, 서비스 화면 또는 Socket형태로 '본인확인서비스'를 제공하며, '사이트'는 '사이트' 운영과 관련된 법령과 '사이트' 이용약관에 따라 '이용자'에게 '본인확인서비스' 이용 수단을 제공합니다.

                                <br>3. '이용자'는 특정 '사이트'에서 '회사' 및 '대행기관'의 이용약관, '사이트'의 이용약관에 '동의'하는 경우, 해당 '사이트'에서 '회사'가 제공하는 '본인확인서비스'를 이용하실 수 있습니다.

                                <br>4. 제3항에 따라 각 이용약관에 '동의'한 경우, '이용자'가 자신의 생년월일, 성명, 성별, 내/외국인,본인 명의로 가입한 이동통신사와 이동전화 번호 등의 정보를 입력하고, 입력한 정보가 일치하는 경우에 '이용자'의 이동전화 번호로 송신되는 1회성 암호(승인암호)를 정확하게 입력하는 것으로 본인 확인이 이루어 집니다. 단, '회사'가 직접 운영하는 '사이트' 또는 관련 법령 등에 따라 주민등록번호의 수집/이용이 허용되는 '사이트'에서는 생년월일 대신 주민등록번호를 받을 수 있습니다.

                                <br>5. 제4항에 따라 본인확인이 완료된 '이용자'에 대해서는 해당 '이용자'의 '본인확인정보', '중복가입확인정보' 및 '연계 식별정보'를 '회사'가 보유하고 있는 경우, '사이트'의 요청에 따라 '사이트'에 제공될 수 있으며, 제공된 정보는 각 '사이트'가 '이용자'와 체결한 약관, 계약에 따라 운영/관리/폐기됩니다.

                                <br>제7조 ('본인확인서비스'의 '부가서비스')
                                <br>1. '회사'는 '본인확인서비스' 이용과 관련하여, 보다 강화된 보안을 필요로 하는 '이용자'가 가입을 신청하는 경우에 한하여, 별도의 '부가서비스'를 유료 또는 무료로 제공합니다.

                                <br>2. '회사'가 제공하는 '부가서비스'는 다음 각 호와 같으며, 상세 서비스 내용 및 이용 조건은 서비스 별 이용약관에 따릅니다.

                                <br>휴대폰 인증보호 서비스 (월 1천원, 부가가치세 별도)

                                <br>제8조 ('대체수단'의 생성 및 제공)
                                <br>1. '회사'는 '이용자'의 이동전화 가입 시 수집한 주민등록번호를 토대로 '대체수단'을 생성하고 '사이트'에 제공할 수 있습니다.

                                <br>2. '회사'의 '대체수단' 생성 및 제공방법은 다음 각 호와 같습니다.

                                <br>가. '이용자'의 이동전화 가입 시, 제3의 '본인확인기관'에 실명 사용여부를 질의하고, 이에 따라 '대체수단'을 받아와서 저장하는 방법

                                <br>나. '이용자'의 '본인확인서비스' 이용 시, 제3의 '본인확인기관'간의 합의를 통하여 비밀번호 등 '대체수단' 규격을 정한 후, 이에 따라 '회사'가 생성하거나 제3의 '본인확인기관'으로부터 제공받는 방법
                                <br>다. '이용자'의 '본인확인서비스' 이용 시, 해당 '이용자'의 이동전화 가입 시 '회사'가 제공받은 주민등록번호와 해당 '이용자'가 이용하고 있는 '사이트'의 일련번호를 제3의 '본인확인기관'에 제공하고, 이에 해당되는 '대체수단'을 받아와서 제공하는 방법

                                <br>3. 제1항 제3호에 따라 '회사'가 제3의 '본인확인기관'으로부터 '대체수단'을 제공받은 경우, 해당 '대체수단'의 정확성 유무에 대해서는 '회사'가 책임지지 않습니다.

                                <br>제9조 ('본인확인서비스' 제공 시간)
                                <br>1.  '본인확인서비스'의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 정기 점검 및 기타기술상의 이유, 기타 운영상의 사유와 목적에 따라 '회사'가 정한 기간에 일시 중지될 수 있으며, 각 '사이트'의 기술상, 운영상의 사유와 목적에 따라 일시 중지될 수 있습니다.

                                <br>2. '회사'는 '본인확인서비스' 중지에 따라 '이용자'에게 별도의 보상은 하지 않습니다. 단 '본인확인서비스'를 이용기간에 따라 정액제 형태로 유료 판매하는 경우, 정액제 유료 '이용자'에게는 중지시간이 24시간을 초과한 경우에 한하여, 월 이용금액을 해당월의 날짜 수로 일할 계산하여 환불 또는 차감하며, 이용금액의 과금 당사자가 '회사'인 경우에는 '회사'가, '대행기관'인 경우에는 '대행기관'이 환불 또는 차감하여 드립니다.

                                <br>제10조 ('회사'의 권리와 의무)
                                <br>1. '회사'가 '접근매체'의 발급주체가 아닌 경우에는 '접근매체'의 위조/변조/누설 등으로 인해 '이용자'에게 발생한 손해에 대하여 배상책임이 없습니다.

                                <br>2. '이용자'가 제5조 제2항 내지 제4항의 내용을 준수하지 아니하거나, '회사'가 부정사용 여부를 확인할 수 없는 '접근매체' 또는 '본인확인정보'의 이용으로 인해 발생한 '이용자'의 손해에 대하여'회사'는 배상책임이 없습니다.

                                <br>3. '회사'는 '본인확인서비스' 제공과 관련하여 인지한 '이용자'의 '본인확인정보'를 본인의 승낙 없이 제3자에게 누설하거나 배포하지 않습니다. 단, 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 등 관계 법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다.

                                <br>4.  '회사'는 '이용자'에게 안정적인 '본인확인서비스' 제공을 위하여 지속적으로 관련 시스템이나 절차, 기능 등의 예방점검, 유지보수 등을 이행하며, '본인확인서비스'의 장애가 발생하는 경우, 이를 지체 없이 수리 및 복구합니다.

                                <br>5. '회사'는 복제폰, 대포폰, 휴대폰 소액대출(일명 휴대폰깡) 등 시장 질서를 교란시키는 불법행위에 의한 피해 방지를 위하여 불법행위가 의심되는 '이용자' 또는 회선에 대한 '본인확인서비스' 이용을 제한하거나 중지하는 것은 물론, 관계 법령에 따라 행정 및 사법기관에 수사를 의뢰할 수 있습니다.

                                <br>6. '회사'는 '회사'가 제공하는 이동전화 등 통신역무의 요금을 정상적으로 납부하지 않거나 일부 특수 요금제에 가입한 '이용자'에 대하여 '본인확인서비스' 이용을 제한할 수 있습니다.

                                <br>7. '회사'는 '이용자'가 '회사'의 이동전화 등 통신역무 이용을 위해 제출한 가입신청서 또는 이와 관련된 본인확인 절차가, 명의도용, 관련 서류 위/변조 등 위법 행위가 개입된 사실을 확인하는 즉시 해당 '이용자' 및 회선에 대한 '본인확인서비스' 제공을 중지하며, 해당 '이용자'와 회선에 대해 관련 법령 및 통신역무 이용약관에 따른 조치를 취할 수 있습니다.

                                <br>8. '이용자'중 '회사'의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자에 대해서는, 개별 별정통신사업자의 본인확인절차 미비, 명의도용, 관련 서류 위·변조, '본인확인정보'의 오류 등에 대해 '회사'는 일절 책임을 부담하지 않고, 개별 별정통신사업자가일체의 책임을 부담합니다.

                                <br>제11조 ('이용자'의 권리와 의무)
                                <br>1. '이용자'는 '본인확인서비스'를 이용함에 있어서 다음 각 호에 해당하는 행위를 하여서는 안되며, '회사'는 '이용자'의 다음 각 호의 행위에 대해 일체의 법적 책임을 지지 않습니다.

                                <br>가. 본인이 아닌 타인의 '본인확인정보'를 부정하게 사용 및 도용하는 행위

                                <br>나. '회사' 및 '대행기관', '사이트'의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 행위

                                <br>다. 법령에 규정하는 제반 범죄 및 위법 행위

                                <br>라. 이 약관에 규정된 '이용자'의 의무 또는 준수사항을 위반하는 행위② '이용자'는 이 약관에서 규정하는 사항과 '본인확인서비스'에 대한 이용안내 또는 주의사항 등을 준수하여야 합니다.

                                <br>2. '이용자'는 이 약관에서 규정하는 사항과 '본인확인서비스'에 대한 이용안내 또는 주의사항 등을 준수하여야 합니다. 

                                <br>3. '이용자'는 제5조의 의무를 이행하여야 합니다.

                                <br>제12조 ('이용자' 정보의 제공 범위)
                                <br>1. '회사'는 '본인확인서비스'를 제공함에 있어 취득한 '이용자'의 정보를 '이용자'의 '동의' 없이 제3자에게 제공, 누설하거나 업무상 목적 외에 사용하지 않습니다.

                                <br>2. '이용자'가 개인정보의 수집/이용/제공에 '동의'하고 이용하는 '사이트' 또는 신용카드사 등 제3자가, '이용자'의 이동전화 번호 및 해당 '사이트'/신용카드사 등 제3자가 보유한 '대체수단'의 진이실성 여부를 '회사'에 대해 확인할 경우, '회사'는 해당 이동전화 번호 및 '대체수단'의 진실성 여부를,확인을 요청한 '사이트' 또는 신용카드사 등 제3자에게 회신할 수 있습니다.

                                <br>제13조 ('본인확인서비스'의 안정성 확보)
                                <br>1. '회사'는 '본인확인서비스'의 안전성과 신뢰성, 보안성을 확보하기 위하여 해킹방지시스템 및 보안관리 체계 구성, 접근제한 등 기술적, 관리적 조치를 취합니다.

                                <br>2. '회사'는 '본인확인서비스' 관련 서버 및 통신기기의 정상작동여부 확인을 위하여 정보처리시스템 자원 상태의 감시, 경고 및 제어가 가능한 모니터링 체계를 갖춥니다.

                                <br>3. '회사'는 해킹 침해 방지를 위하여 다음 각 호의 시스템 및 프로그램을 설치하여 운영합니다.

                                <br>가. 침입 차단 및 탐지시스템 설치

                                <br> 나. 그 밖에 필요한 보호장비 또는 암호프로그램 등 정보보호시스템 설치

                                <br>4. '회사'는 컴퓨터바이러스 감염을 방지하기 위하여 바이러스 방지를 위한 방어, 탐색, 복구 절차를 자체적으로 운영합니다.

                                <br>제14조 ('이용자'의 개인정보보호)
                                <br>1. '이용자'의 개인정보 보호는 '회사'가 관련 법령과 '회사'가 수립하여 운영하는 개인정보 취급방침 등에 따릅니다. 자세한 '회사'의 개인정보 수집/이용 범위 등은 이동전화 가입신청서와 '회사' 대표 '사이트'(www.sktelecom.com) 에서 제공되는 개인정보 취급방침을 참조하시기 바랍니다.

                                <br>2. '이용자'중 '회사'의 이동전화망을 이용하여 개별적으로 이동전화서비스를 제공하는 별정통신사업자의 가입자에 대해서는, 해당 가입자가 속한 개별 별정통신사업자가 개인정보보호 및 수집·이용·제공 등에 대한 법적 절차 준수와 관련된 일체의 책임을 부담하며, 해당 가입자에 대한 개인정보 수집·이용 범위 등은 개별 별정통신사업자의 개인정보 취급방침을 참조하시기 바랍니다.

                                <br>3. 제1항과 제2항의 개인정보 취급방침에서 정한 바 이외에, '회사'는 '본인확인서비스'를 위하여 다음 각 호의 경우에 '이용자' 개인정보의 일부를 '회사'가 선정한 사업자에게 제공할 수 있습니다.

                                <br>가. '이용자'의 '본인확인서비스' 이용 시 '사이트'가 필요로 하는 '이용자' 식별정보('중복가입확인정보', '대체수단')의 생성 및 관리, 제공을 위하여 '이용자'의 주민등록정보를 제3의 '본인확인기관'에게 제공할 수 있습니다.

                                <br>나. '회사'가 수집 또는 제공받은 개인정보('중복가입확인정보', '대체수단')는 '회사' 또는 '대행기관'을 통해 '사이트'에게 제공합니다.

                                <br>다. '본인확인서비스'를 위한 '회사'의 개인정보의 수집/이용/제공범위 및 개인정보의 취급을 위탁하는 수탁자와 위탁업무내용 등은 이 약관이 게시되는 화면에 별도로 링크하여 제공합니다.

                                <br>제15조 (약관 외 준칙)
                                <br>이 약관에 명시되지 아니한 사항에 대해서는 정보통신망 이용 촉진 및 정보보호 등에 관한 법률 등 기타 관련 법령 또는 상관례에 따릅니다.

                                <br>제16조 (관할법원)
                                <br>1. '본인확인서비스' 이용과 관련하여 '회사'와 '이용자' 사이에 분쟁이 발생한 경우, '회사'와 '이용자'는 분쟁의 해결을 위해 성실히 협의합니다.

                                <br>2. 제1항의 협의에서도 분쟁이 해결되지 않을 경우 양 당사자는 민사소송법상의 관할 법원에 소를 제기할 수 있습니다.

                                <br>부칙

                                <br>(시행일) 이 약관은 공시한 날로부터 시행합니다. 
                            </li>
                        </ul>
                    </dd>
                </dl>
                </div>

                <h4 class="txtcenter">본인인증 정보</h4>
                <form >
                    <div>
                        <table class="wrap">
                            <colgroup>
                                <col style="width: 122px; ;">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>성명</th> 
                                    <td><input type="text" value="<%=name%>"></td>
                                </tr>
                                <tr>
                                    <th>생년월일</th> 
                                    <td>
                                        <input type="text">
                                        <input type="radio" name="y-radio" value="0"> <span>남자</span>
                                        <input type="radio" name="y-radio" value="1"> <span>여자</span>
                                    </td>

                                </tr>
                                <tr>
                                    <th>휴대폰</th>
                                    <td>
                                        <select class="select" id="">
                                            <option value>통신사선택</option>
                                            <option value="01">SKT</option>
                                            <option value="02">KT</option>
                                            <option value="03">LG U+</option>
                                            <option value="04">SKT 알뜰폰</option>
                                            <option value="05">KT 알뜰폰</option>
                                            <option value="06">LG U+ 알뜰폰</option>
                                        </select>
                                        <select class="numsel" id="">
                                            <option value="010">010</option>
                                            <option value="011">011</option>
                                            <option value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="018">018</option>
                                            <option value="019">019</option>
                                        </select>
                                        <input type="text">
                                        <button>인증번호 발송</button>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th>인증번호</th>
                                    <td>
                                    <input type="text">
                                    <button><a href="page08.jsp">확인</a></button>
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                        

                    </div>
                </form>

            </div>
        </div>
    </div>

</body>
</html>