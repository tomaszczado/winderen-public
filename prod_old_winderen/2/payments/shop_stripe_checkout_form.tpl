<form id="payment-form" action="{page_url}" method="post" class="form-ideal" action="{page_url}">
    <div class="form-row">
        <input type="hidden" name="order" value="{val_id}">
        <button class="button button-primary">{str_order_pay}</button>
    </div>
</form>


<!-- IF CHECKOUT_SESSION_ID -->
<script src="https://js.stripe.com/v3/"></script>
<script>
    var stripe = Stripe('{STRIPE_PUBLIC_KEY}');
    stripe.redirectToCheckout({
        // Make the id field from the Checkout Session creation API response
        // available to this file, so you can provide it as parameter here
        // instead of the {{CHECKOUT_SESSION_ID}} placeholder.
        sessionId: '{CHECKOUT_SESSION_ID}'
    }).then(function (result) {
        // If `redirectToCheckout` fails due to a browser or network
        // error, display the localized error message to your customer
        // using `result.error.message`.
    });
</script>
<!-- ENDIF -->