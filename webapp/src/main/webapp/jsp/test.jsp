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
		<title>028 : 제이쿼리(jQuery) Radio(라디오 버튼) 사용법 정리</title>

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
					// 모든 radio를 순회한다.
					$('input[name="rdColors"]').each(function() {
						var value = $(this).val();				// value
						var checked = $(this).prop('checked');	// jQuery 1.6 이상 (jQuery 1.6 미만에는 prop()가 없음, checked, selected, disabled는 꼭 prop()를 써야함)
						// var checked = $(this).attr('checked');	// jQuery 1.6 미만 (jQuery 1.6 이상에서는 checked, undefined로 return됨)
						// var checked = $(this).is('checked');
						var $label = $(this).next();

						if(checked)
							$label.css('background-color', value)
						else
							$label.css('background-color', 'white');
					});
				});


				/* ==== # Checked/Unchecked 찾기 ==== */
				/* Checked 찾기 */
				$('#btnGetChecked').click(function() {
					var $radioChecked = $('input[name="rdColors"]:checked');
					var id = $radioChecked.attr('id');
					var value = $radioChecked.val();
					$('#output').text("Checked 찾기 ID/Value : " + id + "/" + value);
				});

				/* Unchecked 찾기 */
				$('#btnGetUnchecked').click(function() {
					var str = "";
					$('input[name="rdColors"]:not(:checked)').each(function() {
						var id = $(this).attr('id');
						var value = $(this).val();
						str += id + "/" + value + ", ";
					});
					$('#output').text("Unchecked 찾기 ID/Value : " + str);
				});


				/* ==== # 상태 바꾸기 (Radio 1개) ==== */
				/* PINK (Radio 1개) Checked 설정 */
				$('#btnPinkChangeChecked').click(function() {
					$('#rdPink').prop('checked', true);
					$('#rdPink').trigger('change');
				});

				/* PINK (Radio 1개) Checked 해제 */
				$('#btnPinkChangeUnchecked').click(function() {
					$('#rdPink').prop('checked', false);
					$('#rdPink').trigger('change');
				});

				/* PINK (Radio 1개) 상태 반전 */
				$('#btnPinkChangeToggle').click(function() {
					$('#rdPink').prop('checked', !$('#rdPink').prop('checked'));
					$('#rdPink').trigger('change');
				});


				/* ==== # 상태 바꾸기 (전체) ==== */
				/* 전체 Checked 해제 */
				$('#btnAllUnchecked').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('checked', false);
						$(this).trigger('change');
					});
				});


				/* ==== # Value 알아내기 ==== */
				/* PINK (Checkbox 1개) Value */
				$('#btnPinkValue').click(function() {
					var id = $('#rdPink').attr('id');
					var value = $('#rdPink').val();
					$('#output').text("PINK (Checkbox 1개) Value : " + id + "/" + value);
				});

				/* Checked Values */
				$('#btnCheckedValues').click(function() {
					$('#btnGetChecked').click();
				});

				/* 전체 Unchecked Values */
				$('#btnUncheckedValues').click(function() {
					var str = "";
					$('input[name="rdColors"]:not(:checked)').each(function() {
						var id = $(this).attr('id');
						var value = $(this).val();
						str += id + "/" + value + ", ";
					});
					$('#output').text("전체 Unchecked Values : " + str);
				});


				/* ==== # 개수 확인 ==== */
				/* 전체 개수 */
				$('#btnTotalNumber').click(function() {
					/* name으로 찾기 */
					var num = $('input[name="rdColors"]').length;
					$('#output').text("전체 개수 : " + num);
				});

				/* 전체 Checked 개수 */
				$('#btnCheckedNumber').click(function() {
					var num = $('input[name="rdColors"]:checked').length;
					$('#output').text("전체 Checked 개수 : " + num);
				});

				/* 전체 Unchecked 개수 */
				$('#btnUncheckedNumber').click(function() {
					var num = $('input[name="rdColors"]:not(:checked)').length;
					$('#output').text("전체 Unchecked 개수 : " + num);
				});


				/* ==== # Disabled 확인 ==== */
				/* PINK (Radio 1개) Disabled 여부 확인 */
				$('#btnPinkDisabled').click(function() {
					/* ID로 찾기 */
					var b = $('#rdPink').prop('disabled');		// jQuery 1.6 이상 (jQuery 1.6 미만에는 prop()가 없음, checked, selected, disabled는 꼭 prop()를 써야함)
					// var b = $('#rdPink').attr('disabled');	// jQuery 1.6 미만 (jQuery 1.6 이상에서는 checked, undefined로 return됨)
					// var b = $('#rdPink').is('disabled');

					/* CSS attribute Selector로 찾기 */
					// var b = $('input[id="rdPink"').prop('disabled');
					// var b = $('input[id="rdPink"').attr('disabled');
					// var b = $('input[id="rdPink"').is('disabled');

					$('#output').text("PINK (Radio 1개) Disabled 여부 확인 : " + b);
				});


				/* ==== # Disabled 설정/해제 ==== */
				/* PINK (Checkbox 1개) Disabled 설정 */
				$('#btnPinkChangeDisabled').click(function() {
					$('#rdPink').prop('disabled', true);
				});

				/* PINK (Checkbox 1개) Disabled 해제 */
				$('#btnPinkChangeUndisabled').click(function() {
					$('#rdPink').prop('disabled', false);
				});

				/* 전체 Disabled 설정 */
				$('#btnAllChangeDisabled').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('disabled', true);
						$(this).trigger('change');
					});
				});

				/* 전체 Disabled 해제 */
				$('#btnAllChangeUndisabled').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('disabled', false);
						$(this).trigger('change');
					});
				});

				/* 전체 Disabled 반전 */
				$('#btnAllChangeToggle').click(function() {
					$('input[name="rdColors"]').each(function() {
						$(this).prop('disabled', !$(this).prop('disabled'));
						$(this).trigger('change');
					});
				});



				/* initial : 초기 HTML에 설정된 상태를 확인한다. */
				$('input[name="rdColors"]:checked').trigger('change');	// change event를 발생시킨다.
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

		<p id="output">버튼을 눌러 보세요.</p>

		<div>
			<span># Radio Change Event : </span>
			<span style="color:blue;">Source Code를 확인하세요. (검색 : .change)</span>
		</div>

		<div>
			<span># Checked/Unchecked 찾기 : </span>
			<button type="button" id="btnGetChecked">Checked 찾기</button>
			<button type="button" id="btnGetUnchecked">Unchecked 찾기</button>
		</div>

		<div>
			<span># 상태 바꾸기 (Radio 1개) : </span>
			<button type="button" id="btnPinkChangeChecked">PINK (Radio 1개) Checked 설정</button>
			<button type="button" id="btnPinkChangeUnchecked">PINK (Radio 1개) Checked 해제</button>
			<button type="button" id="btnPinkChangeToggle">PINK (Radio 1개) 상태 반전</button>
		</div>

		<div>
			<span># 상태 바꾸기 (전체) : </span>
			<button type="button" id="btnAllUnchecked">전체 Checked 해제</button>
		</div>

		<div>
			<span># Value 알아내기 : </span>
			<button type="button" id="btnPinkValue">PINK (Radio 1개) Value</button>
			<button type="button" id="btnCheckedValues">전체 Checked Values</button>
			<button type="button" id="btnUncheckedValues">전체 Unchecked Values</button>
		</div>

		<div>
			<span># 개수 확인 : </span>
			<button type="button" id="btnTotalNumber">전체 개수</button>
			<button type="button" id="btnCheckedNumber">전체 Checked 개수</button>
			<button type="button" id="btnUncheckedNumber">전체 Unchecked 개수</button>
		</div>

		<div>
			<span># Disabled 확인 : </span>
			<button type="button" id="btnPinkDisabled">PINK (Radio 1개) Disabled 여부 확인</button>
		</div>

		<div>
			<span># Disabled 설정/해제 : </span>
			<button type="button" id="btnPinkChangeDisabled">PINK (Radio 1개) Disabled 설정</button>
			<button type="button" id="btnPinkChangeUndisabled">PINK (Radio 1개) Disabled 해제</button>
			<button type="button" id="btnAllChangeDisabled">전체 Disabled 설정</button>
			<button type="button" id="btnAllChangeUndisabled">전체 Disabled 해제</button>
			<button type="button" id="btnAllChangeToggle">전체 Disabled 반전</button>
		</div>



		<div style='border-width:1px 0;border-style:solid;margin:30px 0;text-align:center;'>
			<p><a href='https://loomio.kr' target='_blank' style='text-decoration:none;'>루미오 : Loomio - https://loomio.kr</a></p>
			<p><a href='https://loomio.kr/28' target='_blank' style='text-decoration:none;'>루미오 : 제이쿼리(jQuery) Radio(라디오 버튼) 사용법 정리</a></p>
		</div>
	</body>
</html>

 
</body>
</html>