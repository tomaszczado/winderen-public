<div class="shop-checkout-info">
    {str_drop_fv}
</div>

<div class="form-field <!-- IF DROP_IMIE_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dropshipping-first-name">{str_imie}*</label>
    <input type="text" id="shop-checkout-address-dropshipping-first-name" name="drop_imie" value="{drop_imie}" autocomplete="given-name">
    <p class="form-field-error-message">{drop_imie_error}</p>
</div>
<div class="form-field <!-- IF DROP_NAZWISKO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dropshipping-last-name">{str_nazwisko}*</label>
    <input type="text" id="shop-checkout-address-dropshipping-last-name" name="drop_nazwisko" value="{drop_nazwisko}" autocomplete="family-name">
    <p class="form-field-error-message">{drop_nazwisko_error}</p>
</div>
<div class="form-field <!-- IF DROP_TELEFON_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dropshipping-phone">{str_telefon}*</label>
    <input type="text" id="shop-checkout-address-dropshipping-phone" name="drop_telefon" value="{drop_telefon}">
    <div class="form-field-info-message">{str_telefon_info}</div>
    <p class="form-field-error-message">{drop_telefon_error}</p>
</div>
<div class="form-field <!-- IF DROP_KRAJ_ID_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="drop_kraj_id">{str_kraj}*</label>
    {drop_kraj_id_select}
    <p class="form-field-error-message">{drop_kraj_id_error}</p>
</div>

<div class="form-field form-field-30 <!-- IF DROP_KOD_POCZTOWY_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dropshipping-postcode">{str_kodpocztowy}*</label>
    <input type="text" id="shop-checkout-address-dropshipping-postcode" name="drop_kod_pocztowy" value="{drop_kod_pocztowy}" autocomplete="postal-code">
    <p class="form-field-error-message">{drop_kod_pocztowy_error}</p>
</div>
<div class="form-field form-field-70 <!-- IF DROP_MIASTO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dropshipping-city">{str_miasto}*</label>
    <input type="text" id="shop-checkout-address-dropshipping-city" name="drop_miasto" value="{drop_miasto}" autocomplete="address-level2">
    <p class="form-field-error-message">{drop_miasto_error}</p>
</div>
<div class="form-field form-field-70 <!-- IF DROP_ADRES_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dropshipping-street">{str_ulica}*</label>
    <input type="text" id="shop-checkout-address-dropshipping-street" name="drop_adres" value="{drop_adres}" autocomplete="address-line1">
    <p class="form-field-error-message">{drop_adres_error}</p>
</div>
<div class="form-field form-field-30 <!-- IF DROP_DOM_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dropshipping-street">{str_dom}</label>
    <input type="text" id="shop-checkout-address-dropshipping-dom" name="drop_dom" value="{drop_dom}" autocomplete="address-line2">
    <p class="form-field-error-message">{drop_dom_error}</p>
</div>