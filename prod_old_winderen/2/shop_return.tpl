
<div class="container">
    <div class="page-container-offset"></div>
    <div class="page-container">
        <h1 class="page-header shop-rent-header">{str_return_title}</h1>
        <div class="container page-content shop-rent-content">
            <div class="row">
                <!-- IF FORMSEND -->
                   <h3 class="center"><i class="fa fa-check-circle" aria-hidden="true"></i>{contact_aftersend}</h3>
                <!-- ENDIF -->
                <!-- IF FORMSEND_ERROR -->
                    <h3 class="center"><i class="fa fa-times-circle" aria-hidden="true"></i>Błąd przy wysyłaniu wiadomości</h3>
                    <ul>
                        <li>Prosimy o kontakt z administratorem strony</li>
                    </ul>
                <!-- ENDIF -->
                <!-- IF FORM -->
                    <div class="formreturn">
                        <h2>{str_return_info}</h2>

                        <form method="post" action="{page_url}#send" name="formcontact" id="formcontact">
                            <div class="form-fields">

                                <div class="form-field form-field-fill <!-- IF IMIE_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="return-form-kurier">{str_imie}*</label>
                                    <input type="text" id="return-form-kurier" name="imie" value="{imie}" required>
                                    <p class="form-field-error-message">{imie_error}</p>
                                </div>
                                <div class="form-field form-field-fill <!-- IF NAZWISKO_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="return-form-kurier">{str_nazwisko}*</label>
                                    <input type="text" id="return-form-kurier" name="nazwisko" value="{nazwisko}" required>
                                    <p class="form-field-error-message">{nazwisko_error}</p>
                                </div>
                                <div class="form-field form-field-fill <!-- IF ORDER_ID_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="return-form-kurier">{str_ordernumber}*</label>
                                    <input type="number" id="return-form-kurier" name="order_id" value="{order_id}" required>
                                    <p class="form-field-error-message">{order_id_error}</p>
                                </div>
                                <div class="form-field form-field-fill <!-- IF EMAIL_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="return-form-kurier">{str_email}*</label>
                                    <input type="email" id="return-form-kurier" name="email" value="{email}" required>
                                    <p class="form-field-error-message">{email_error}</p>
                                </div>

                                <div class="form-field form-field-fill <!-- IF KURIER_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="return-form-kurier">{str_return_kurier}*</label>
                                    <input type="text" id="return-form-kurier" name="kurier" value="{kurier}" required>
                                    <p class="form-field-error-message">{kurier_error}</p>
                                </div>
                                <div class="form-field form-field-fill">
                                    <label>{str_return_kaucja}*</label>
                                </div>
                                <div class="form-option-field">
                                    <input type="radio" id="kaucja1" name="kaucja" value="1" {regulamin_checked} required>
                                    <label for="kaucja1">
                                        {str_return_kaucja1}*
                                    </label>
                                </div>
                                <div class="form-option-field">
                                    <input type="radio" id="kaucja2" name="kaucja" value="2" {regulamin_checked} required>
                                    <label for="kaucja2">
                                        {str_return_kaucja2}*
                                    </label>
                                </div>

                                <div class="form-notes-field form-field-fill <!-- IF KONTO_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="konto">{str_return_konto}*</label>
                                    <textarea name="konto" id="konto">{konto}</textarea>
                                    <p class="form-field-error-message">{konto_error}</p>
                                </div>
                                <div class="form-notes-field form-field-fill <!-- IF MESSAGE_ERROR -->form-field-error<!-- ENDIF -->">
                                    <label for="message">{str_return_uwagi}*</label>
                                    <textarea name="message" id="message">{message}</textarea>
                                    <p class="form-field-error-message">{message_error}</p>
                                </div>
                                <!-- IF CAPTCHA -->
                                <li>
                                    <label for="captcha"><img src="admin/plugins/captcha/captcha.php" /></label>
                                    <input type="text" name="captcha" id="captcha" size="45" value="" placeholder="Wpisz powyższy kod" />
                                    <!-- IF CAPTCHA_ERROR --><p>{captcha_error}</p><!-- ENDIF -->
                                </li>
                                <!-- ENDIF -->

                            <br class="clear" />
                            <div class="shop-checkout-actions">
                                <input type="hidden" value="{csrf}" name="csrf">
                                <input type="submit" value="{str_send}" class="button button-primary" />
                            </div>
                            <input type="text" name="email2" value="" class="cemail hide" />
                            <input type="hidden" name="form_time" value="0" />
                            <script type="text/javascript">
                            var incrementInterval;
                            $(document).ready(function () {
                                incrementInterval = setInterval('incrementDisplayTime()', 1000);
                            });
                            function incrementDisplayTime() {
                                $('form input[type="hidden"][name="form_time"]').each(function() {
                                    $(this).val(parseInt($(this).val()) + 1);
                                });
                            }
                            </script>
                        </form>
                    </div>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>
