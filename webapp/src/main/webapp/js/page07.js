
function checks01(){
    if($('input:checkbox[id=ck1]').is(":checked")){
        $('#s01').show();
    }else{
        $('#s01').hide();
    }
    
     if($('input:checkbox[id=ck2]').is(":checked")){
        $('#s02').show();
    }else{
        $('#s02').hide();
    }
    
     if($('input:checkbox[id=ck3]').is(":checked")){
        $('#s03').show();
    }else{
        $('#s03').hide();
    }
    
     if($('input:checkbox[id=ck4]').is(":checked")){
        $('#s04').show();
    }else{
        $('#s04').hide();
    }
    
     if($('input:checkbox[id=ck5]').is(":checked")){
        $('#s05').show();
    }else{
        $('#s05').hide();
    }
    
     if($('input:checkbox[id=ck6]').is(":checked")){
        $('#s06').show();
    }else{
        $('#s06').hide();
    }
    
     if($('input:checkbox[id=ck7]').is(":checked")){
        $('#s07').show();
    }else{
        $('#s07').hide();
    }
    
     if($('input:checkbox[id=ck8]').is(":checked")){
        $('#s08').show();
    }else{
        $('#s08').hide();
    }
    
     if($('input:checkbox[id=ck9]').is(":checked")){
        $('#s09').show();
    }else{
        $('#s09').hide();
    }
    
  
}



function selectAll(selectAll)  {
    const checkboxes 
         = document.getElementsByName('checkbox');
    
    checkboxes.forEach((checkbox) => {
      checkbox.checked = selectAll.checked;
    })
  }
  
  
  

