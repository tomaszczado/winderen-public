<div class="form-field <!-- IF IMIE_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-first-name">{str_imie}*</label>
    <input type="text" id="shop-checkout-address-first-name" name="imie" value="{imie}" autocomplete="given-name" required minlength="2" maxlength="64">
    <p class="form-field-error-message">{imie_error}</p>
</div>
<div class="form-field <!-- IF NAZWISKO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-last-name">{str_nazwisko}*</label>
    <input type="text" id="shop-checkout-address-last-name" name="nazwisko" value="{nazwisko}" autocomplete="family-name" required minlength="2" maxlength="64">
    <p class="form-field-error-message">{nazwisko_error}</p>
</div>
<div class="form-field <!-- IF EMAIL_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-email">{str_email}*</label>
    <input type="email" id="shop-checkout-address-email" name="email" value="{email}" autocomplete="email" required>
    <p class="form-field-error-message">{email_error}</p>
</div>
<div class="form-field <!-- IF TELEFON_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-phone">{str_telefon}*</label>
    <input type="text" id="shop-checkout-address-phone" name="telefon" value="{telefon}" autocomplete="tel" required>
    <div class="form-field-info-message">{str_telefon_info}</div>
    <p class="form-field-error-message">{telefon_error}</p>
</div>
<div class="form-field <!-- IF KRAJ_ID_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="kraj_id">{str_kraj}*</label>
    {kraj_id_select}
    <p class="form-field-error-message">{kraj_id_error}</p>
</div>

<div class="form-field">&nbsp;</div>

<div class="form-field form-field-30 <!-- IF KOD_POCZTOWY_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-postcode">{str_kodpocztowy}*</label>
    <input type="text" id="shop-checkout-address-postcode" name="kod_pocztowy" value="{kod_pocztowy}" autocomplete="postal-code" required>
    <p class="form-field-error-message">{kod_pocztowy_error}</p>
</div>
<div class="form-field form-field-70 <!-- IF MIASTO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-city">{str_miasto}*</label>
    <input type="text" id="shop-checkout-address-city" name="miasto" value="{miasto}" autocomplete="city" required>
    <p class="form-field-error-message">{miasto_error}</p>
</div>
<div class="form-field form-field-70 <!-- IF ADRES_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-street">{str_ulica}*</label>
    <input type="text" id="shop-checkout-address-street" name="adres" value="{adres}" autocomplete="address-line1" required>
    <p class="form-field-error-message">{adres_error}</p>
</div>
<div class="form-field form-field-30 <!-- IF DOM_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-dom">{str_dom}</label>
    <input type="text" id="shop-checkout-address-dom" name="dom" value="{dom}" autocomplete="address-line2">
    <p class="form-field-error-message">{dom_error}</p>
</div>