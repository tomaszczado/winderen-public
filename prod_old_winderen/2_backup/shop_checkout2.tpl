
<div class="container">
    <div class="shop-checkout-container-offset"></div>
    <div class="shop-checkout-container">
        <ul class="shop-checkout-header">
            <li>
                1. {str_check_step1} <i class="fa fa-check-circle"></i>
            </li>
            <li class="active">
                2. {str_check_step2}
            </li>
            <li>
                3. {str_check_step3}
            </li>
        </ul>
        <div class="shop-checkout-body shop-checkout-body-reverse">
            <div class="shop-checkout-main">
                <form action="{page_url}" method="post">
                    <div class="shop-checkout-payment-header">
                        <i class="fa fa-credit-card"></i> {str_check_platnosc}
                    </div>
                    <div class="shop-checkout-payment-selection">
                        <!-- IF PLATNOSC_ID_ERROR -->
                        <p class="form-field-error-message">{platnosc_id_error}</p>
                        <!-- ENDIF -->
                        <ul class="shop-checkout-payment-methods">
                            <li class="shop-checkout-payment-method">
                                <label class="shop-checkout-payment-pay">
                                    <div class="shop-checkout-payment-method-name">
                                        <h5>{str_payment_standard}</h5>
                                    </div>
                                </label>
                            </li>
                            <!-- BEGIN platnosci -->
                            <!-- IF platnosci.PLATNOSCPROCENT -->
                            <li class="shop-checkout-payment-method">
                                <label class="shop-checkout-payment-pay">
                                    <div class="shop-checkout-payment-method-name">
                                        <h5>{str_payment_fast}</h5>
                                        <p>{str_payment_addinfo}</p>
                                    </div>
                                </label>
                            </li>
                            <!-- ENDIF -->
                            <li class="shop-checkout-payment-method" id="shop-checkout-payment-method-{platnosci.id}">
                                <input type="hidden" name="platnosc_id_cost" id="platnosc_id_cost{platnosci.id}" value="{platnosci.platnosc_cost}">
                                <input type="radio" name="platnosc_id"
                                    id="shop-checkout-payment-method-{platnosci.id}-option" value="{platnosci.id}"
                                    {platnosci.checked} required>
                                <label for="shop-checkout-payment-method-{platnosci.id}-option"
                                    class="shop-checkout-payment-method-details">
                                    <div class="shop-checkout-payment-method-name">
                                        {platnosci.nazwa}
                                    </div>

                                    <div class="shop-checkout-payment-method-image">
                                        <!-- IF platnosci.IMAGE -->
                                        <img src="{platnosci.image_src}" alt="{platnosci.opis}">
                                        <!-- ELSE -->
                                        {platnosci.opis}
                                        <!-- ENDIF -->
                                    </div>
                                </label>
                            </li>
                            <!-- END platnosci -->
                        </ul>
                    </div>

                    <!-- IF SHOP_CHECKOUT_PROMO -->
                    <div class="shop-checkout-gift">
                        <h2>{str_prezenty_tytul}</h2>
                        <p>{str_prezenty_info}</p>
                        <ul class="shop-checkout-promo-items">
                            <!-- BEGIN promoitems -->
                            <li class="promo-shop-item center">
                                <input type="radio" name="promoitem" id="promoitem{promoitems.id}" value="{promoitems.id}">
                                <label for="promoitem{promoitems.id}">
                                    <img src="{promoitems.imagem_src}" alt="{promoitems.nazwa}" height="70">
                                </label>

                            </li>
                            <!-- END promoitems -->
                        </ul>
                    </div>
                    <!-- ENDIF -->

                    <div class="shop-checkout-actions">
                        <a class="button button-transparent" href="{shop_checkout_link}">{str_back}</a>
                        <input type="hidden" name="zamawiam" value="1" />
                        <input type="hidden" name="checkout1" value="1" />
                        <input type="submit" onClick="ga('send', 'event', 'payment2order', 'Click');"
                            class="button button-primary" value="{str_payment}" id="payment2order">
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
                <!-- IF KOSZYK_RABAT -->
                <div class="shop-checkout-sidebar-cart-shipping-price shop-checkout-sidebar-discount-info-ok">
                    - Rabat {rabat_brutto} {shop_waluta}
                </div>
                <!-- ENDIF -->
                <div class="shop-checkout-sidebar-cart-shipping-price">
                    + {str_shop_shipping}: <span class="flag-icon flag-icon-{przesylka_ip_iso}"></span>
                    <span id="cart_shipping_info" class="hide">+ {str_payment_doplata}</span>
                    <span id="cart_shipping_value">{przesylka_brutto}</span> {shop_waluta}
                </div>
                <div class="shop-checkout-sidebar-cart-shipping-price">
                    {str_dostawa_termin}
                </div>
                <div class="shop-checkout-sidebar-cart-delivered-by">
                    {str_check_dostawa_logo}<span
                        class="shop-checkout-sidebar-delivered-by-logo shop-checkout-sidebar-delivered-by-{przesylka_id}"></span>
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
                        <span id="cart_total_value">{koszyk_all_brutto}</span> {shop_waluta}
                        <input type="hidden" name="hidden_shipping_value" id="hidden_shipping_value" value="{przesylka_brutto}">
                        <input type="hidden" name="hidden_total_value" id="hidden_total_value" value="{koszyk_all_brutto}">
                    </div>
                </div>
                <!-- BEGIN kodpromocyjnymsg -->
                <div
                    class="shop-checkout-sidebar-discount-info shop-checkout-sidebar-discount-info-{kodpromocyjnymsg.type}">
                    <i class="fa fa-info-circle"></i>{kodpromocyjnymsg.message}
                </div>
                <!-- END kodpromocyjnymsg -->
            </div>
        </div>
    </div>
</div>

<script src="templates/1/files/payment_selection.js?v=1.1"></script>

<!-- IF PLATNOSCPROCENT -->
<script>
$('.shop-checkout-payment-methods input[type=radio]:first').attr("checked", true);
</script>
<!-- ELSE -->
<script>
$('.shop-checkout-payment-pay').addClass('hide');
</script>
<!-- ENDIF -->
