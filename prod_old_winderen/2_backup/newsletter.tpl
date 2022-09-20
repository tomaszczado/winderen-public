<div class="profile-body-container">
    <div class="profile-body profile-body-narrow">
        <h1>Newsletter</h1>
        <p class="profile-newsletter-body-text">{str_newsletter_info}</p>
        <form action="{page_url}" method="post">
            <div class="form-fields">
                <div class="form-field form-field-fill <!-- IF NEWSLETTER_MAIL_ERROR -->form-field-error<!-- ENDIF -->">
                    <label for="profile-newsletter-mail-field">{str_email}*</label>
                    <input type="email" id="profile-newsletter-mail-field" name="newsletter_mail" value="{newsletter_mail}" autocomplete="email" required>
                    <p class="form-field-error-message">{newsletter_mail_error}</p>
                </div>
            </div>
            <div class="profile-actions">
                <input type="submit" class="button button-primary profile-actions-button-fill" value="{str_save}">
            </div>
        </form>
    </div>
</div>
