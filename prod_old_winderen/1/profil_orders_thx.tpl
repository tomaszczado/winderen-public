<div class="container">
    <div class="shop-checkout-container">
        <ul class="shop-checkout-header">
            <li>
                1. {str_check_step1} <i class="fa fa-check-circle"></i>
            </li>
            <li>
                2. {str_check_step2} <i class="fa fa-check-circle"></i>
            </li>
            <li class="active">
                3. {str_check_step3}
            </li>
        </ul>
        <div class="shop-checkout-body">
            <div class="shop-checkout-main shop-checkout-main-thx">

                <h4 class="shop-checkout-thank-you-heading">{str_order_zamowienie} {val_id}</h4>

                <div class="shop-checkout-main-img">
                    <!-- IF POKAZ_FORM_STRIPE_CC -->
                    <img src="templates/1/img/payment/14_big.png" alt="{platnosc_nazwa}">
                    <!-- ELSE -->
                    <img src="{platnosc_ico}" alt="{platnosc_nazwa}">
                    <!-- ENDIF -->
                </div>

                <!-- IF PLATNOSCID == 3 -->
                <p class="shop-checkout-thank-you-shipping">
                    {str_checkout_thank_you_address}<br>
                    <!-- IF WYSYLKA_ADRES -->
                        {val_wys_kraj_id}, {val_wys_kod_pocztowy} {val_wys_miasto}, {val_wys_adres} {val_wys_dom}:
                    <!-- ELSE -->
                        {val_kraj_id}, {val_kod_pocztowy} {val_miasto}, {val_adres} {val_dom}:
                    <!-- ENDIF -->
                </p>
                <!-- ENDIF -->

                <!-- IF PLATNOSCID == 4 -->
                <div class="shop-checkout-thank-you-payment-details">
                    <h3>{str_checkout_thank_you_payment_heading}</h3>
                    <div class="shop-checkout-thank-you-payment-details-container">
                        <div class="shop-checkout-thank-you-payment-details-company">
                            <p>
                                {firma_nazwa}<br>
                                {firma_adres}<br>
                                {firma_miasto_kod} {firma_miasto}
                            </p>
                        </div>
                        <div class="shop-checkout-thank-you-payment-details-bank">
                            <h3>{platnosc_konto}</h3>
                            <p>
                                {platnosc_bank_nazwa}<br>
                                SWIFT: {platnosc_bank_swift}<br>
                                {platnosc_bank_adres}<br>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- ENDIF -->

                <ul class="shop-checkout-thank-you-notes">
                    <!-- IF PLATNOSCID == 4 -->
                        <li><i class="fa fa-info-circle"></i>{str_checkout_thank_you_payment}</li>
                    <!-- ENDIF -->
                </ul>

                <!-- IF PLATNOSCID == 4 && STATUSID < 5 && LOGGED -->
                <br />
                <a class="button button-transparent" target="_blank" href="{page_lang_name_short}/profil_orders/{GETID}/2/">
                    {str_order_proforma}
                    <img src="{template_images}button/button-pdf.png" height="37" alt="PDF" style="vertical-align:middle; padding: 5px">
                </a>
                <!-- ENDIF -->


                <!-- IF POKAZ_FORM_STRIPE_CC -->
                    <!-- INCLUDE 1/payments/shop_stripe_cc_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_IDEAL -->
                    <!-- INCLUDE 1/payments/shop_stripe_ideal_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_SOFORT -->
                    <!-- INCLUDE 1/payments/shop_stripe_sofort_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_CHECKOUT -->
                    <!-- INCLUDE 1/payments/shop_stripe_checkout_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_GIROPAY -->
                    <!-- INCLUDE 1/payments/shop_stripe_giropay_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_KLARNA -->
                    <!-- INCLUDE 1/payments/shop_stripe_klarna_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_MULTIBANCO -->
                    <!-- INCLUDE 1/payments/shop_stripe_multibanco_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_EPS -->
                    <!-- INCLUDE 1/payments/shop_stripe_eps_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_STRIPE_BANCONTACT -->
                    <!-- INCLUDE 1/payments/shop_stripe_bancontact_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_LAYBUY -->
                    <!-- INCLUDE 1/payments/shop_laybuy_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_SOFORT -->
                    <!-- INCLUDE 1/payments/shop_sofort_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_KLARNA -->
                    <!-- INCLUDE 1/payments/shop_klarna_form.tpl -->
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_DOTPAY -->
                <div class="shop-checkout-thank-you-payment">
                    <div class="dotpay"><!-- INCLUDE 1/payments/shop_dotpay_form.tpl --></div>
                    <script>$('#dotpayform').submit();</script>
                </div>
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_PAYPAL -->
                <div class="shop-checkout-thank-you-payment">
                    <div class="dotpay"><!-- INCLUDE 1/payments/shop_paypal_form.tpl --></div>
                </div>
                <!-- ENDIF -->

                <!-- IF POKAZ_FORM_PAYPAL2 -->
                <div class="shop-checkout-thank-you-payment">
                    <div class="dotpay"><!-- INCLUDE 1/payments/shop_paypal.tpl --></div>
                </div>
                <!-- ENDIF -->

                <!-- IF STATUSID == 4 -->
                <div class="shop-checkout-actions shop-checkout-thank-you-actions">
                    <a class="button button-transparent" href="{page_domain}profil_orders/{GETID}/{GETCODE}/#payment">{str_order_change_payment}</a>
                </div>
                <!-- ENDIF -->

            </div>


            <div class="shop-checkout-sidebar">
                <h5 class="shop-checkout-sidebar-header">{str_checkout_your_order}</h5>
                <ul class="shop-checkout-sidebar-cart">
                    <!-- BEGIN order_item -->
                        <!-- IF order_item.PRODUKT == 1 -->
                            <li class="shop-checkout-sidebar-cart-item">
                                <div class="shop-checkout-sidebar-cart-item-header">
                                    <div class="shop-checkout-sidebar-cart-item-name">{order_item.nazwa}</div>
                                    <div class="shop-checkout-sidebar-cart-item-price">{order_item.wartosc_brutto} {val_order_valuta}</div>
                                </div>
                                <div class="shop-checkout-sidebar-cart-item-detail">
                                    <span class="shop-checkout-sidebar-cart-item-detail-label">{str_subtotal}:</span>
                                    <span class="shop-checkout-sidebar-cart-item-detail-value">{order_item.ilosc}</span>
                                </div>
                                <div class="shop-checkout-sidebar-cart-item-details">
                                    <!-- IF order_item.KOLOR -->
                                    <div class="shop-checkout-sidebar-cart-item-detail">
                                        <span class="shop-checkout-sidebar-cart-item-detail-label">{str_color}:</span>
                                        <span class="shop-checkout-sidebar-cart-item-detail-value">{order_item.kolor}</span>
                                    </div>
                                    <!-- ENDIF -->
                                    <!-- IF order_item.ROZMIAR -->
                                    <div class="shop-checkout-sidebar-cart-item-detail">
                                        <span class="shop-checkout-sidebar-cart-item-detail-label">{str_size}:</span>
                                        <span class="shop-checkout-sidebar-cart-item-detail-value">{order_item.rozmiar}</span>
                                    </div>
                                    <!-- ENDIF -->
                                </div>
                            </li>
                        <!-- ENDIF -->
                    <!-- END order_item -->
                </ul>
                <div class="shop-checkout-sidebar-cart-summary">
                </div>
                <div class="shop-checkout-sidebar-cart-shipping-price">
                    <!-- IF PLATNOSC_CENA > 0 -->
                    + {str_payment_doplata}
                    <!-- ENDIF -->

                    + {str_shop_shipping_to}
                    <!-- IF WYSYLKA_ADRES -->
                        {val_wys_kraj_id}, {val_wys_kod_pocztowy} {val_wys_miasto}
                        <br>{val_wys_adres} {val_wys_dom}:
                    <!-- ELSE -->
                        {val_kraj_id}, {val_kod_pocztowy} {val_miasto}
                        <br>{val_adres} {val_dom}:
                    <!-- ENDIF -->
                    <!-- BEGIN order_item -->
                        <!-- IF order_item.PRODUKT == 0 -->
                            {order_item.wartosc_brutto} {val_order_valuta}
                        <!-- ENDIF -->
                    <!-- END order_item -->
                </div>
                <div class="shop-checkout-sidebar-cart-delivered-by">
                    {str_check_dostawa_logo}<span class="shop-checkout-sidebar-delivered-by-logo shop-checkout-sidebar-delivered-by-{przesylka_id}"></span>
                </div>
                <div class="shop-checkout-sidebar-cart-tax">
                    {str_shop_item_price_gross}
                </div>
                <div class="shop-checkout-sidebar-cart-total">
                    <div class="shop-checkout-sidebar-cart-total-label">
                        {str_total}
                    </div>
                    <div class="shop-checkout-sidebar-cart-total-value">
                        {zamowienie_suma_brutto} {val_order_valuta}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    #profile-menu {
        display: none;
    }
