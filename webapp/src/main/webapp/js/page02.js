function setDisplay(){
    if($('input:radio[id=10y]').is(':checked')){
        $('#open').show();
        $('#10y').prop("checked", true);
        $('#10year').show();
        $('#10year').prop("checked", true);
        $('#20year').hide();
        $('#60year').hide();
        $('#80year').hide();
	$('#Y10').show();
        $('#Y20').hide();
        $('#Y60').hide();
        $('#Y80').hide();
    }else if($('input:radio[id=20y]').is(':checked')){
        $('#10year').show();
        $('#20year').show();
        $('#20year').prop("checked", true);
        $('#60year').hide();
        $('#80year').hide();
        $('#Y20').show();
		$('#Y10').hide();
        $('#Y60').hide();
        $('#Y80').hide();
    }else if($('input:radio[id=60y]').is(':checked')){
        $('#10year').show();
        $('#20year').show();
        $('#60year').show();
        $('#60year').prop("checked", true);
        $('#80year').hide();
        $('#Y60').show();
        $('#Y10').hide();
        $('#Y20').hide();
        $('#Y80').hide();
    }else if($('input:radio[id=80y]').is(':checked')){
        $('#10year').show();
        $('#20year').show();
        $('#60year').show();
        $('#80year').show();
        $('#80year').prop("checked", true);
        $('#Y80').show();
        $('#Y10').hide();
        $('#Y20').hide();
        $('#Y60').hide();
    }else{
        $('#10year').hide();
        $('#20year').hide();
        $('#60year').hide();
        $('#80year').hide();
        $('#Y10').hide();
        $('#Y20').hide();
        $('#Y60').hide();
        $('#Y80').hide();

    }
}

function count(type)  {
    // 결과를 표시할 element
    const resultElement = document.getElementById('result');
    
    // 현재 화면에 표시된 값
    let number = resultElement.innerText;
    
    // 더하기/빼기
    if(type === 'plus') {
      number = parseInt(number) + 1000;
    }else if(type === 'minus')  {
      number = parseInt(number) - 1000;
    }
    
    // 결과 출력
    resultElement.innerText = number;
    
    
    
  }
 

 function setDisplay2(){
    if($('input:radio[id=20milion]').is(':checked')){
        $('#pay').show();
        $('#pay2').hide();
        $('#pay3').hide();
        $('#pay4').hide();
    }else if($('input:radio[id=15milion]').is(':checked')){
       $('#pay').hide();
        $('#pay2').show();
        $('#pay3').hide();
        $('#pay4').hide();
    }else if($('input:radio[id=10milion]').is(':checked')){
        $('#pay').hide();
        $('#pay2').hide();
        $('#pay3').show();
        $('#pay4').hide();
    }else if($('input:radio[id=05milion]').is(':checked')){
       $('#pay').hide();
        $('#pay2').hide();
        $('#pay3').hide();
        $('#pay4').show();
    }else if($('input:checkbox[id=many]').is(':checked')){
        $('#pay').hide();
        $('#pay2').hide();
        $('#pay3').show();
        $('#pay4').hide();
        $('#20milion').prop("checked", false);
        $('#15milion').prop("checked", false);
        $('#10milion').prop("checked", false);
        $('#05milion').prop("checked", false);
        
    }else{
        $('#pay').hide();
        $('#pay2').hide();
        $('#pay3').show();
        $('#pay4').hide();

    }
}


function setpay(){
	if($('input:radio[id=20milion]').is(':checked')){
		$('.result2').text('4')
		$('.result3').text('2')
	}else if($('input:radio[id=15milion]').is(':checked')){
		$('.result2').text('3')
		$('.result3').text('1.5')
	}else if($('input:radio[id=10milion]').is(':checked')){
		$('.result2').text('2')
		$('.result3').text('1')
	}else if($('input:radio[id=05milion]').is(':checked')){
		$('.result2').text('1')
		$('.result3').text('0.5')
	}
}


 
 
function change(e){
	
	if(document.getElementsByName('money').value == '20milion'){
		$('#result').text('20000')
	}else if(document.getElementsByName('money').value == '15milion'){
		$('#result').text('15000')
	}
	
}



