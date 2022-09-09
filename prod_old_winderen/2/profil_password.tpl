<div class="profile-body-container">
    <div class="profile-body profile-body-narrow">
        <h1>{str_change_password}</h1>
        <form action="{page_url}" method="post">
            <div class="form-fields">
                <div class="form-field form-field-fill <!-- IF PASSWORD_1_ERROR -->form-field-error<!-- ENDIF -->">
                    <label for="profile-password-field">{str_password}*</label>
                    <input type="password" id="profile-password-field" name="password_1" required>
                    <p class="form-field-error-message">{password_1_error}</p>
                </div>
                <div class="form-field form-field-fill <!-- IF PASSWORD_2_ERROR -->form-field-error<!-- ENDIF -->">
                    <label for="profile-password-repeat-field">{str_password2}*</label>
                    <input type="password" id="profile-password-repeat-field" name="password_2" required>
                    <p class="form-field-error-message">{password_2_error}</p>
                </div>
            </div>
            <div class="profile-actions">
                <input type="submit" class="button button-primary profile-actions-button-fill" value="{str_save}">
            </div>
        </form>
    </div>
</div>
