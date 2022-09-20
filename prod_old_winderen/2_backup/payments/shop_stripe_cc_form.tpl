<div class="form-row">
    <div class="credit-card-data-container">

        <div class="form-field form-field-fill">
            <label for="name-on-card">{str_imie_i_nazwisko}</label>
            <input type="text" id="cardholder-name" value="{val_imie} {val_nazwisko}" required>
            <input type="hidden" name="order" value="{val_id}">
        </div>
        <div class="form-field form-field-fill">
            <div id="card-element"></div>
            <!-- Used to display form errors -->
            <div id="card-errors" style="color:rgb(230, 36, 101);"></div>
            <br />
            <button id="card-button" class="button button-primary">{str_order_pay} <span class="fa fa-lock"></span></button>
        </div>
    </div>
    <div id="stripe-afterpay" class="hide">
        <div class="button button-primary">{str_dotpay_ok}</div>
    </div>
</div>

<!-- The needed JS files -->

<!-- JQUERY File -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Stripe JS -->
<script src="https://js.stripe.com/v3/"></script>
<!-- USER JS -->
<script>
var stripe = Stripe('{STRIPE_PUBLIC_KEY}');
var elements = stripe.elements();
// Set up Stripe.js and Elements to use in checkout form
var style = {
    base: {
        color: '#32325d',
        lineHeight: '24px',
        fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
        fontSmoothing: 'antialiased',
        fontSize: '16px',
        '::placeholder': {
            color: '#aab7c4'
        }
    },
    invalid: {
        color: '#fa755a',
        iconColor: '#fa755a'
    }
};

var cardElement = elements.create('card', {style: style, hidePostalCode: true});
cardElement.mount('#card-element');

var cardholderName = document.getElementById('cardholder-name');
var cardButton = document.getElementById('card-button');

cardButton.addEventListener('click', function(ev) {
    stripe.createPaymentMethod('card', cardElement, {
        billing_details: {name: cardholderName.value}
    }).then(function(result) {
        if (result.error) {
            // Show error in payment form
            //console.log(result.error.message);
            $('#card-errors').html(result.error.message);
            $("#card-button").attr("disabled", false);
        } else {
            $("#card-button").attr("disabled", true);
            // Otherwise send paymentMethod.id to your server (see Step 3)
            fetch('ajax.php?get=shop_stripe_cc_part', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ payment_method_id: result.paymentMethod.id })
            }).then(function(result) {
                // Handle server response (see Step 3)
                result.json().then(function(json) {
                    handleServerResponse(json);
                })
            });
        }
    });
});

function handleServerResponse(response) {
    if (response.error) {
        // Show error from server on payment form
        //console.log(result.error.message);
        $("#card-button").attr("disabled", false);
    } else if (response.requires_action) {
        // Use Stripe.js to handle required card action
        stripe.handleCardAction(
            response.payment_intent_client_secret
        ).then(function(result) {
            if (result.error) {
                // Show error in payment form
            } else {
                // The card action has been handled
                // The PaymentIntent can be confirmed again on the server
                fetch('ajax.php?get=shop_stripe_cc_part', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ payment_intent_id: result.paymentIntent.id })
                }).then(function(confirmResult) {
                    return confirmResult.json();
                }).then(handleServerResponse);
            }
        });
    } else {
        // Show success message
        $('.credit-card-data-container').hide();
        $('#stripe-afterpay').show();
        // redirect
        window.location.replace("cms.php?get=shop_dotpay_afterpay&status=ok");
        // consola
        console.log('Success');
    }
}
</script>


<style>
    .StripeElement {
        background-color:#fff;
        padding: 8px 12px;
        /*border-radius: 4px;*/
        border: 1px solid transparent;
    }

    .StripeElement--focus {
        /*box-shadow: 0 1px 3px 0 #cfd7df;*/
    }

    .StripeElement--invalid {
        border-color: #fa755a;
    }

    .StripeElement--webkit-autofill {
        background-color: #fefde5 !important;
    }
</style>