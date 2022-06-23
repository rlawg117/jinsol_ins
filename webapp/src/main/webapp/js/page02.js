function setDisplay(){
    if($('input:radio[id=10y]').is(':checked')){
        $('#open').show();
        $('#10y').prop("checked", true);
        $('#10year').show();
        $('#10year').prop("checked", true);
        $('#20year').hide();
        $('#60year').hide();
        $('#80year').hide();
        
    }else if($('input:radio[id=20y]').is(':checked')){
        $('#10year').show();
        $('#20year').show();
        $('#20year').prop("checked", true);
        $('#60year').hide();
        $('#80year').hide();
    }else if($('input:radio[id=60y]').is(':checked')){
        $('#10year').show();
        $('#20year').show();
        $('#60year').show();
        $('#60year').prop("checked", true);
        $('#80year').hide();
    }else if($('input:radio[id=80y]').is(':checked')){
        $('#10year').show();
        $('#20year').show();
        $('#60year').hide();
        $('#80year').show();
        $('#80year').prop("checked", true);
    }else{
        $('#10year').hide();
        $('#20year').hide();
        $('#60year').hide();
        $('#80year').hide();
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
  
  

