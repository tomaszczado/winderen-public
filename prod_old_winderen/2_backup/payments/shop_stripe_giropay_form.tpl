<form id="payment-form" action="{page_url}" method="post" class="form-ideal" action="{page_url}">
    <div class="form-row">
        <div class="form-field form-field-fill">
            <input type="hidden" name="order" value="{val_id}">
        </div>

        <button class="button button-primary">{str_order_pay}</button>
    </div>
</form>

<!-- IF POKAZ_FORM_STRIPE_GIROPAY_REDIRECT -->
<script src="https://js.stripe.com/v3/"></script>
<script>
    var stripe = Stripe('{STRIPE_PUBLIC_KEY}');

    stripe.createSource({
        type: 'giropay',
        amount: {suma_brutto_waluta_stripe},
        currency: '{val_order_valuta}',
        statement_descriptor: 'Order {val_id}',
        owner: {
            name: '{val_imie} {val_nazwisko}',
            email: '{val_email}'
        },
        redirect: {
            return_url: '{page_domain}shop_dotpay_afterpay/?status=ok',
        },
    }).then(function (result) {
        // handle result.error or result.source
        // console.log(result);
        var source = result.source;
        if (source.redirect.url != '') {
            window.location.replace(source.redirect.url);
        }
    });
</script>
<!-- ENDIF -->