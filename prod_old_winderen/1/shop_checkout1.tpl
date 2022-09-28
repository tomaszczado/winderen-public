<div class="container">
    <div class="shop-checkout-container-offset"></div>

    <div class="shop-checkout-container">
        <ul class="shop-checkout-header">
            <li class="active">
                1. {str_check_step1}
            </li>
            <li>
                2. {str_check_step2}
            </li>
            <li>
                3. {str_check_step3}
            </li>
        </ul>

        <!-- IF KOSZYK_RU_BLOCK -->
        <div class="shop-cart-shipping-free shop-cart-shipping-brexit">
            <!-- IF PAGE_COUNTRY == 177 -->
            Доставка в выбранное место в настоящее время недоступна.
            <!-- ELSE -->
            Shipping to a selected location is not currently available.
            <!-- ENDIF -->
        </div>
        <!-- ENDIF -->
        <!-- IF KOSZYK_BREXIT_DO135 -->
        <div class="shop-cart-shipping-free shop-cart-shipping-brexit">
            <span class="flag-icon flag-icon-en"></span>
            <strong>Brexit INFO</strong>: Shipping to the UK is only possible for orders over 135 GBP net.
        </div>
        <!-- ENDIF -->
        <!-- IF KOSZYK_BREXIT_OD135 -->
        <div class="shop-cart-shipping-free shop-cart-shipping-brexit">
            <span class="flag-icon flag-icon-en"></span>
            <strong>Brexit INFO</strong>: The value of your cart is shown net, however UK tax of 20% may be charged to you by the customs agency upon receipt of your package.
        </div>
        <!-- ENDIF -->

        <div class="shop-checkout-body">
            <div class="shop-checkout-main">
                <form action="{page_url}" method="post">
                    <div class="form-fields">
                        <!-- INCLUDE 1/forms/user_fields.tpl -->
                    </div>
                    <div class="form-notes-field">
                        <label for="shop-checkout-notes">{str_uwagi}</label>
                        <textarea id="shop-checkout-notes" name="uwagi_zamowienie">{uwagi_zamowienie}</textarea>
                    </div>
                    <div class="form-field" style="width: 100%;">
                        <label for="shop-checkout-notes">{str_uwagi_kurier}</label>
                        <input type="text" maxlength="32" id="shop-checkout-notes" name="uwagi_kurier"
                            value="{uwagi_kurier}">
                    </div>
                    <div class="form-option-field shop-checkout-shipping-section">
                        <input type="checkbox" id="shop-checkout-shipping-option" name="shopadressend" value="1"
                            {shopadressend_checked}>
                        <label for="shop-checkout-shipping-option">
                            <!-- IF KLIENT_ID_TYP == 3 -->
                            {str_drop_adres}
                            <!-- ELSE -->
                            {str_check_adres}
                            <!-- ENDIF -->
                        </label>
                    </div>
                    <div id="shop-checkout-custom-shipping-fields"
                        class="form-fields <!-- IF SHOPADRESSEND --><!-- ELSE -->hidden<!-- ENDIF -->">
                        <!-- INCLUDE 1/forms/shipping_fields.tpl -->
                    </div>

                    <!-- IF SHOPDROPSHIPPING -->
                    <div class="form-option-field shop-checkout-shipping-section">
                        <input type="checkbox" id="shop-checkout-dropshipping-option" name="shopdropshiping" value="1"
                            {shopdropshiping_checked}>
                        <label for="shop-checkout-dropshipping-option">
                            {str_drop_direct}
                        </label>
                    </div>
                    <div id="shop-checkout-custom-dropshipping-fields"
                        class="form-fields <!-- IF SHOPDROPSHIPING --><!-- ELSE -->hidden<!-- ENDIF -->">
                        <!-- INCLUDE 1/forms/dropshipping_fields.tpl -->
                    </div>
                    <!-- ENDIF -->

                    <div class="form-option-field shop-checkout-invoice-section">
                        <input type="checkbox" id="shop-checkout-invoice-option" name="shopafv" value="1"
                            {shopafv_checked}>
                        <label for="shop-checkout-invoice-option">
                            {str_check_fv}
                        </label>
                    </div>

                    <div id="shop-checkout-custom-invoice-fields"
                        class="form-fields <!-- IF SHOPAFV --><!-- ELSE -->hidden<!-- ENDIF -->">
                        <!-- INCLUDE 1/forms/invoice_fields.tpl -->
                        <div class="form-field-details" id="shop-checkout-invoice-vat-zero-details">
                            <h5 class="form-field-details-heading">{str_check_vat_details_heading}</h5>
                            <p class="form-field-details-text">{str_check_vat_details_text}</p>
                            <p class="form-field-details-text"><b>{str_check_vat_details_bullet1}</b> -
                                {str_check_vat_details_bullet1_details}</p>
                            <p class="form-field-details-text"><b>{str_check_vat_details_bullet2}</b> -
                                {str_check_vat_details_bullet2_details}</p>
                        </div>
                    </div>

                    <!-- IF PAGE_COUNTRY == 171 -->
                    <div class="shop-checkout-fv-info">
                        Od 1 stycznia 2020 roku zmieniają się zasady wystawiania faktur.
                        <a href="javascript:void(0)" onclick="DivShowHide('fvinfo')">Sprawdź szczegóły.</a>
                        <br />
                        <div id="fvinfo" class="hide">
                            Zmiany zasad wystawiania faktur<br /><br />
                            Jeżeli nie podadzą Państwo danych do faktury podczas składania zamówienia, to od 1 stycznia
                            2020 r. nie będziemy w stanie wystawić faktury na dane firmowe.<br /><br />
                            Jeśli za ten zakup chcą otrzymać Państwo fakturę na dane firmowe, proszę kliknąć „CHCĘ
                            OTRZYMAĆ FAKTURĘ VAT” i podać dane firmy.<br /><br />
                        </div>
                    </div>
                    <!-- ENDIF -->

                    <!-- IF KLIENT_ID_TYP == 0 -->
                    <div class="shop-checkout-promo">
                        <!-- IF KLIENTKUPIL -->
                        <!-- ELSE -->
                        <!-- IF POLECENIE_KOD_ON -->
                        <div class="form-field">
                            <label for="shop-checkout-additional-promo-code">{str_kodpromo}</label>
                            <input type="text" id="shop-checkout-additional-promo-code" name="polecenie_kod"
                                value="{polecenie_kod}">
                        </div>
                        <!-- ENDIF -->
                        <!-- ENDIF -->
                    </div>
                    <!-- ENDIF -->

                    <!-- IF KLIENT_PARTNER -->
                    <div class="shop-checkout-promo">
                        <div class="form-field">
                            <label for="shop-checkout-additional-rabat-punkty">{str_punktyrabatowe}</label>
                            <input type="number" step="1" id="shop-checkout-additional-rabat-punkty" name="rabat_punkty"
                                value="{rabat_punkty}" max="{rabat_punkty_max}">
                            <small>{str_punktyrabatowe_info}</small>
                        </div>
                    </div>
                    <!-- ENDIF -->

                    <div class="form-option-field shop-checkout-terms-and-conditions-field">
                        <input type="checkbox" id="shop-checkout-terms-and-conditions" name="regulamin" value="1"
                            {regulamin_checked} required>
                        <label for="shop-checkout-terms-and-conditions">
                            {str_regulaminy_zam}*
                        </label>
                        <!-- IF REGULAMIN_ERROR -->
                        <p class="form-field-error-message">{regulamin_error}</p><!-- ENDIF -->
                    </div>

                    <div class="shop-checkout-actions">
                        <a class="button button-transparent" href="{shop_cart_link}">{str_back}</a>
                        <input type="hidden" name="checkout1" value="1" />
                        <input type="submit" onClick="ga('send', 'event', 'checkout2payment', 'Click');"
                            class="button button-primary" value="{str_next}" id="checkout2payment">
                    </div>
                </form>
            </div>
            <div class="shop-checkout-sidebar">
                <h5 class="shop-checkout-sidebar-header">{str_checkout_your_order}</h5>
                <ul class="shop-checkout-sidebar-cart">
                    <!-- BEGIN cart -->
                    <li class="shop-checkout-sidebar-cart-item">
                        <div class="shop-checkout-sidebar-cart-item-header">
                            <div class="shop-checkout-sidebar-cart-item-name">
                                {cart.nazwa}
                                <!-- IF cart.PROMOCJA_TEST -->
                                <span class="color-blue">TEST</span>
                                <!-- ENDIF -->
                            </div>
                            <div class="shop-checkout-sidebar-cart-item-price">{cart.wartosc_brutto} {shop_waluta}</div>
                        </div>
                        <div class="shop-checkout-sidebar-cart-item-detail">
                            <span class="shop-checkout-sidebar-cart-item-detail-label">{str_subtotal}:</span>
                            <span class="shop-checkout-sidebar-cart-item-detail-value">{cart.ilosc}</span>
                        </div>
                        <div class="shop-checkout-sidebar-cart-item-details">
                            <div class="shop-checkout-sidebar-cart-item-detail">
                                <span class="shop-checkout-sidebar-cart-item-detail-label">{str_color}:</span>
                                <span class="shop-checkout-sidebar-cart-item-detail-value">{cart.kolor}</span>
                            </div>
                            <!-- IF cart.ROZMIAR !== '---' -->
                            <div class="shop-checkout-sidebar-cart-item-detail">
                                <span class="shop-checkout-sidebar-cart-item-detail-label">{str_size}:</span>
                                <span class="shop-checkout-sidebar-cart-item-detail-value">{cart.rozmiar}</span>
                            </div>
                            <!-- ENDIF -->
                        </div>
                    </li>
                    <!-- END cart -->
                </ul>
                <div class="shop-checkout-sidebar-cart-summary">
                    {koszyk_wartosc_brutto} {shop_waluta}
                </div>
                <div class="shop-checkout-sidebar-cart-shipping-price">
                    + {str_shop_shipping_to}: <span class="flag-icon flag-icon-{przesylka_ip_iso}"></span><span
                        id="cart-checkout-sidebar-cart-shipping-to">{wys_kraj_id_str_ip}</span>
                    <span id="cart-checkout-sidebar-cart-shipping-price">{przesylka_brutto}</span> {shop_waluta}
                </div>
                <div class="shop-checkout-sidebar-cart-shipping-price">
                    {str_dostawa_termin}
                </div>
                <div class="shop-checkout-sidebar-cart-tax">
                    <!-- IF KLIENT_CENY_NETTO -->
                    {str_shop_item_price_net}
                    <!-- ELSE -->
                    {str_shop_item_price_gross}
                    <!-- ENDIF -->
                </div>
                <div class="shop-checkout-sidebar-cart-total">
                    <div class="shop-checkout-sidebar-cart-total-label">
                        {str_total}
                    </div>
                    <div class="shop-checkout-sidebar-cart-total-value">
                        <span class="scartallbrutto">{koszyk_all_brutto}</span> {shop_waluta}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="templates/1/files/shop_checkout1.js"></script>

