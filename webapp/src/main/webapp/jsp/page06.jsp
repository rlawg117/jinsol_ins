<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <div class="subscription_wrap">
        <div class="top">
            <div class="top">
                <h1>
                    <b>(��)�ﱹ����¶��� 
                        <span>���⺸��</span>
                    </b> �����ϱ�
                </h1>
                
                <div class="plan_data">
                    <dl class="type">
                        <dt>����</dt>
                        <dd id="p_item_cont1"><b>(��)2��(������)</b></dd>
                    </dl>
                    <dl class="period1">
                        <dt>����Ⱓ</dt>
                        <dd id="p_item_cont2"><b><b>10</b>��</b></dd>
                    </dl>
                    <dl class="period2">
                        <dt>���ԱⰣ</dt>
                        <dd id="p_item_cont3"><b><b>���ⳳ</b></b></dd>
                    </dl>
                    <dl class="money1">
                        <dt>���Աݾ�</dt>
                        <dd id="p_item_cont6"><b>     100,000,000��</b></dd>
                    </dl>
                    <dl>
                        <dt>�� �����</dt>
                        <dd id="p_item_cont5"><b>          20,000��</b></dd>
                    </dl>
                </div>
                <div class="subscription_cont">

                    <!-- û�� 1�ܰ� -->
                    <div class="subscription_01">
            
                        <div class="box_guide">
                            <b class="fs16 c333">���������� �Է��ϴ� �ܰ��Դϴ�.</b> 
                            ����ڴ��� ������ �Է��ϰ�, ����ó���� �����ϴ� �ܰ��Դϴ�.
                        </div>
                        <!-- �������� -->
                        <dl class="subscription_box mt20">
            
                            <dt class="person">��������</dt>
            
            
                            <dd class="step1">
                                <table class="input_field">
                                    <caption>��������</caption>
                                    <colgroup>
                                        <col width="153">
                                        <col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>����</th>
                                            <td style="border-right: none;">
                                                <input type="text" class="input" style="width:239px" id="CUST_NM" name="CUST_NM" title="�̸� �Է�" alt="�̸��� �Է��ϼ���." maxlength="50" hname="�̸�" required="required" npkencrypt="off">
                                                <label class="foreign_check ml10"><input type="checkbox" class="checkbox" title="�ܱ��� ���� ����" name="FORN_YN" id="FORN_YN"> <span class="fs12">�ܱ����� ��� üũ�� �ּ���.</span></label>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <th id="juminno_text">�ֹι�ȣ</th>
                                            <td>
                                                <input type="password" id="PSNL_ID" name="PSNL_ID" required="required" class="input" maxlength="7" hname="�ֹι�ȣ���ڸ�" title="�ֹι�ȣ ���ڸ� �Ǵ� �ܱ����� ��� �ܱ��ε�Ϲ�ȣ ���ڸ� �Է�">
                                                <span class="rdo_type01 ">
                                                    <label class="drvtype">
                                                        <input type="checkbox" id="ess_text_psnl_id" name="ess_text_psnl_id" value="Y" class="d-radio" style="">���콺 �Է�</label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr class="color id-card-title">
                                            <th>�ź��� Ȯ��</th>
                                            <td>
                                                <div class="rdo_type01">
                                                    <label><input type="radio" class="d-radio" name="ID_GB" value="1" hname="�ź��� Ȯ�� ���" title="�ֹε���� ����" id="juminclick">
                                                        <span>�ֹε����</span>
                                                    </label>
                                                    <label><input type="radio" class="d-radio" name="ID_GB" value="2" hname="�ź��� Ȯ�� ���" title="���������� ����" id="licenceclick">
                                                        <span>����������</span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="color id-card-wrap id-input">
                                            <th></th>
                                            <td>
                                                <div class="inputs-psnl">
                                                    <div style="margin-top:10px;">
                                                        <span>
                                                            <b>�߱�����</b>
                                                        </span> 
                                                        <input type="text" name="ISUE_YMD" id="ISUE_YMD" maxlength="8" class="i-text" title="�߱����� �Է�" hname="�߱�����" pattern="[0-9]*">
                                                        <img alt="�޷�" title="�޷�"> 
                                                    </div>
                                                    <div>
                                                        <span>
                                                            <b>�߱ޱ��</b>
                                                        </span> 
                                                        <select class="sbox" title="��������" id="ISUE_IN_CD1" name="ISUE_IN_CD1" hname="�߱�����">
                                                            <option value="">���� ����</option>
                                                            <option value="11">����Ư����</option>
                                                            <option value="12">��õ������</option>
                                                            <option value="13">�λ걤����</option>
                                                            <option value="14">�뱸������</option>
                                                            <option value="15">��걤����</option>
                                                            <option value="16">����������</option>
                                                            <option value="17">���ֱ�����</option>
                                                            <option value="18">��⵵</option>
                                                            <option value="19">������</option>
                                                            <option value="20">��û�ϵ�</option>
                                                            <option value="21">��û����</option>
                                                            <option value="22">���ϵ�</option>
                                                            <option value="23">��󳲵�</option>
                                                            <option value="24">����ϵ�</option>
                                                            <option value="25">���󳲵�</option>
                                                            <option value="26">����Ư����ġ��</option>
                                                            <option value="27">����Ư����ġ��</option>
                                                        </select>
                                                        <select class="sbox" title="�������" id="ISUE_IN_DTL1" name="ISUE_IN_DTL1" hname="�߱ޱ��">
                                                            <option>��� ����</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <!-- //�ֹε���� -->
            
                                                <!-- ���������� -->
                                                <div class="inputs-drv-license">
                                                        <div>
                                                        <span>
                                                            <b>�����ȣ</b>
                                                        </span>
                
                                                        <select class="select" id="DRV_AREA" name="DRV_AREA" title="���� ������ ���� ����" hname="���� ������ �߱� ����">
                                                            <option value="">�����ϼ���</option>
                                                            <option value="����">����</option>
                                                            <option value="11">11</option>
                                                            <option value="�λ�">�λ�</option>
                                                            <option value="12">12</option>
                                                            <option value="���">���</option>
                                                            <option value="13">13</option>
                                                            <option value="����">����</option>
                                                            <option value="14">14</option>
                                                            <option value="���">���</option>
                                                            <option value="15">15</option>
                                                            <option value="�泲">�泲</option>
                                                            <option value="16">16</option>
                                                            <option value="����">����</option>
                                                            <option value="17">17</option>
                                                            <option value="����">����</option>
                                                            <option value="18">18</option>
                                                            <option value="���">���</option>
                                                            <option value="19">19</option>
                                                            <option value="�泲">�泲</option>
                                                            <option value="20">20</option>
                                                            <option value="����">����</option>
                                                            <option value="21">21</option>
                                                            <option value="��õ">��õ</option>
                                                            <option value="23">23</option>
                                                            <option value="�뱸">�뱸</option>
                                                            <option value="22">22</option>
                                                            <option value="����">����</option>
                                                            <option value="����">����</option>
                                                            <option value="25">25</option>
                                                            <option value="���">���</option>
                                                            <option value="26">26</option>
                                                            <option value="28">28</option>
                                                        </select>
                                                            
                                                        <input type="text" name="DRV_NO1" id="DRV_NO1" maxlength="2" class="i-text number tl" title="�������� ù��° �ڸ� ��ȣ �Է�" hname="���������� �Ϸù�ȣ ù��° �ڸ�" style="width: 50px; text-align: right;" npkencrypt="off" pattern="[0-9]*"> 
                                                        <input type="text" name="DRV_NO2" id="DRV_NO2" maxlength="6" class="i-text number tl" title="�������� �ι�° �ڸ� ��ȣ �Է�" hname="���������� �Ϸù�ȣ �ι�° �ڸ�" style="width: 100px; text-align: right;" npkencrypt="off" pattern="[0-9]*"> 
                                                        <input type="text" name="DRV_NO3" id="DRV_NO3" maxlength="2" class="i-text number tl" title="�������� ����° �ڸ� ��ȣ �Է�" hname="���������� �Ϸù�ȣ ����° �ڸ�" style="width: 50px; text-align: right;" npkencrypt="off" pattern="[0-9]*">
                                                        
                                                    </div>		 
                                                    <!--
                                                    <div>
                                                    <span>
                                                        <b>�Ϸù�ȣ</b>
                                                    </span> 
                                                    <input type="password" name="DRV_SEQ"  id="DRV_SEQ" maxlength="6" class="i-text" title="���������� �Ϸù�ȣ �Է�"/>
                                                    
                                                       
                                                    </div> -->
                                                    <!-- 
                                                    <p>�߱�����

                                                    </span> 
                                                        <input type="i-text number" name="DRV_ISUE_YMD"  id="DRV_ISUE_YMD" maxlength="8" class="i-text" title="����������  �߱�����" />
                                                    </p>
                                                     -->
                                                
                                                </div>
                                                <!-- //���������� -->
                                            </td>
                                        </tr>							
                                        <!-- �ܱ����� ��� ���⿵�� -->
                                        <tr class="foreigner_input" style="display:none;">
                                            <th class="vt">�ź����纻</th>
                                            <td style="border-right: none;">
                                                <span class="input_file" id="cont_send_fileName_text">
                                                    <input type="file" id="cont_send_fileName" name="cont_send_fileName" onchange="">
                                                    <em id="cont_send_fileName_em">
                                                    </em>
                                                </span>
                                                <a href="" class="btn02 middle border ml5" name="main_file_upload" onclick="">����ã��</a>
                                                <a href="" class="btn02 middle border ml5" name="main_file_upload" onclick="">���ϵ��</a>
                                                <p class="fs12 mt5">�ź��� ���� �Ǵ� ��ĵ�Ͽ� ���(3MB ����, tif / jpg / gif / bmp ��)</p>
                                            </td>
                                        </tr>
                                        <tr class="foreigner_input">
                                            <th class="vt">����</th>
                                            <td class="nation_search">
                                                <div class="rdo_type01 custom-label" id="nf-nations-favoirte-table">
            
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="�߱� ����" value="003">
                                                    <span class="bg_white">�߱�</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="��Ʈ�� ����" value="009">
                                                    <span class="bg_white">��Ʈ��</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="�̱� ����" value="001">
                                                    <span class="bg_white">�̱�</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="�ʸ��� ����" value="018">
                                                    <span class="bg_white">�ʸ���</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="�ε��׽þ� ����" value="180">
                                                    <span class="bg_white">�ε��׽þ�</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="�Ϻ� ����" value="002">
                                                    <span class="bg_white">�Ϻ�</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="�±� ����" value="213">
                                                    <span class="bg_white">�±�</span>
                                                </label>
                                                <label class="w65">
                                                    <input type="radio" class="d-radio" name="nationItem" title="���� ����" value="084">
                                                    <span class="bg_white">����</span>
                                                </label>
                                            </div>

                                                <p class="mt5 mb5">
                                                    <input type="text" class="input" title="�������� �Է��ϼ���" placeholder="������ ã��" id="nf-keyword">
                                                    <a href="" class="btn02 middle border ml5" onclick="">������ã��</a>
                                                </p>
            
                                                <!-- ������ �˻���� -->
                                                <span class="rdo_type01" id="nf-nations-table">
                                                </span>
                                                <!-- //������ �˻���� -->
            
                                            </td>
                                        </tr>
                                        
                                        <tr class="foreigner_input" style="display:none;">
                                            <th>��������</th>
                                            <td style="border-right: none;">
                                                <input type="text" class="input" name="CUST_ENG_NM1" id="CUST_ENG_NM1" title="First Name �Է�" maxlength="15" placeholder="First Name">
                                                <input type="text" class="input" name="CUST_ENG_NM2" id="CUST_ENG_NM2" title="Family Name �Է�" maxlength="15" placeholder="Family Name">
                                                <input type="text" class="input" name="CUST_ENG_NM3" id="CUST_ENG_NM3" title="Maiden Name �Է�" maxlength="15" placeholder="Maiden Name">
                                            </td>
                                        </tr>
                                        <tr class="foreigner_input">
                                            <th>���ڵ��</th>
                                            <td>
                                                <select class="sbox" title="���ڵ�� ����" name="VISA_KND">
                                                    <option value="">�����ϼ���</option>
                                                    <option value="A-1">�ܱ�</option>
                                                    <option value="A-2">����</option>
                                                    <option value="A-3">����</option>
                                                    <option value="B-1">��������</option>
                                                    <option value="B-2">�������</option>
                                                    <option value="C-1">�Ͻ�����</option>
                                                    <option value="C-2">�ܱ���</option>
                                                    <option value="C-3">�ܱ�����</option>
                                                    <option value="C-4">�ܱ����</option>
                                                    <option value="D-1">��ȭ����</option>
                                                    <option value="D-10">����</option>
                                                    <option value="D-2">����</option>
                                                    <option value="D-3">�������</option>
                                                    <option value="D-4">�Ϲݿ���</option>
                                                    <option value="D-5">����</option>
                                                    <option value="D-6">����</option>
                                                    <option value="D-7">����</option>
                                                    <option value="D-8">�������</option>
                                                    <option value="D-9">�����濵</option>
                                                    <option value="E-1">����</option>
                                                    <option value="E-10">�������</option>
                                                    <option value="E-2">ȸȭ����</option>
                                                    <option value="E-3">����</option>
                                                    <option value="E-4">�������</option>
                                                    <option value="E-5">��������</option>
                                                    <option value="E-6">��������</option>
                                                    <option value="E-7">Ư��Ȱ��</option>
                                                    <option value="E-9">���������</option>
                                                    <option value="F-1">�湮����</option>
                                                    <option value="F-2">����</option>
                                                    <option value="F-3">����</option>
                                                    <option value="F-4">��ܵ���</option>
                                                    <option value="F-5">����</option>
                                                    <option value="F-6">��ȥ�̹�</option>
                                                    <option value="G-1">��Ÿ</option>
                                                    <option value="H-1">�������</option>
                                                    <option value="H-2">�湮���</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <!-- //�ܱ����� ��� ���⿵�� -->
            
                                        <tr>
                                            <th class="vt">�Ǽ���Ȯ��</th>
                                            <td>
                                                ���Բ��� �� �����ŷ��� �� �������̽Ű���?
                                                <span class="rdo_type01 custom-label ml10 realOwn-Yn">
                                                    <label>
                                                        <input type="radio" class="d-radio" name="REAL_OWN_YN" value="Y" title="�� ����" hname="�Ǽ�������" required="required">
                                                        <span class="bg_white">��</span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" class="d-radio" name="REAL_OWN_YN" value="N" title="�ƴϿ� ����" hname="�Ǽ�������" required="required">
                                                        <span class="bg_white">�ƴϿ�</span>
                                                    </label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr class="low_item first">
                                            <th>�̸�</th>
                                            <td>
                                                <input type="text" class="input" title="�̸� �Է�" id="REAL_OWN_NM" name="REAL_OWN_NM" maxlength="50">
                                            </td>
                                        </tr>
                                        <tr class="low_item">
                                            <th>�ֹι�ȣ</th>
                                            <td>
                                                <input type="text" class="input number tl" hname="�Ǽ������� �ֹι�ȣ �� 6�ڸ�" title="�Ǽ������� �ֹι�ȣ �� 6�ڸ� �Է�" name="REAL_OWN_SSN1" maxlength="6"pattern="[0-9]*"> -
                                                <input type="password" id="REAL_OWN_SSN2" name="REAL_OWN_SSN2"class="input nppfs-npk nppfs-npv" maxlength="7" hname="�Ǽ������� �ֹι�ȣ���ڸ�" title="�Ǽ������� �ֹι�ȣ ���ڸ� �Է�">
                                                <span class="rdo_type01 ">
                                                    <label class="drvtype">
                                                        <input type="checkbox" id="ess_text_real_own_ssn2" name="ess_text_real_own_ssn2" value="Y" class="d-radio">
                                                        ���콺 �Է�
                                                    </label>
                                                </span>
                                            </td>
                                        </tr>

                                        <tr class="low_item last">
                                            <th>����</th>
                                            <td style="border-right: none;">
                                                <p class="mt5 mb5">
                                                    <input type="text" class="input" title="�������� �Է��ϼ���" placeholder="������ ã��" id="nf-keyword-real">
                                                    <a class="btn02 middle border ml5">������ã��</a>
                                                </p>							
            
                                                <!-- ������ �˻���� -->
                                                <span class="rdo_type01 custom-label auto_label line_label" id="nf-nations-table-real">
                                                </span>
                                             </td>
                                        </tr>
            
            
                                        <tr>
                                            <th class="vt">�̸���</th>
                                            <td style="border-right: none;">
                                                <input type="text" class="input" id="MAIL_ID" name="MAIL_ID" hname="�̸��Ͼ��̵�" title="�̸��� ���̵� �Է�" maxlength="30" > @ 
                                                <input type="text" class="input" id="MAIL_POTAL_NAME" name="MAIL_POTAL_NAME" hname="�̸�����Ż�ּ�" title="������ �����Է�" maxlength="30">
                                                <select class="sbox" title="�̸��� ����"  name="SetMailGubun">
                                                    <option value="">�����Է�</option>
                                                    <option value="naver.com">���̹�</option>
                                                    <option value="daum.net">����</option>
                                                    <option value="hanmail.net">�Ѹ���</option>
                                                    <option value="nate.com">����Ʈ</option>
                                                    <option value="gmail.com">������</option>
                                                    <option value="hotmail.com">�ָ���</option>
            
                                                </select>
                                                <p class="fs12 mt5">�Է��Ͻ� �̸��Ϸ� û�� ���� ������ �����帮�� ��~�ѹ� �� Ȯ�����ּ���.</p>
                                                <input type="hidden" id="E_CMMU_VAL" name="E_CMMU_VAL" value="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>�޴�����ȣ</th>
                                            <td style="border-right: none;">
                                                <select class="sbox" title="�޴�����ȣ ���ڸ� ����"id="T_CMMU_VAL_DDD" name="T_CMMU_VAL_DDD">
                                                    <option value="010">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="019">019</option>
                                                </select>
                                                -
                                                <input type="text" class="input number tl" title="�޴�����ȣ ������ �ڸ� �Է�" placeholder="-���� �Է�" id="T_CMMU_VAL" name="T_CMMU_VAL" required="required" maxlength="8" hname="�޴�����ȣ" pattern="[0-9]*">
                                                <input type="hidden" name="T_CMMU_VAL_GUK" id="T_CMMU_VAL_GUK">
                                                <input type="hidden" name="T_CMMU_VAL_NO" id="T_CMMU_VAL_NO">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">����������</th>
                                            <td style="border-right: none;">
                                                <span class="rdo_type01 custom-label">
                                                    <label class="address1">
                                                        <input type="radio" class="d-radio" name="P_PST_RCVA" value="10" title="�����ּ� �Է� �˾�â�� �ٷ� �����ϴ�.">
                                                        <span class="vt">����</span>
                                                    </label>
                                                    <label class="address2">
                                                        <input type="radio" class="d-radio" name="P_PST_RCVA" value="20" title="�����ּ� �Է� �˾�â�� �ٷ� �����ϴ�.">
                                                        <span class="vt">����</span>
                                                    </label>
                                                    <a class="btn02 middle border ml5" name="postNoFind" title="�����ȣ ã�� ȭ���� �˾� �˴ϴ�.">�ּ�ã��</a>
                                                </span>
                                                <input type="text" class="input mt5 nppfs-npk" id="POST_ADDR_TEXT" name="POST_ADDR_TEXT" title="���������� �ּ� �Է�" >
                                                <input type="hidden" class="input fs12 mt5 w100" id="POST_ADDR" name="POST_ADDR" title="���������� �ּ� �Է�">
                                                <input type="hidden" id="POST_NO" name="POST_NO" class="input" hname="�����ȣ" title="�����ȣ �Է�" >
                                                <input type="hidden" id="ADDR_DTL" name="ADDR_DTL" class="input" hname="���ּ�" title="���ּ�" >
                                                <input type="hidden" id="ETC_ADDR" name="ETC_ADDR" class="input" hname="���ּ�2" title="���ּ�2">
                                                <input type="hidden" id="BLDG_MGNT_NO" name="BLDG_MGNT_NO">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">���� ���ɹ��
                                                							
                                            </th>
                                            <td style="border-right: none;">
                                                <span class="rdo_type01 custom-label">
                                                    <label class="mail01">
                                                        <input type="radio" class="d-radio" name="PLCY_CVY_MTH" value="2" required="required" hname="���Ǽ��ɹ��" title="���� ����">
                                                        <span class="vt">����</span>
                                                    </label>
                                                    <label class="mobile01">
                                                        <input type="radio" class="d-radio" name="PLCY_CVY_MTH" value="A" required="required" hname="���Ǽ��ɹ��" title="����� ����">
                                                        <span class="vt">�����</span>
                                                    </label>
                                                </span>		
                                                <p class="fs12 mt5">����� ���ý� �����Ͻ� �ٿ�ε� �̷��� Ȯ���ϸ�, �ٿ�ε� ������� �������� �߼۵˴ϴ�.</p>							
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">�ȳ��� ���ɹ��
                                                
                                            </th>
                                            <td style="border-right: none;">
                                                <span class="rdo_type01 custom-label">
                                                    <label class="mail01">
                                                        <input type="radio" class="d-radio" name="DOC_CVY_MTH" value="1" hname="�ȳ��� ���ɹ��" title="���� ����">
                                                        <span class="vt">����</span>
                                                    </label>
                                                    <label><input type="radio" class="d-radio" name="DOC_CVY_MTH" value="2" hname="�ȳ��� ���ɹ��" title="�̸��� ����">
                                                        <span class="bg_white">
                                                            <em class="fs16">@</em> 
                                                            �̸���
                                                        </span>
                                                        </label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">û�༭ �� ��� ����� ���� ���� ��û</th>
                                            <td style="border-right: none;">
                                                <span class="rdo_type01 custom-label">
                                                    <label>
                                                        <input type="radio" class="d-radio" name="MOB_CVY_YN" value="Y" required="required" hname="��������޼���" title="��û">
                                                        <span class="bg_white">��û</span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" class="d-radio" name="MOB_CVY_YN" value="N" required="required" hname="��������޼���" title="�̽�û">
                                                        <span class="bg_white">�̽�û</span>
                                                    </label>
                                                </span>
                                                <p class="fs12 mt5">��û�� ����Ͽ��� �����Ͻ� �ٿ�ε� �̷��� Ȯ���մϴ�.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">����</th>
                                            <td>
                                                <span class="rdo_type01 custom-label jobbtn">
            
                
                
                                                    <label class="job01">
                                                        <input type="radio" class="d-radio" name="job_dummy"  ><span class="vt">�繫��</span>
                                                    </label>
                                                    <label class="job02">
                                                        <input type="radio" class="d-radio" name="job_dummy"><span class="vt">�ڿ���</span>
                                                    </label>
                                                    <label class="job03">
                                                        <input type="radio" class="d-radio" name="job_dummy" ><span class="vt">�ֺ�</span>
                                                    </label>
                                                    <label class="job04">
                                                        <input type="radio" class="d-radio" name="job_dummy"><span class="vt">��Ÿ</span>
                                                    </label>
                
                
                
            
                                                </span>
            
                    
                                            </td>
                                        </tr>
            
            


                                        <tr>
                                                <th>
                                                    ���������Һ��� ����
                                                    								
                                                </th>
                                                <td>
                                                        <span class="rdo_type01 custom-label">
                                                            <label class="on"><input type="radio" class="d-radio" id="FINANCE" name="FINANCE" value="02" checked="checked" >
                                                                <span class="bg_white" id="finance2">�Ϲݱ����Һ���</span></label>
                                                            <label><input type="radio" class="d-radio" id="FINANCE" name="FINANCE" value="01">
                                                                <span class="bg_white" id="finance1">���������Һ���</span>
                                                            </label>
                                                        </span>	
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                            
                                                    									
                                                </th>
                                                <td style="border-right: none;">
                                                    <span class="rdo_type01 custom-label">
                                                        <label>
                                                            <input type="radio" class="d-radio" id="CHANGE_YN" name="CHANGE_YN" value="Y" disabled="disabled">
                                                            <span class="bg_gray" id="changeYn1">��</span>
                                                        </label>
                                                        <label class="on"><input type="radio" class="d-radio" id="CHANGE_YN" name="CHANGE_YN" value="N" checked="checked">
                                                            <span class="bg_gray" id="changeYn2">�ƴϿ�</span>
                                                        </label>
                                                    </span>					
                                                </td>
                                            </tr>
            
                                        <tr class="ssDrvtr">
                                            <th class="vt">��������</th>
                                            <td>
                                                <span class="rdo_type01 custom-label radio-driverYn">
                                                    <label class="">
                                                        <input type="radio" class="d-radio" name="DRY_YN" value="N" hname="��������" title="�������� ����">
                                                        <span class="bg_white">��������</span>
                                                    </label>
                                                    <label class="">
                                                        <input type="radio" class="d-radio" name="DRY_YN" value="Y" hname="��������" title="������ ����">
                                                        <span class="bg_white">������</span>
                                                    </label>
                                                    
                                                </span>
                                                <span class="fs12 vm">�����ϴ� ������ ��� ������ �ּ���.</span>
            
                                                <div class="box_car" name="radio_driverY">
                                                    <dl>
                                                        <dt><b>�¿���</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype">
                                                                    <input type="checkbox" class="d-radio" name="DRV_CARS" value="2014" title="�¿���(�ڰ���) ����">�ڰ���</label>
                                                                    <br>
                                                                <label class="drvtype">
                                                                    <input type="checkbox" class="d-radio" name="DRV_CARS" value="1315" title="�¿���(������) ����">������</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt><b>������</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1924" title="������(�ڰ���) ����">�ڰ���</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1825" title="������(������) ����">������</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt><b>ȭ����</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1744" title="ȭ����(�ڰ���) ����">�ڰ���</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1645" title="ȭ����(������) ����">������</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt class="line2"><b>�������</b><br><span class="fs12">(500cc�̸�����)</span></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1264" title="�������(50cc �̸� ����)(�ڰ���) ����">�ڰ���</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1165" title="�������(50cc �̸� ����)(������) ����">������</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
            
                                                    <dl>
                                                        <dt><b>��Ÿ</b></dt>
                                                        <dd>
                                                            <span class="rdo_type01">
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1584" title="����� ����">�����</label><br>
                                                                <label class="drvtype"><input type="checkbox" class="d-radio" name="DRV_CARS" value="1494" title="�Ǽ����� ����">�Ǽ�����</label>
                                                            </span>
                                                        </dd>
                                                    </dl>
                                                    
                                                    
                                                </div>

                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="vt">�̷��ڵ��� �Ǵ� <br>��������ġ ������ <br>��뿩��</th>
                                            <td style="border-right: none;">
                                                <span class="rdo_type01 custom-label">
                                                    <label>
                                                        <input type="radio" class="d-radio" id="MOTOCYLE_YN" name="MOTOCYLE_YN" value="Y" required="required" hname="�̷��ڵ��� �Ǵ� ��������ġ ������ ��뿩��" title="��">
                                                        <span class="bg_white">��</span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" class="d-radio" id="MOTOCYLE_YN" name="MOTOCYLE_YN" value="N" required="required" hname="�̷��ڵ��� �Ǵ� ��������ġ ������ ��뿩��" title="�ƴϿ�">
                                                        <span class="bg_white">�ƴϿ�</span>
                                                    </label>
                                                </span>
                                                <p class="fs12 mt5"><b>�̷��ڵ�����?</b> �ڵ����������� �̷����� �з��Ǵ� ��� �Ǵ� ����� �ڵ����� ����</p>
                                                <p class="fs12 mt5"><b>��������ġ �����Ŷ�?</b> ����ű����, �����̷�������, �������� ���¸����� ������ �� �ִ� ������ �� ������ �̵���ġ�� ����(�ٸ�, ������ü��, �Ƿ�� ������ �� ���ຸ���� �������� ����.)</p>
                                                <p class="fs12 mt5">* ��������� ����, ���� �Ǵ� ��ȣȸ Ȱ���� ����ٿ뵵 ������ ����ϴ� ��쿡 ����.</p>
                                            </td>
                                        </tr>
            
            
                                    </tbody>
                                </table>
                            </dd>
                        </dl>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>