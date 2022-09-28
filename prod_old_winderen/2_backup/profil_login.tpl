<div class="container">
    <div class="profile-container">
        <h1 class="profile-header">{str_loginh1}</h1>
        <div class="row row-flex profile-body-row">

            <div class="col-1 col-12-sm"></div>

            <div class="col-5 col-12-sm">
                <div class="profile-body-container">
                    <div class="profile-body profile-login-body">
                        <h3>{str_account0}</h3>
                        <a href="{profil_edit_link}" class="button button-primary profile-actions-button-fill center">
                            {str_noaccount}
                        </a>
                        <p>{str_noaccount1}:</p>
                        <ul class="accountinfo">
                            <li>{str_noaccount2}</li>
                            <li>{str_noaccount3}</li>
                            <li>{str_noaccount4}</li>
                        </ul>
                        <!-- IF SHOP_CHECKOUT_ACTIVE -->
                        <form name="authnopass" id="authnopass" action="{page_url}" method="post">
                            <div class="profile-actions">
                                <input type="hidden" name="klient_authnopass" value="1" />
                                <input type="submit" class="button button-primary profile-actions-button-fill" value="{str_kupbezkonta}">
                            </div>
                        </form>
                        <!-- ENDIF -->
                    </div>
                </div>

            </div>
            <div class="col-5 col-12-sm bg-grey">

                    <div class="profile-body-container">
                        <div class="profile-body profile-login-body">
                            <h3>{str_account1}</h3>
                            <!-- INCLUDE 1/inc/login.tpl -->
                        </div>
                    </div>

            </div>
            <div class="col-1 col-12-sm"></div>
        </div>
    </div>
</div>
