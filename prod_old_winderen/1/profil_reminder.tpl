<!-- IF REMINDERHASLO -->

<!-- INCLUDE 1/profil_password.tpl -->

<!-- ELSE -->
<div class="container">
    <div class="profile-container">
        <h1 class="profile-header">{str_reminder}</h1>
        <div class="profile-body-container">
            <div class="profile-body profile-login-body">
                <form action="{page_url}" method="post">
                    <div class="form-fields">
                        <div class="form-field form-field-fill <!-- IF EMAIL_ERROR -->form-field-error<!-- ENDIF -->">
                            <label for="profile-login-email">{str_email}*</label>
                            <input type="text" id="profile-login-email" name="email" value="{email}" required>
                            <p class="form-field-error-message">{email_error}</p>
                            <!-- IF REMINDERSTATUS == 1 -->
                                <p class="form-field-success-message">{msg_remind_send}</p>
                            <!-- ENDIF -->
                            <p>{str_reminder_info}</p>
                        </div>
                    </div>
                    <div class="profile-actions">
                        <input type="submit" class="button button-primary profile-actions-button-fill" value="{str_send}">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->