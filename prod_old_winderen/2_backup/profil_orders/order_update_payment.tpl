<div class="profile-order-update-payment-container">
    <div class="profile-order-update-payment">
        <form action="{page_url}" method="post">
            <div class="shop-checkout-payment-header">
                <i class="fa fa-credit-card"></i> {str_order_change_payment}
            </div>
            <!-- IF PLATNOSCPROCENT -->
            <p>{str_payment_fast}: {str_payment_addinfo}</p>
            <!-- ENDIF -->
            <div class="shop-checkout-payment-selection">
                <!-- IF PLATNOSC_ID_ERROR -->
                    <p class="form-field-error-message">{platnosc_id_error}</p>
                <!-- ENDIF -->
                <ul class="shop-checkout-payment-methods">
                    <!-- BEGIN platnosci -->
                        <li class="shop-checkout-payment-method" id="shop-checkout-payment-method-{platnosci.id}">
                            <input type="radio" name="platnosc_id" id="shop-checkout-payment-method-{platnosci.id}-option" value="{platnosci.id}" {platnosci.checked} required>
                            <label for="shop-checkout-payment-method-{platnosci.id}-option" class="shop-checkout-payment-method-details">
                                <div class="shop-checkout-payment-method-name">
                                    {platnosci.nazwa}
                                </div>

                                <div class="shop-checkout-payment-method-image">
                                    <!-- IF platnosci.IMAGE -->
                                        <img src="{platnosci.image_src}" alt="{platnosci.opis}">
                                    <!-- ELSE -->
                                        {platnosci.opis}
                                    <!-- ENDIF -->
                                </div>
                            </label>
                        </li>
                    <!-- END platnosci -->
                </ul>
            </div>
            <div class="shop-checkout-actions">
                <input type="submit" class="button button-primary" value="{str_checkout2_continue}">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="templates/1/files/payment_selection.js"></script>