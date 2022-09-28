<div class="shop-checkout-info">
    {str_drop_dokument}
</div>

<div class="form-field <!-- IF WYS_IMIE_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-shipping-first-name">{str_imie}*</label>
    <input type="text" id="shop-checkout-address-shipping-first-name" name="wys_imie" value="{wys_imie}" autocomplete="given-name">
    <p class="form-field-error-message">{wys_imie_error}</p>
</div>
<div class="form-field <!-- IF WYS_NAZWISKO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-shipping-last-name">{str_nazwisko}*</label>
    <input type="text" id="shop-checkout-address-shipping-last-name" name="wys_nazwisko" value="{wys_nazwisko}" autocomplete="family-name">
    <p class="form-field-error-message">{wys_nazwisko_error}</p>
</div>
<div class="form-field <!-- IF WYS_TELEFON_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-shipping-phone">{str_telefon}*</label>
    <input type="text" id="shop-checkout-address-shipping-phone" name="wys_telefon" value="{wys_telefon}">
    <div class="form-field-info-message">{str_telefon_info}</div>
    <p class="form-field-error-message">{wys_telefon_error}</p>
</div>
<div class="form-field <!-- IF WYS_KRAJ_ID_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="wys_kraj_id">{str_kraj}*</label>
    {wys_kraj_id_select}
    <p class="form-field-error-message">{wys_kraj_id_error}</p>
</div>

<div class="form-field form-field-30 <!-- IF WYS_KOD_POCZTOWY_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-shipping-postcode">{str_kodpocztowy}*</label>
    <input type="text" id="shop-checkout-address-shipping-postcode" name="wys_kod_pocztowy" value="{wys_kod_pocztowy}" autocomplete="postal-code">
    <p class="form-field-error-message">{wys_kod_pocztowy_error}</p>
</div>
<div class="form-field form-field-70 <!-- IF WYS_MIASTO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-shipping-city">{str_miasto}*</label>
    <input type="text" id="shop-checkout-address-shipping-city" name="wys_miasto" value="{wys_miasto}" autocomplete="address-level2">
    <p class="form-field-error-message">{wys_miasto_error}</p>
</div>
<div class="form-field form-field-70 <!-- IF WYS_ADRES_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-shipping-street">{str_ulica}*</label>
    <input type="text" id="shop-checkout-address-shipping-street" name="wys_adres" value="{wys_adres}" autocomplete="address-line1">
    <p class="form-field-error-message">{wys_adres_error}</p>
</div>
<div class="form-field form-field-30 <!-- IF WYS_DOM_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-shipping-street">{str_dom}</label>
    <input type="text" id="shop-checkout-address-shipping-dom" name="wys_dom" value="{wys_dom}" autocomplete="address-line2">
    <p class="form-field-error-message">{wys_dom_error}</p>
</div>