$(".edit-seat").click(function() {
    var val = $(this).val().split(".");
    var amt = parseInt($("#total-amount").text());
    if($(this).prop("checked") == true) {
        amt = amt + parseInt(val[2]);
    } else {
        amt = amt - parseInt(val[2]);
    }
    $("#total-amount").text(amt.toString());    
});