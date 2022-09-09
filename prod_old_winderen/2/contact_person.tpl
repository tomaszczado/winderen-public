<div class="container">
    <div class="contact-container">
        <h1 class="page-header">{str_contact_info}</h1>
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
                    <img class="profile-image" src="{template_images}/contact/contact{contact_id}.png" alt="{contact_author_nazwa}" />
                        <!--<h3>{contact_author_nazwa}</h3>-->
                        <div class="job-title">Customer support</div>
                        <ul class="contact-lines">
                            <li><a href="mailto:{contact_author_email}">{contact_author_email}</a></li>
                            <!-- IF CONTACT_PERSON_TELEFON -->
                            <li><i class="fa fa-phone" aria-hidden="true"></i> <a href="tel:{contact_author_telefon_clear}">{contact_author_telefon}</a></li>
                            <!-- ENDIF -->
                            <li class="contact-lines-wa"><i class="fa fa-whatsapp" aria-hidden="true"></i> <a href="https://wa.me/{contact_author_telefon_clear}">{contact_author_telefon}</a></li>
                            <li>{contact_author_adres}</li>
                        </ul>
                    </div>
                    <div class="contact-body-column">
                        <div class="contact-body-heading">{str_contact_heading}</div>
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
                                <input type="hidden" name="contact_person" value="1" />
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
            </div>
        </div>
        <div class="contact-help-container-title">{str_contact_need_help}</div>
        <div class="contact-help-container">
            <!-- BEGIN lcontact -->
            <a href="{lcontact.link}">
                <div class="contact-help-tile">
                    <object data="{template_images}contact/{lcontact.label}.svg">{lcontact.tytul}</object>
                    <div class="contact-help-tile-label">{lcontact.tytul}</div>
                </div>
            </a>
            <!-- END lcontact -->
            <a href="{page_domain}news/">
                <div class="contact-help-tile">
                    <object data="{template_images}contact/strefa_wiedzy.svg">{str_strefa_wiedzy}</object>
                    <div class="contact-help-tile-label">{str_strefa_wiedzy}</div>
                </div>
            </a>
            <a href="{page_domain}legal/">
                <div class="contact-help-tile">
                    <object data="{template_images}contact/returns.svg">{str_return_policy}</object>
                    <div class="contact-help-tile-label">{str_refund}</div>
                </div>
            </a>
        </div>
        <div class="link-button-container">
            <a href="{contact_link}&hq=1" class="button button-secondary">{str_hq_contact}</a>
        </div>
    </div>
</div>
