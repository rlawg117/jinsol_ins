function checkcard(){
    if ($('input:radio[id=card]').is(":checked")) {
                //foreigner_input
        $('#cdp').show();
        $('#mnp').hide();
    }else{
        $('#cdp').hide();
        $('#mnp').show();
    }
}