<form id="payment-form" action="{page_url}" method="post" class="form-ideal" action="{page_url}">
    <div class="form-row">
        <div class="form-field form-field-fill">
            <label for="name-on-card">{str_imie_i_nazwisko}</label>
            <input type="text" id="accountholder-name" name="accountholder-name" value="{val_imie} {val_nazwisko}"
                required>
            <input type="hidden" name="order" value="{val_id}">
        </div>
        <div class="form-field form-field-fill">
            <div class="form-row">
                <label for="ideal-bank-element">
                    iDEAL Bank
                </label>
                <div id="ideal-bank-element">
                    <!-- A Stripe Element will be inserted here. -->
                </div>
                <br />
                <button class="button button-primary">{str_order_ideal}</button>
            </div>
        </div>
        <div id="error-message" role="alert"></div>
    </div>
</form>


<script src="https://js.stripe.com/v3/"></script>
<script>
    var stripe = Stripe('{STRIPE_PUBLIC_KEY}');
    var elements = stripe.elements();

    var options = {
        // Custom styling can be passed to options when creating an Element
        style: {
            base: {
                padding: '10px 12px',
                color: '#32325d',
                fontSize: '16px',
                '::placeholder': {
                    color: '#aab7c4'
                },
            },
        },
    };

    // Create an instance of the idealBank Element
    var idealBank = elements.create('idealBank', options);

    // Add an instance of the idealBank Element into
    // the `ideal-bank-element` <div>
    idealBank.mount('#ideal-bank-element');


    var form = document.getElementById('payment-form');
    var accountholderName = document.getElementById('accountholder-name');

    form.addEventListener('submit', function (event) {
        event.preventDefault();

        // Redirects away from the client
        stripe.confirmIdealPayment(
            '{PAYMENT_INTENT_CLIENT_SECRET}', {
                payment_method: {
                    ideal: idealBank,
                    billing_details: {
                        name: accountholderName.value,
                    },
                },
                return_url: '{page_domain}shop_dotpay_afterpay/?status=ok',
            }
        );
    });
</script>

<style>
    /**
* Shows how you can use CSS to style your Element's container.
* These classes are added to your Stripe Element by default.
* You can override these classNames by using the options passed
* to the `idealBank` element.
* https://stripe.com/docs/js/elements_object/create_element?type=idealBank#elements_create-options-classes
*/

    input,
    .StripeElement {
        height: 40px;
        color: #32325d;
        background-color: white;
        border: 1px solid transparent;

        transition: box-shadow 150ms ease;
    }

    input {
        padding: 10px 12px;
    }

    input:focus,
    .StripeElement--focus {
        box-shadow: 0 1px 3px 0 #cfd7df;
    }
</style>