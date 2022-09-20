<!-- IF ORDER_SHOW -->
    <h1>{str_order_details} {val_id}</h1>
    <div class="profile-order-details-status-info <!-- IF STATUSID == 4 -->payment<!-- ENDIF --> <!-- IF STATUSID == 2 -->in-progress<!-- ENDIF --> <!-- IF STATUSID == 10 -->sent<!-- ENDIF -->">
        <h3>{str_order_status}: {val_status}</h3>
        <!-- IF POKAZ_DATA_WYSLANIA -->
            <p>{str_order_datasend}: {val_przesylka_wyslana}</p>
        <!-- ENDIF -->
    </div>
    <div class="row profile-order-details-row">
        <div class="row">
            <div class="col-3 col-12-sm col-name">
                {str_order_data}
            </div>
            <div class="col-9 col-12-sm col-value">
                {val_add_time}
            </div>
        </div>
        <div class="row">
            <div class="col-3 col-12-sm col-name">
                {str_order_details_shipping_address}
            </div>
            <div class="col-9 col-12-sm col-value">
                {val_wys_nazwa} {val_wys_imie} {val_wys_nazwisko}
                {val_wys_adres} {val_wys_dom}
                {val_wys_kod_pocztowy} {val_wys_miasto}
                {val_wys_kraj_id}
            </div>
        </div>

        <div class="row">
            <div class="col-3 col-12-sm col-name">
                {str_order_details_address}
            </div>
            <div class="col-9 col-12-sm col-value">
                {val_nazwa} {val_imie} {val_nazwisko}
                {val_adres} {val_dom}
                {val_kod_pocztowy} {val_miasto}
                {val_kraj_id}
            </div>
        </div>

        <div class="row">
            <div class="col-3 col-12-sm col-name">
                {str_order_platnosc}
            </div>
            <div class="col-9 col-12-sm col-value">
                {platnosc_nazwa}
            </div>
        </div>

        <div class="row">
            <div class="col-3 col-12-sm col-name">
                {str_order_dostawa}
            </div>
            <div class="col-9 col-12-sm col-value">
                {przesylka_dostawca}
            </div>
        </div>

        <div class="row">
            <div class="col-3 col-12-sm col-name">
                {str_order_tracking_code}
            </div>
            <div class="col-9 col-12-sm col-value">
                <!-- IF POKAZ_NUMER_PRZESYLKI -->
                <a href="{przesylka_link}" target="_blank">{val_przesylka_nr}</a>
                <!-- ELSE -->
                {str_order_tracking_code_unavailable}
                <!-- ENDIF -->
            </div>
        </div>
    </div>
    <table class="table profile-order-details-table profile-order-details-shipping hide">
        <thead>
            <tr>
                <!-- IF WYSYLKA_ADRES -->
                    <th>{str_order_details_shipping_address}</th>
                <!-- ENDIF -->
                    <th>{str_order_details_address}</th>
                <!-- IF FAKTURA_VAT -->
                    <th>{str_order_details_invoice}</th>
                <!-- ENDIF -->
            </tr>
        </thead>
        <tbody>
            <tr>
                 <!-- IF WYSYLKA_ADRES -->
                    <td>
                        {val_wys_nazwa} {val_wys_imie} {val_wys_nazwisko} <br />
                        {val_wys_adres} {val_wys_dom} <br />
                        {val_wys_kod_pocztowy} {val_wys_miasto} <br />
                        {val_wys_kraj_id}
                    </td>
                <!-- ENDIF -->
                <td>
                    {val_nazwa} {val_imie} {val_nazwisko} <br />
                    {val_adres} {val_dom} <br />
                    {val_kod_pocztowy} {val_miasto}<br />
                    {val_kraj_id}<br />
                </td>
                <!-- IF FAKTURA_VAT -->
                    <td>
                        {val_faktura_dane}
                    </td>
                <!-- ENDIF -->
            </tr>
        </tbody>
    </table>
    <table class="table profile-order-details-table profile-order-details-shipping-provider hide">
        <thead>
            <tr>
                <th>{str_order_details_shipping_provider}</th>
                <th>{str_order_tracking_code}</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>{str_order_details_shipping_provider}</td>
                <!-- IF POKAZ_NUMER_PRZESYLKI -->
                <td><a href="{przesylka_link}" target="_blank">{val_przesylka_nr}</a></td>
                <!-- ELSE -->
                <td>{str_order_tracking_code_unavailable}</td>
                <!-- ENDIF -->
            </tr>
        </tbody>
    </table>


    <table class="table profile-order-details-table profile-order-details-items">
        <thead>
            <tr>
                <th>{str_order_details_product}</th>
                <th class="center">{str_order_details_quantity}</th>
                <!-- IF ORDERS_KLIENT_TYP == 3 -->
                <th class="center">{str_order_details_price}</th>
                <th class="center">{str_order_details_vat}</th>
                <!-- ENDIF -->
                <!-- IF ORDERS_NETTO -->
                <th class="right">{str_order_details_price}</th>
                <!-- ELSE -->
                <th class="right">{str_order_details_gross_price}</th>
                <!-- ENDIF -->
            </tr>
        </thead>
        <tbody>
            <!-- BEGIN order_item -->
                <tr>
                    <td>
                        <a href="{order_item.link}">{order_item.nazwa}</a>
                    </td>
                    <td class="center">{order_item.ilosc}</td>
                    <!-- IF ORDERS_KLIENT_TYP == 3 -->
                    <td class="right">{order_item.cena} {val_order_valuta}</td>
                    <td class="center">{order_item.vat}%</td>
                    <!-- ENDIF -->
                    <td class="right">{order_item.wartosc_brutto} {val_order_valuta}</td>
                </tr>
            <!-- END order_item -->
        </tbody>
    </table>
    <div class="profile-order-details-total-price">
        {str_total}: {zamowienie_suma_brutto} {val_order_valuta}
    </div>

	<!-- IF PLATNOSCID == 4 && STATUSID < 5 && LOGGED -->
    <a class="button button-transparent" target="_blank" href="{page_lang_name_short}/profil_orders/{GETID}/2/">
        {str_order_proforma}
        <img src="{template_images}button/button-pdf.png" height="37" alt="PDF" style="vertical-align:middle; padding: 5px">
    </a>
    <!-- ENDIF -->

    <!-- IF STATUSID > 4 && LOGGED && ORDERS_UE == 1 -->
    <a class="button button-transparent" target="_blank" href="{page_lang_name_short}/profil_orders/{GETID}&pdffv=1">
        {str_faktura}
        <img src="{template_images}button/button-pdf.png" height="37" alt="PDF" style="vertical-align:middle; padding: 5px">
    </a>
    <!-- ENDIF -->

    <a name="payment"></a>
    <div class="profile-order-update-payment-container">
        <div class="profile-order-update-payment">
            <div class="shop-checkout-payment-header">
                <i class="fa fa-credit-card"></i> {str_order_platnosc}: <strong>{platnosc_nazwa}</strong>
            </div>
        </div>
    </div>

    <!-- IF STATUSID == 4 -->
        <!-- IF ORDER_UPDATE_PAYMENT -->
            <!-- INCLUDE 1/profil_orders/order_update_payment.tpl -->
        <!-- ENDIF -->
    <!-- ENDIF -->

<!-- ENDIF -->
