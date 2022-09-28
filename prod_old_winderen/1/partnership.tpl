
<div class="container">

    <!-- IF LOGGED -->
        <div class="page-container">
                <!-- IF KLIENTRESELER -->

                <div class="container profile-header partnership-top-menu">
                    <div class="row row-flex">
                        <div class="col-7 col-12-sm">
                            <h1 class="page-header-light left">{tytul}</h1>
                        </div>
                        <div class="col-5 col-12-sm right">
                            <div class="partnership-top-menu-link">
                                <a href="{partnership_link}&part=faq">{str_partnership_menu1} / {str_partnership_menu2}</a>
                                <a href="{profil_reseler_link}">{str_partnership_transactions}</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container page-content partnership-content">
                    <div class="container">

                        <div class="row row-flex row-flex-center center">
                            <div class="col-4 col-12-sm partnership-promo partnership-promo-code">
                                <div>
                                    <p>{str_partnership_your_discount_code}</p>
                                    <div class="partnership-promo-code-value">-5%</div>
                                    <p>{str_partnership_for_new_clients}</p>
                                </div>
                                <input type="text" value="{promo_code}" disabled>
                                <small>{str_partnership_your_discount_code_info}</small>
                            </div>
                            <div class="col-4 col-12-sm partnership-promo">
                                <p class="partnership-promo-link-description">{str_partnership_your_link}</p>
                                <input type="text" value="https://winderen.com/?&amp;w={promo_code}" disabled>
                                <small>{str_partnership_your_link_info}</small>
                            </div>
                            <div class="col-4 col-12-sm partnership-promo partnership-promo-link">
                                <p>{str_partnership_account_points1}</p>
                                <div class="highlight-blue" style="font-size:50px; line-height:2em;">{reseler_suma} pkt</div>
                                <a class="button button-primary" href="{profil_reseler_link}">{str_partnership_transactions}</a>

                                <!--
                                <div class="partnership-contest-points">
                                    {reseler_contest_label}
                                    <div class="highlight-yellow" style="font-size:40px; line-height:2em;">
                                        {reseler_contest_suma} pkt
                                    </div>
                                </div>
                                -->
                            </div>
                        </div>

                        {partnership_contest_tresc}

                        {partnershipreseler_tresc}

                        <div class="center">
                            <a href="{partnership_link}&part=terms" style="color:#0290c1; font-size:1.15rem">
                                {str_partnership_terms_link}
                            </a>
                        </div>
                    </div>

                <!-- ELSE -->

                <h1 class="page-header page-header-light">{tytul}</h1>
                <div class="container page-content partnership-content">

                    {partnership_tresc}

                    <div class="partnership-signup-section hidden">
                        <form id="partnership-signup" action="{page_url}" method="post">
                            <h3 class="partnership-section-row-header center">{str_partnership4}</h3>
                            <div class="partnership-signup form-fields form-fields">
                                <div class="form-field form-field-fill <!-- IF PYTANIE1_ERROR -->form-field-error<!-- ENDIF -->">
                                    <p>{str_partnership_p1}</p>
                                </div>
                                <div class="form-field form-field-fill partnership-signup-option-field">
                                    <p class="form-field-error-message">{pytanie1_error}</p>
                                    {pytanie1_checkbox}
                                </div>
                                <div class="form-field form-field-fill <!-- IF PYTANIE2_ERROR -->form-field-error<!-- ENDIF -->">
                                    <p>{str_partnership_p2}</p>
                                </div>
                                <div class="form-field form-field-fill partnership-signup-option-field">
                                    <p class="form-field-error-message">{pytanie2_error}</p>
                                    {pytanie2_checkbox}
                                </div>
                                <div class="form-field form-field-fill">
                                    <label for="kraj_id">{str_kraj}*</label>
                                    {kraj_id_select}
                                </div>
                                <div class="form-notes-field form-field-fill ">
                                    <label for="partnership-facebook-account">{str_partnership_about}</label>
                                    <textarea id="partnership-about" name="omnie" required>{omnie}</textarea>
                                </div>
                                <div class="form-field form-field-fill">
                                    <label for="partnership-facebook-account">{str_partnership_social}</label>
                                    <!--<input type="text" id="partnership-facebook-account" name="fb" value="{fb}">-->
                                </div>

                                <div class="partnership-signup-social">
                                    <div class="row row-flex row-flex-center">
                                        <div class="col-1">
                                            <i class="fab fa-instagram"></i>
                                        </div>
                                        <div class="col-11">
                                            <div class="form-field form-field-fill">
                                                <input type="text" name="insta" value="{insta}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row row-flex row-flex-center">
                                        <div class="col-1">
                                            <i class="fab fa-facebook-square"></i>
                                        </div>
                                        <div class="col-11">
                                            <div class="form-field form-field-fill">
                                                <input type="text" id="partnership-facebook-account" name="fb" value="{fb}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row row-flex row-flex-center">
                                        <div class="col-1">
                                            <i class="fab fa-tiktok"></i>
                                        </div>
                                        <div class="col-11">
                                            <div class="form-field form-field-fill">
                                                <input type="text" name="tiktok" value="{tiktok}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row row-flex row-flex-center">
                                        <div class="col-1">
                                            <i class="fa fa-globe"></i>
                                        </div>
                                        <div class="col-11">
                                            <div class="form-field form-field-fill">
                                                <input type="text" name="www" value="{www}">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <input type="hidden" id="partnership-conditions-field" name="regulamin" value="1">
                                <input type="hidden" name="linkedin" id="linkedin" value="{linkedin}" placeholder="">
                                <input type="hidden" name="email2" value="" />
                                <input type="hidden" name="form_time" value="0" />
                                <input type="hidden" value="{csrf}" name="csrf">
                                <div class="form-field form-field-fill center">
                                    <input type="submit" class="button button-primary" value="{str_send}">
                                </div>
                            </div>
                        </form>
                    </div>
                <!-- ENDIF -->
            </div>
        </div>

    <!-- ELSE -->

        <div class="profile-container-offset"></div>
        <div class="profile-container">
            <h1 class="profile-header">{str_loginh1}</h1>
            <div class="profile-body-container">
                <div class="profile-body profile-login-body">
                    <p class="profile-login-body-text">{str_partnership1}</p>
                    <p class="profile-login-body-text">{str_partnership2}</p>
                    <!-- INCLUDE 1/inc/login.tpl -->
                </div>
            </div>
        </div>

    <!-- ENDIF -->
</div>

<!-- IF LOGGED -->
<script>
$('.partnership-apply-button').click(function (e) {
    e.preventDefault();
    $('.partnership-signup-section').removeClass('hidden');
});

var copyTextareaBtn = document.querySelector('.w30 input');
copyTextareaBtn.addEventListener('click', function(event) {
   var copyTextarea = document.querySelector('.w30 input');
   copyTextarea.select();
   try {
      var successful = document.execCommand('copy');
      var msg = successful ? 'successful' : 'unsuccessful';
      console.log('Copying text command was ' + msg);
   } catch (err) {
      console.log('Oops, unable to copy');
   }
});
</script>
<!-- ENDIF -->