<div class="form-field <!-- IF FV_KRAJ_ID_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="fv_kraj_id">{str_kraj}*</label>
    {fv_kraj_id_select}
    <p class="form-field-error-message">{fv_kraj_id_error}</p>
</div>
<div class="form-field">&nbsp;</div>

<div class="form-field <!-- IF NAZWA_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-invoice-company">{str_firma}*</label>
    <input type="text" id="shop-checkout-address-invoice-company" name="nazwa" value="{nazwa}">
    <p class="form-field-error-message">{nazwa_error}</p>
</div>
<div class="form-field <!-- IF NIP_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-invoice-nip">{str_nip}* <span class="shop-checkout-address-invoice-nip-tip"></span></label>
    <input type="text" id="shop-checkout-address-invoice-nip" name="nip" value="{nip}" {nip_pattern}>
    <p class="form-field-error-message">{nip_error}</p>
</div>

<div class="form-field form-field-30<!-- IF FV_KOD_POCZTOWY_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-invoice-postcode">{str_kodpocztowy}*</label>
    <input type="text" id="shop-checkout-address-invoice-postcode" name="fv_kod_pocztowy" value="{fv_kod_pocztowy}">
    <p class="form-field-error-message">{fv_kod_pocztowy_error}</p>
</div>

<div class="form-field form-field-70 <!-- IF FV_MIASTO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-invoice-city">{str_miasto}*</label>
    <input type="text" id="shop-checkout-address-invoice-city" name="fv_miasto" value="{fv_miasto}">
    <p class="form-field-error-message">{fv_miasto_error}</p>
</div>

<div class="form-field form-field-70 <!-- IF FV_ADRES_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-invoice-street">{str_ulica}*</label>
    <input type="text" id="shop-checkout-address-invoice-street" name="fv_adres" value="{fv_adres}">
    <p class="form-field-error-message">{fv_adres_error}</p>
</div>
<div class="form-field form-field-30 <!-- IF FV_DOM_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-invoice-dom">{str_dom}</label>
    <input type="text" id="shop-checkout-address-invoice-dom" name="fv_dom" value="{fv_dom}">
    <p class="form-field-error-message">{fv_dom_error}</p>
</div>
