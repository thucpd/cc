
$("#ship-to-different-address-checkbox").change(function() {
    if(!this.checked) {
        $('#remove').css('display', 'none');
    }else{
        $('#remove').css('display', 'unset');
    }
});
$('.cart-footer').remove();
function applycoupon() {
    var coupon = $('#coupon_code').val();
    $.ajax({
        type: "POST",
        url: "coupon.php",
        dataType: 'json', 
        data: {coupon: coupon}, 
        success: function(success){
            console.log(success)
        }
       
    });
}
