
$("#ship-to-different-address-checkbox").change(function() {
    if(!this.checked) {
        $('#remove').css('display', 'none');
    }else{
        $('#remove').css('display', 'unset');
    }
});
$('.cart-footer').remove();