</style>


<!-- IF ORDER_TIME_MIN < 2 -->
<!-- ENDIF -->

<!-- IF ENVIRONMENT == 'prod' -->
<!-- Facebook Pixel Code -->
<script>
<!-- BEGIN order_item -->
    <!-- IF order_item.PRODUKT == 1 -->
    fbq('track', 'Purchase', {
        value: {order_item.cena},
        currency: '{val_order_valuta}',
        content_name: '{order_item.nazwa}',
        content_type: 'product',
        content_ids: '{order_item.id_produktu}',
        num_items: {order_item.ilosc}
        });
    <!-- ENDIF -->
<!-- END order_item -->
</script>

<script>
ttq.track('PlaceAnOrder', {
   content_id: {val_id},
   description: 'Order {val_id}',
   quantity: 1,
   value: '{zamowienie_suma_brutto}',
   currency: '{val_order_valuta}',
});
</script>

<script>
pintrk('track', 'checkout', {
    value: '{zamowienie_suma_brutto}',
    order_quantity: 1,
    currency: '{shop_waluta}'
});
</script>
<!-- ENDIF -->


<!-- IF KLAVIYO -->
<script type="text/javascript">
    var _learnq = _learnq || [];
    _learnq.push(["track", "Placed Order", {
   "token": "{KLAVIYO_API_KEY}",
   "event": "Placed Order",
   "customer_properties": {
     "$email": "{val_email}",
     "$first_name": "{val_imie}",
     "$last_name": "{val_nazwisko}",
     "$phone_number": "{val_telefon}",
     "$address1": "{val_adres} {val_dom}",
     "$address2": "",
     "$city": "{val_miasto}",
     "$zip": "{val_kod_pocztowy}",
     "$region": "",
     "$country": "{val_kraj_id}"
   },
   "properties": {
     "$event_id": "{val_id}",
     "$value": {val_suma_brutto},
     "OrderId": "{val_id}",
     "Categories": [<!-- BEGIN order_item --><!-- IF order_item.PRODUKT -->"{order_item.kategoria_nazwa}", <!-- ENDIF --><!-- END order_item -->],
     "ItemNames": [<!-- BEGIN order_item --><!-- IF order_item.PRODUKT -->"{order_item.nazwa_title}", <!-- ENDIF --><!-- END order_item -->],
     "Brands": ["Winderen"],
     "DiscountCode": "{val_kod_promo}",
     "DiscountValue": 0,
     "StoreLanguage": "{page_lang_name_short}",
     "Items": [<!-- BEGIN order_item --><!-- IF order_item.PRODUKT -->{
         "ProductID": "{order_item.id_produktu}",
         "SKU": "{order_item.id_produktu}",
         "ProductName": "{order_item.nazwa_title}",
         "Quantity": {order_item.ilosc},
         "ItemPrice": {order_item.cena_base},
         "RowTotal": {order_item.wartosc_netto_base},
         "ProductURL": "{page_domain}{order_item.link}",
         "ImageURL": "{page_domain}{order_item.image_src}",
         "Categories": ["{order_item.kategoria_nazwa}"],
         "Brand": "Winderen"}<!-- IF order_item.PRODUKTLAST --><!-- ELSE -->,<!-- ENDIF --><!-- ENDIF --><!-- END order_item -->
     ],
     "BillingAddress": {
       "FirstName": "{val_imie}",
       "LastName": "{val_nazwisko}",
       "Company": "{val_fv_nazwa}",
       "Address1": "{val_fv_adres} {val_fv_dom}",
       "Address2": "",
       "City": "{val_fv_miasto}",
       "Region": "",
       "RegionCode": "",
       "Country": "{val_fv_kraj_id_str}",
       "CountryCode": "{val_fv_kraj_id_iso}",
       "Zip": "{val_fv_kod_pocztowy}",
       "Phone": "{val_telefon}"
     },
     "ShippingAddress": {
       "FirstName": "{val_wys_imie}",
       "LastName": "{val_wys_nazwisko}",
       "Company": "{val_wys_nazwa}",
       "Address1": "{val_wys_adres} {val_wys_dom}",
       "Address2": "",
       "City": "{val_wys_miasto}",
       "Region": "",
       "RegionCode": "",
       "Country": "{val_wys_kraj_id}",
       "CountryCode": "{val_wys_kraj_id_iso}",
       "Zip": "{val_wys_kod_pocztowy}",
       "Phone": "{val_wys_telefon}"
     }
   },
   "time": "{val_add_time}"
}]);
</script>
<script>
const options = {
  method: 'POST',
  headers: {Accept: 'text/html', 'Content-Type': 'application/x-www-form-urlencoded'},
  body: new URLSearchParams({
    data: '{"token": "{KLAVIYO_API_KEY}", "event": "Ordered Product", "customer_properties": {"$email": "{val_email}"}, "properties": <!-- BEGIN order_item --><!-- IF order_item.PRODUKT -->{"item_name": "{order_item.nazwa_title}","$value": {order_item.cena_base}}<!-- ENDIF --><!-- END order_item -->}'
  })
};
fetch('https://a.klaviyo.com/api/track', options)
  .then(response => response.json())
  .then(response => console.log(response))
  .catch(err => console.error(err));
</script>
<!-- ENDIF -->