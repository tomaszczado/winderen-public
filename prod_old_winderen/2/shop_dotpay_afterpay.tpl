<div class="container">
    <div class="shop-checkout-container">
        <ul class="shop-checkout-header">
            <li>
                1. {str_check_step1} <i class="fa fa-check-circle"></i>
            </li>
            <li>
                2. {str_check_step2} <i class="fa fa-check-circle"></i>
            </li>
            <li class="active">
                3. {str_check_step3}
            </li>
        </ul>
        <div class="shop-checkout-body">
            <div class="shop-checkout-main">
                <h4 class="shop-checkout-thank-you-heading">{str_res_zamowienie}</h4>

                <!-- IF AFTERPAY -->
                    <h5 class="shop-payment-status shop-payment-status-ok">{tytul}</h5>
                    <a href="{shop_offer_link}" class="button button-primary">{str_go_to_shop}</a>
                    <a href="{profil_orders_link}" class="button button-transparent">{str_order_history}</a>
                <!-- ELSE -->
                    <h5 class="shop-payment-status shop-payment-status-error">{tytul}</h5>
                    <!-- IF LOGGEDHIDE == 1 -->
                    <!-- ELSE -->
                    <a href="{profil_orders_link}" class="button button-primary">{str_order_change_payment}</a>
                    <!-- ENDIF -->
                <!-- ENDIF -->

            </div>
        </div>
    </div>
</div>


<style>

.formsendok {
    padding-top: 120px;
    min-height: 60vh;
}
.formsendok h3 {
   margin-bottom: 60px;
}

.formsendok h2 {

}

.formsendok h2,
.formsendok p,
.formsendok h3 {
    color: white;
}

.formsendok h3 {
    font-size: 30px;
}

.pagecontent {
    margin-bottom: 10px;
}

h1 {
   display: none;
}
#sidebar {
   display: none;
}
</style>
