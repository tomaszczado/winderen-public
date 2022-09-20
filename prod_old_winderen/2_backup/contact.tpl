<!-- IF CONTACT_PERSON -->
    <!-- INCLUDE 1/contact_person.tpl -->
<!-- ELSE -->
<div class="container">
<div class="contact-container">
    <h1 class="page-header">Winderen Headquarters</h1>
    <div class="contact-logo">
        <img src="{template_images}contact/headquarter.jpg" alt="{firma_nazwa}">
    </div>
    <div class="contact-body-container">
        <div class="contact-body">
            <!-- IF FORMSEND -->
                <h2>{contact_aftersend}</h3>
            <!-- ENDIF -->

            <!-- IF FORMSEND_ERROR -->
                <h2>Błąd przy wysyłaniu wiadomości</h2>
                <p>Prosimy o kontakt z administratorem strony</p>
            <!-- ENDIF -->

            <!-- IF FORM -->
                <div class="contact-body-column">
                    <h2>{str_contact}</h2>
                    <ul class="contact-lines">
                        <li class="lead">{firma_nazwa}</li>
                        <li>{firma_adres}<br>{firma_miasto_kod} {firma_miasto}<br>{firma_kraj}</li>
                        <li>{str_nip}: {firma_nip}</li>
                        <li><a href="mailto:contact@winderen.com">contact@winderen.com</a></li>
                        <li>{str_telefon}: <a href="tel:{firma_telefon}">{firma_telefon}</a></li>
                    </ul>

                    <h2>{str_dzial_sprzedazy}</h2>
                    <ul class="contact-lines">
                        <li><a href="mailto:sales@winderen.com">sales@winderen.com</a></li>
                        <li>{str_telefon}: <a href="tel:+48666111266">+48 666 111 266</a></li>
                    </ul>
                </div>
                <div class="contact-body-column">
                    <form action="{page_url}#contact" method="post">
                        <div class="form-fields">
                            <div class="form-field form-field-fill <!-- IF NAME_ERROR -->form-field-error<!-- ENDIF -->">
                                <label for="contact-form-name">{str_imie}*</label>
                                <input type="text" id="contact-form-name" name="name" value="{name}" required>
                                <p class="form-field-error-message">{name_error}</p>
                            </div>
                            <div class="form-field form-field-fill <!-- IF EMAIL_ERROR -->form-field-error<!-- ENDIF -->">
                                <label for="contact-form-email">{str_email}*</label>
                                <input type="email" id="contact-form-email" name="email" value="{email}" required>
                                <p class="form-field-error-message">{email_error}</p>
                            </div>
                            <div class="form-notes-field form-field-fill <!-- IF MESSAGE_ERROR -->form-field-error<!-- ENDIF -->">
                                <label for="contact-form-message">{str_message}</label>
                                <textarea id="contact-form-message" name="message">{message}</textarea>
                                <p class="form-field-error-message">{message_error}</p>
                            </div>
                            <!-- IF CAPTCHA -->
                                <div class="form-field form-field-fill <!-- IF CAPTCHA_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="contact-form-captcha"><img src="admin/plugins/captcha/captcha.php" /></label>
                                    <input type="text" name="captcha" id="contact-form-captcha" placeholder="Wpisz powyższy kod" />
                                    <p class="form-field-error-message">{captcha_error}</p>
                                </div>
                            <!-- ENDIF -->
                        </div>
                        <div class="contact-form-actions">
                            <input type="hidden" value="{csrf}" name="csrf">
                            <input type="hidden" name="form_time" value="0" />
                            <script type="text/javascript">
                                var incrementInterval;
                                $(document).ready(function () {
                                    incrementInterval = setInterval('incrementDisplayTime()', 1000);

                                    $('#contact-form-message').keyup(function (e) {
                                        if (this.scrollHeight > 100) {
                                            this.style.height = 'auto';
                                            this.style.height = this.scrollHeight + 'px';
                                        }
                                    });
                                });
                                function incrementDisplayTime() {
                                    $('form input[type="hidden"][name="form_time"]').each(function() {
                                        $(this).val(parseInt($(this).val()) + 1);
                                    });
                                }
                            </script>
                            <input type="submit" class="button button-primary" value="{str_send}">
                        </div>
                    </form>
                </div>
            <!-- ENDIF -->
            <div class="link-button-container">
                <a href="{contact_link}" class="button button-secondary">{str_contact_info}</a>
            </div>
        </div>
    </div>
</div>
</div>
<!-- ENDIF -->


<!-- IF CONTACT_PERSON_ID == 3 -->

    <!-- Messenger Chat plugin Code -->
    <div id="fb-root"></div>

    <!-- Your Chat plugin code -->
    <div id="fb-customer-chat" class="fb-customerchat" page_id="103369825791507">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "103369825791507");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v14.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>

<!-- ELSEIF CONTACT_PERSON_ID == 4 -->

    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                xfbml: true,
                version: 'v7.0'
            });
        };
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <!-- Your Chat Plugin code -->
    <div class="fb-customerchat" attribution=setup_tool page_id="102379511525335">
    </div>

<!-- ELSE -->

    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

    <!-- Your customer chat code -->
    <div class="fb-customerchat"
    attribution="setup_tool"
    page_id="287898658300371">
    </div>

<!-- ENDIF -->

