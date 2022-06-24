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

<script src="jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

        <!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>028 : ��������(jQuery) Radio(���� ��ư) ���� ����</title>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script> -->

		<script type="text/javascript">
			$(document).ready(function() {
				$('button').click(function() {
					$('#Y10').text('');
				});



				/* ==== # Checkbox Change Event ==== */
				/* Checkbox change event */
				$('input[name="rdColors"]').change(function() {
					// ��� radio�� ��ȸ�Ѵ�.
					$('input[name="rdColors"]').each(function() {
						var value = $(this).val();				// value
						var checked = $(this).prop('checked');	// jQuery 1.6 �̻� (jQuery 1.6 �̸����� prop()�� ����, checked, selected, disabled�� �� prop()�� �����)
						// var checked = $(this).attr('checked');	// jQuery 1.6 �̸� (jQuery 1.6 �̻󿡼��� checked, undefined�� return��)
						// var checked = $(this).is('checked');
						var $label = $(this).next();

						if(checked)
							$label.css('background-color', value)
						else
							$label.css('background-color', 'white');
					});
				});


				/* ==== # Checked/Unchecked ã�� ==== */
				/* Checked ã�� */
				$('#btnGetChecked').click(function() {
					var $radioChecked = $('input[name="rdColors"]:checked');
					var id = $radioChecked.attr('id');
					var value = $radioChecked.val();
					$('#output').text("Checked ã�� ID/Value : " + id + "/" + value);
				});

				/* Unchecked ã�� */
				$('#btnGetUnchecked').click(function() {
					var str = "";
					$('input[name="rdColors"]:not(:checked)').each(function() {
						var id = $(this).attr('id');
						var value = $(this).val();
						str += id + "/" + value + ", ";
					});
					$('#output').text("Unchecked ã�� ID/Value : " + str);
				});


				/* ==== # ���� �ٲٱ� (Radio 1��) ==== */
				/* PINK (Radio 1��) Checked ���� */
				$('#btnPinkChangeChecked').click(function() {
					$('#rdPink').prop('checked', true);
					$('#rdPink').trigger('change');
				});

				/* PINK (Radio 1��) Checked ���� */
				$('#btnPinkChangeUnchecked').click(function() {
					$('#rdPink').prop('checked', false);
					$('#rdPink').trigger('change');
				});

				/* PINK (Radio 1��) ���� ���� */
				$('#btnPinkChangeToggle').click(function() {
					$('#rdPink').prop('checked', !$('#rdPink').prop('checked'));
					$('#rdPink').trigger('change');
				});


				/* ==== # ���� �ٲٱ� (��ü) ==== */
				/* ��ü Checked ���� */
				$('#btnAllUnchecked').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('checked', false);
						$(this).trigger('change');
					});
				});


				/* ==== # Value �˾Ƴ��� ==== */
				/* PINK (Checkbox 1��) Value */
				$('#btnPinkValue').click(function() {
					var id = $('#rdPink').attr('id');
					var value = $('#rdPink').val();
					$('#output').text("PINK (Checkbox 1��) Value : " + id + "/" + value);
				});

				/* Checked Values */
				$('#btnCheckedValues').click(function() {
					$('#btnGetChecked').click();
				});

				/* ��ü Unchecked Values */
				$('#btnUncheckedValues').click(function() {
					var str = "";
					$('input[name="rdColors"]:not(:checked)').each(function() {
						var id = $(this).attr('id');
						var value = $(this).val();
						str += id + "/" + value + ", ";
					});
					$('#output').text("��ü Unchecked Values : " + str);
				});


				/* ==== # ���� Ȯ�� ==== */
				/* ��ü ���� */
				$('#btnTotalNumber').click(function() {
					/* name���� ã�� */
					var num = $('input[name="rdColors"]').length;
					$('#output').text("��ü ���� : " + num);
				});

				/* ��ü Checked ���� */
				$('#btnCheckedNumber').click(function() {
					var num = $('input[name="rdColors"]:checked').length;
					$('#output').text("��ü Checked ���� : " + num);
				});

				/* ��ü Unchecked ���� */
				$('#btnUncheckedNumber').click(function() {
					var num = $('input[name="rdColors"]:not(:checked)').length;
					$('#output').text("��ü Unchecked ���� : " + num);
				});


				/* ==== # Disabled Ȯ�� ==== */
				/* PINK (Radio 1��) Disabled ���� Ȯ�� */
				$('#btnPinkDisabled').click(function() {
					/* ID�� ã�� */
					var b = $('#rdPink').prop('disabled');		// jQuery 1.6 �̻� (jQuery 1.6 �̸����� prop()�� ����, checked, selected, disabled�� �� prop()�� �����)
					// var b = $('#rdPink').attr('disabled');	// jQuery 1.6 �̸� (jQuery 1.6 �̻󿡼��� checked, undefined�� return��)
					// var b = $('#rdPink').is('disabled');

					/* CSS attribute Selector�� ã�� */
					// var b = $('input[id="rdPink"').prop('disabled');
					// var b = $('input[id="rdPink"').attr('disabled');
					// var b = $('input[id="rdPink"').is('disabled');

					$('#output').text("PINK (Radio 1��) Disabled ���� Ȯ�� : " + b);
				});


				/* ==== # Disabled ����/���� ==== */
				/* PINK (Checkbox 1��) Disabled ���� */
				$('#btnPinkChangeDisabled').click(function() {
					$('#rdPink').prop('disabled', true);
				});

				/* PINK (Checkbox 1��) Disabled ���� */
				$('#btnPinkChangeUndisabled').click(function() {
					$('#rdPink').prop('disabled', false);
				});

				/* ��ü Disabled ���� */
				$('#btnAllChangeDisabled').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('disabled', true);
						$(this).trigger('change');
					});
				});

				/* ��ü Disabled ���� */
				$('#btnAllChangeUndisabled').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('disabled', false);
						$(this).trigger('change');
					});
				});

				/* ��ü Disabled ���� */
				$('#btnAllChangeToggle').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('disabled', !$(this).prop('disabled'));
						$(this).trigger('change');
					});
				});



				/* initial : �ʱ� HTML�� ������ ���¸� Ȯ���Ѵ�. */
				$('input[name="rdColors"]:checked').trigger('change');	// change event�� �߻���Ų��.
			});
		</script>
		<style type="text/css">
			div{margin-bottom:20px;}
			span{display:block;font-weight:bold;}
			button{margin:2px;}
			p[id='output']{min-height:24px;border:1px solid gray;border-radius:6px;padding:10px;font-weight:bold;}
			input{font-size:18px;}
			input[type='radio']:disabled + label{color:gray;}
		</style>
	</head>
	<body>
		<div>
			<fieldset>
				<legend>Colors</legend>
				<input type="radio" id="rdPink" name="rdColors" value="#ffc0cb" checked><label for="rdPink">PINK</label>
				<input type="radio" id="rdRed" name="rdColors" value="#ff0000" disabled><label for="rdRed">RED</label>
				<input type="radio" id="rdOrange" name="rdColors" value="#ffa500"><label for="rdOrange">ORANGE</label>
				<input type="radio" id="rdYellow" name="rdColors" value="#ffff00"><label for="rdYellow">YELLOW</label>
				<input type="radio" id="rdGreen" name="rdColors" value="#008000"><label for="rdGreen">GREEN</label>
				<input type="radio" id="rdCyan" name="rdColors" value="#00ffff"><label for="rdCyan">CYAN</label>
			</fieldset>
		</div>

		<p id="output">��ư�� ���� ������.</p>

		<div>
			<span># Radio Change Event : </span>
			<span style="color:blue;">Source Code�� Ȯ���ϼ���. (�˻� : .change)</span>
		</div>

		<div>
			<span># Checked/Unchecked ã�� : </span>
			<button type="button" id="btnGetChecked">Checked ã��</button>
			<button type="button" id="btnGetUnchecked">Unchecked ã��</button>
		</div>

		<div>
			<span># ���� �ٲٱ� (Radio 1��) : </span>
			<button type="button" id="btnPinkChangeChecked">PINK (Radio 1��) Checked ����</button>
			<button type="button" id="btnPinkChangeUnchecked">PINK (Radio 1��) Checked ����</button>
			<button type="button" id="btnPinkChangeToggle">PINK (Radio 1��) ���� ����</button>
		</div>

		<div>
			<span># ���� �ٲٱ� (��ü) : </span>
			<button type="button" id="btnAllUnchecked">��ü Checked ����</button>
		</div>

		<div>
			<span># Value �˾Ƴ��� : </span>
			<button type="button" id="btnPinkValue">PINK (Radio 1��) Value</button>
			<button type="button" id="btnCheckedValues">��ü Checked Values</button>
			<button type="button" id="btnUncheckedValues">��ü Unchecked Values</button>
		</div>

		<div>
			<span># ���� Ȯ�� : </span>
			<button type="button" id="btnTotalNumber">��ü ����</button>
			<button type="button" id="btnCheckedNumber">��ü Checked ����</button>
			<button type="button" id="btnUncheckedNumber">��ü Unchecked ����</button>
		</div>

		<div>
			<span># Disabled Ȯ�� : </span>
			<button type="button" id="btnPinkDisabled">PINK (Radio 1��) Disabled ���� Ȯ��</button>
		</div>

		<div>
			<span># Disabled ����/���� : </span>
			<button type="button" id="btnPinkChangeDisabled">PINK (Radio 1��) Disabled ����</button>
			<button type="button" id="btnPinkChangeUndisabled">PINK (Radio 1��) Disabled ����</button>
			<button type="button" id="btnAllChangeDisabled">��ü Disabled ����</button>
			<button type="button" id="btnAllChangeUndisabled">��ü Disabled ����</button>
			<button type="button" id="btnAllChangeToggle">��ü Disabled ����</button>
		</div>



		<div style='border-width:1px 0;border-style:solid;margin:30px 0;text-align:center;'>
			<p><a href='https://loomio.kr' target='_blank' style='text-decoration:none;'>��̿� : Loomio - https://loomio.kr</a></p>
			<p><a href='https://loomio.kr/28' target='_blank' style='text-decoration:none;'>��̿� : ��������(jQuery) Radio(���� ��ư) ���� ����</a></p>
		</div>
	</body>
</html>

 
</body>
</html>