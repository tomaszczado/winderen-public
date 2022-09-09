var PaymentSelection = function (paymentMethodDetailsElements) {
    var activeClass = "active";

    var reset = function () {
        paymentMethodDetailsElements.removeClass(activeClass);
    };

    var select = function (paymentMethodElement) {
        reset();
        var paymentMethodDetailsElement = paymentMethodElement.find(".shop-checkout-payment-method-details");
        var paymentMethodDetailsRadioElement = paymentMethodElement.find("input[type=radio]");
        paymentMethodDetailsElement.addClass(activeClass);
        paymentMethodDetailsRadioElement.prop('checked', true);
        try {
            ShopCheckoutAdd();
        } catch (error) {
            //console.error(error);
        }
    };

    return {
        reset: reset,
        select: select
    };
};

$(document).ready(function () {
    var paymentMethodElements = $(".shop-checkout-payment-method");
    var paymentMethodDetailsElements = $(".shop-checkout-payment-method-details");

    var paymentSelection = PaymentSelection(paymentMethodDetailsElements);

    paymentMethodElements.click(function (e) {
        var clickedElement = $(this);
        paymentSelection.select(clickedElement);
    });
    try {
        ShopCheckoutAdd();
    } catch (error) {
        //console.error(error);
    }
});

function ShopCheckoutAdd() {
    var platnosc_id = $('input[name=platnosc_id]:checked').val();
    var platnosc_cost = $('#platnosc_id_cost'+platnosc_id).val();
    var shipping_value = $('#hidden_shipping_value').val();
    var total_value = $('#hidden_total_value').val();
    // suma total
    if (platnosc_cost > 0) {
        var shipping_suma = parseFloat(shipping_value) + parseFloat(platnosc_cost);
        shipping_suma = shipping_suma.toFixed(2)
        $('#cart_shipping_value').html(shipping_suma);
        //$('#cart_shipping_info').html(' + fast payment fee');
        $('#cart_shipping_info').removeClass('hide');
        var total_suma = parseFloat(total_value) + parseFloat(platnosc_cost);
        total_suma = total_suma.toFixed(2)
        $('#cart_total_value').html(total_suma);
    } else {
        $('#cart_shipping_value').html(shipping_value);
        //$('#cart_shipping_info').html('');
        $('#cart_shipping_info').addClass('hide');
        $('#cart_total_value').html(total_value);
    }
    // log
    //console.log(platnosc_id + ' - ' +platnosc_cost+', total: '+total_value);
}