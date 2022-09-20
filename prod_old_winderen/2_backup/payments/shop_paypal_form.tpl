<form id="paypalform" name="paypalform" class="On" action="https://www.paypal.com/cgi-bin/webscr" method="post">
   <input type="hidden" name="business" value="biuro@winderen.com">
   <input type="hidden" name="cmd" value="_xclick">

   <input type="hidden" name="item_name" value="Order {val_id}">
   <input type="hidden" name="amount" value="{zamowienie_suma_brutto}">

   <input type="hidden" name="currency_code" value="{val_order_valuta}">
   <input type="hidden" name="first_name" value="{val_imie}">
   <input type="hidden" name="last_name" value="{val_nazwisko}">
   <input type="hidden" name="email" value="{val_email}">

   <input type="hidden" name="return" value="{page_domain}?get=shop_paypal,{val_id},{control}">
   <input type="hidden" name="cancel_return" value="{page_domain}?get=shop_paypal,{val_id},{control}">
   <input type="hidden" name="notify_url" value="{page_domain}?get=shop_paypal,{val_id},{control}">

   <input type="hidden" name="image_url" value="https://www.winderen.com/templates/1/img/logo150.png">

   <!--<input type="hidden" name="landing_page" value="billing">-->
   <!--<input type="hidden" name="lc" value="US">-->
   <input type="submit" class="button button-primary"  value="{str_order_paypal}">
</form>
