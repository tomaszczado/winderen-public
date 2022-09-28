<div class="form-field <!-- IF IMIE_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-first-name">{str_imie}*</label>
    <input type="text" id="shop-checkout-address-first-name" name="imie" value="{imie}" autocomplete="given-name" required minlength="2" maxlength="64" pattern="[^()/><\][\\\x22,;|$]+">
    <p class="form-field-error-message">{imie_error}</p>
</div>
<div class="form-field <!-- IF NAZWISKO_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-last-name">{str_nazwisko}*</label>
    <input type="text" id="shop-checkout-address-last-name" name="nazwisko" value="{nazwisko}" autocomplete="family-name" required minlength="2" maxlength="64" pattern="[^()/><\][\\\x22,;|$]+">
    <p class="form-field-error-message">{nazwisko_error}</p>
</div>
<div class="form-field <!-- IF EMAIL_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-address-email">{str_email}*</label>
    <input type="email" id="shop-checkout-address-email" name="email" value="{email}" autocomplete="email" required>
    <p class="form-field-error-message">{email_error}</p>
</div>
<div class="form-field"></div>
<div class="form-field <!-- IF PASSWORD_1_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-password-1">{str_password}<span>*</span></label>
    <input id="shop-checkout-password-1" type="password" name="password_1" />
    <p class="form-field-error-message">{password_1_error}</p>
</div>
<div class="form-field <!-- IF PASSWORD_2_ERROR -->form-field-error<!-- ENDIF -->">
    <label for="shop-checkout-password-2">{str_password2}<span>*</span></label>
    <input id="shop-checkout-password-2" type="password" name="password_2" />
    <p class="form-field-error-message">{password_2_error}</p>
    <!-- IF POLECENIE -->
        <input type="hidden" name="id_klient" value="{polecenie_id}">
    <!-- ENDIF -->
</div>
<div class="form-field form-field-fill form-option-field">
    <input type="checkbox" id="shop-checkout-newsletter-option" name="newsletter" value="1" {newsletter_checked}>
    <label for="shop-checkout-newsletter-option">
        {str_check_nl}
    </label>
</div>
<div class="form-field form-field-fill form-option-field <!-- IF REGULAMIN_ERROR -->form-field-error<!-- ENDIF -->">
    <input type="checkbox" id="shop-checkout-tos-option" name="regulamin" value="1" {regulamin_checked} required>
    <label for="shop-checkout-tos-option">
        {str_regulaminy_konto}
    </label>
    <p class="form-field-error-message">{regulamin_error}</p>
</div>