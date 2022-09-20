<!-- IF SHOW_FORM -->
    <div class="profile-body-container">
        <div class="profile-body">
            <form action="{page_url}" method="post">
                <!-- IF LOGGED -->
                    <h1>{str_account_contact}</h1>
                    <div class="form-fields profile-edit-section">
                        <!-- INCLUDE 1/forms/user_fields.tpl -->
                        <input id="password_1" type="hidden" name="password_1" />
                    </div>
                    <h1>{str_account_firma}</h1>
                    <div class="form-fields profile-edit-section">
                        <!-- INCLUDE 1/forms/invoice_fields.tpl -->
                    </div>
                    <div class="profile-actions">
                        <input type="submit" class="button button-primary profile-actions-save" value="{str_save}">
                    </div>
                <!-- ELSE -->
                    <h1>{str_new_account}</h1>
                    <div class="form-fields profile-edit-section">
                        <!-- INCLUDE 1/forms/create_account_fields.tpl -->
                    </div>
                    <div class="profile-actions">
                        <input type="submit" class="button button-primary profile-actions-save" value="{str_save}">
                    </div>
                <!-- ENDIF -->
            </form>
        </div>
    </div>
<!-- ELSE -->
    <h1 class="profile-header">{str_new_account}</h1>
    <div class="profile-body-container">
        <div class="profile-body profile-create-account center">
            <h2>{str_new_account_thx}</h2>
            <div class="profile-create-account-actions">
                <a href="{page_domain}welcome" class="button button-primary profile-create-account-button-to-shop">{str_go_to_shop}</a>
                <a href="{profil_edit_link}" class="button button-transparent">{str_profile_new_account_to_settings}</a>
            </div>
        </div>
    </div>

    <style>
        #profile-menu {
            display: none;
        }
    </style>
<!-- ENDIF -->