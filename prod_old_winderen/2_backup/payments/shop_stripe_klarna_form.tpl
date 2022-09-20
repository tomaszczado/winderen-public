<form id="payment-form" action="{page_url}" method="post" class="form-ideal" action="{page_url}">
    <div class="form-row">
        <div class="form-field form-field-fill">
            <input type="hidden" name="order" value="{val_id}">
        </div>

        <button class="button button-primary">{str_order_pay}</button>
    </div>
</form>

<!-- IF POKAZ_FORM_STRIPE_KLARNA_REDIRECT -->
<script src="https://js.stripe.com/v3/"></script>
<script>
    var stripe = Stripe('{STRIPE_PUBLIC_KEY}');

    stripe.createSource({
        type: 'klarna',
        flow: 'redirect',
        amount: {suma_brutto_waluta_stripe},
        currency: '{val_order_valuta}',
        klarna: {
            product: 'payment',
            purchase_country: '{val_kraj_id_iso}',
            first_name: '{val_imie}',
            last_name: '{val_nazwisko}',

        },
        owner: {
            email: '{val_email}',
        },
        source_order: {
            items: [{
                description: 'Order {val_id}',
                quantity: 1,
                currency: '{val_order_valuta}',
                amount: {suma_brutto_waluta_stripe},
            }],
        },
        redirect: {
            return_url: '{page_domain}shop_dotpay_afterpay/?status=ok',
        }
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