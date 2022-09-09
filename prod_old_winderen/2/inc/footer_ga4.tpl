<!-- IF ENVIRONMENT == 'prod' -->

<!-- IF SHOP_ITEM_ACTIVE -->
<script>
gtag("event", "view_item", {
    currency: "{shop_waluta}",
    value: {cena_brutto},
    items: [
        {
        item_id: "{id}",
        item_name: "{nazwa_title}",
        location_id: "L_{id}",
        price: {cena_brutto},
        quantity: 1
        }
    ]
});
</script>

<script>
    const add_to_cart_id = document.getElementById('cartadd');
    if (add_to_cart_id !== null) {
        add_to_cart_id.addEventListener("click", function () {
            gtag("event", "add_to_cart", {
                currency: "{shop_waluta}",
                value: {cena_brutto},
                items: [{
                    item_id: "{id}",
                    item_name: "{nazwa_title}",
                }]
            });
        });
    }
</script>
<!-- ENDIF -->

<!-- IF SHOP_CHECKOUT_ACTIVE -->
<script>
    const begin_checkout_id = document.getElementById('checkout2payment');
    if (begin_checkout_id !== null) {
        begin_checkout_id.addEventListener("click", function () {
            gtag("event", "begin_checkout", {
                currency: "{shop_waluta}",
                value: {koszyk_wartosc_brutto},
            });
        });
    }
</script>

<script>
    const purchase_id = document.getElementById('payment2order');
    if (purchase_id !== null) {
        purchase_id.addEventListener("click", function () {
            gtag("event", "purchase", {
                transaction_id: "{app_time}",
                value: {koszyk_wartosc_brutto},
                shipping: {przesylka_brutto},
                currency: "{shop_waluta}",
            });
        });
    }
</script>
<!-- ENDIF -->


<!-- IF SHOP_OFFER_ACTIVE -->
<script>
gtag("event", "view_item_list", {
    item_list_id: "products_{page_id}",
    item_list_name: "{shop_offer_tytul}",
});
</script>
<!-- ENDIF -->


<!-- IF SHOP_CART_ACTIVE -->
    <!-- IF KOSZYK_DODANE -->
    <!-- ELSE -->
    <script>
    gtag("event", "view_cart", {
        currency: "{shop_waluta}",
        value: {koszyk_suma_brutto},
    });
    </script>
    <!-- ENDIF -->
<!-- ENDIF -->

<!-- IF CONTACT_ACTIVE -->
<!-- IF FORMSEND -->
<script>
gtag("event", "generate_lead", {
    currency: "{shop_waluta}",
    value: {koszyk_suma_brutto},
});
</script>
<!-- ENDIF -->
<!-- ENDIF -->


<!-- ENDIF -->