<!-- IF ENVIRONMENT == 'prod' -->
<!-- Facebook Pixel Code -->
<script type="text/javascript">
    fbq('track', 'InitiateCheckout');
</script>
<!-- TikTok Pixel Code -->
<script type="text/javascript">
    ttq.track('InitiateCheckout');
</script>
<!-- ENDIF -->


<!-- IF KLAVIYO -->
<script type="text/javascript">
    var _learnq = _learnq || [];
    _learnq.push(["track", "Started Checkout", {
     "$event_id": "1000123_1387299423",
     "$value": {koszyk_suma_brutto_base},
     "ItemNames": [<!-- BEGIN cart -->"{cart.nazwa_title}", <!-- END cart -->],
     "CheckoutURL": "{page_domain}{shop_checkout_link}",
     "Categories": [<!-- BEGIN cart -->"{cart.kategoria_nazwa}", <!-- END cart -->],
     "StoreLanguage": "{page_lang_name_short}",
     "Items": [<!-- BEGIN cart -->
        {
         "ProductID": "{cart.oferta_id}",
         "SKU": "{cart.oferta_id}",
         "ProductName": "{cart.nazwa_title}",
         "Quantity": {cart.ilosc},
         "ItemPrice": {cart.cena_brutto_base},
         "RowTotal": {cart.wartosc_brutto_base},
         "ProductURL": "{page_domain}{cart.link}",
         "ImageURL": "{page_domain}{cart.image_src}",
         "ProductCategories": ["{cart.kategoria_nazwa}"]
        },<!-- END cart -->
    ]
   }]);
