<form action="{page_url}" method="post">
    <div class="form-fields">
        <div class="form-field form-field-fill <!-- IF KLIENT_LOGIN_STATUS == '0' -->form-field-error<!-- ENDIF -->">
            <label for="profile-login-email">{str_email}*</label>
            <input type="text" id="profile-login-email" name="klient_login" value="{klient_login}" autocomplete="email" required>
            <p class="form-field-error-message">{str_login_error}</p>
        </div>
        <div class="form-field form-field-fill <!-- IF KLIENT_LOGIN_STATUS == '0' -->form-field-error<!-- ENDIF -->">
            <label for="profile-login-password">{str_password}*</label>
            <input type="password" id="profile-login-password" name="klient_password" required>
            <p class="form-field-error-message">{klient_password_error}</p>
        </div>
    </div>
    <div class="profile-actions">
        <input type="hidden" name="klient_checkout" value="1" />
        <input type="submit" class="button button-primary profile-actions-button-fill" value="{str_signin}">
    </div>
    <div class="profile-login-links">
        <a href="{profil_reminder_link}">{str_lostpass}</a>
        <!-- IF PARTNERSHIP_ACTIVE -->
        <a class="profile-login-link-create-account" href="{profil_edit_link}">{str_noaccount}</a>
        <!-- ENDIF -->
    </div>
</form>