
function check01(){
    if($('input:checkbox[id=check1]').is(":checked")){
        $('#01').show();
    }else{
        $('#01').hide();
    }
}

function check02(){
    if($('input:checkbox[id=check2]').is(":checked")){
        $('#02').show();
    }else{
        $('#02').hide();
    }
}

function check03(){
    if($('input:checkbox[id=check3]').is(":checked")){
        $('#03').show();
    }else{
        $('#03').hide();
    }
}

function check04(){
    if($('input:checkbox[id=check4]').is(":checked")){
        $('#04').show();
    }else{
        $('#04').hide();
    }
}



function selectAll(selectAll)  {
    const checkboxes 
         = document.getElementsByName('checkbox');
    
    checkboxes.forEach((checkbox) => {
      checkbox.checked = selectAll.checked;
    })
  }