</script>
<!-- ENDIF -->



<!-- IF ENVIRONMENT == 'off' -->

<script>
    var anip = {};
    <!-- BEGIN nip_pattern -->
    anip[{nip_pattern.id}] = '{nip_pattern.nip_form}';<!-- END nip_pattern -->

    function nip_pattern_set(country, nip, label) {
        // config
        var country_id = $('#' + country + ' option').filter(':selected').val();
        var nip_input = $('#' + nip);

        // check pattern
        if (typeof anip[country_id] === 'undefined') {
            nip_input.removeAttr('pattern');
        } else {
            nip_input.attr({
                'pattern': anip[country_id]
            });
        }
    }

    // change country
    $("#fv_kraj_id").change(function() {
        nip_pattern_set('fv_kraj_id', 'shop-checkout-address-invoice-nip', 'shop-checkout-address-invoice-nip');
    });

    // on load
    nip_pattern_set('fv_kraj_id', 'shop-checkout-address-invoice-nip', 'shop-checkout-address-invoice-nip');
</script>

<script>
    var cnip = {};
    var tnip = {};
    <!-- BEGIN nip_country -->cnip[{nip_country.id}] = '{nip_country.iso}';
    <!-- IF nip_country.NIP_LABEL -->
    tnip[{nip_country.id}] = '{nip_country.NIP_LABEL}';
    <!-- ENDIF -->
    <!-- END nip_country -->

    function nip_country_set(country, nip, label) {
        // config
        var country_id = $('#' + country + ' option').filter(':selected').val();
        var nip_input = $('#' + nip);
        var nip_tip = $('.shop-checkout-address-invoice-nip-tip');
        // check pattern
        if (typeof cnip[country_id] === 'undefined') {
            //nip_input.removeAttr('pattern');
        } else {
            if (nip_input.val() == '') {
                nip_input.val(cnip[country_id]);
            }
            if (nip_input.val().length < 3) {
                nip_input.val(cnip[country_id]);
            }
        }
        // nip tip
        if (typeof tnip[country_id] === 'undefined') {
            nip_tip.html('');
        } else {
            nip_tip.html(tnip[country_id]);
        }
    }

    // change country
    $("#fv_kraj_id").change(function() {
        nip_country_set('fv_kraj_id', 'shop-checkout-address-invoice-nip', 'shop-checkout-address-invoice-nip');
    });

    // on load
    nip_country_set('fv_kraj_id', 'shop-checkout-address-invoice-nip', 'shop-checkout-address-invoice-nip');
</script>

<!-- ENDIF -->