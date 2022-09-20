<p>{info}</p>

<p class="hide">{str_order_dotpay}</p>
<form id="dotpayform" name="form" action="{dotpay_link}" method="post">
   <input type="hidden" name="id" id="id" value="{dotpay_id}" readonly="readonly">
   <input type="hidden" name="amount" id="amount" value="{zamowienie_suma_brutto}" readonly="readonly">
   <input type="hidden" name="currency" id="currency" value="{val_order_valuta}" readonly="readonly">
   <input type="hidden" name="description" id="description" value="{description}" readonly="readonly">
   <input type="hidden" name="lang" id="lang" value="{page_lang_name_short}" readonly="readonly">
   <input type="hidden" name="URL" id="URL" value="{page_domain}index.php?get=shop_dotpay_afterpay" readonly="readonly">
   <input type="hidden" name="buttontext" id="buttontext" value="Powrót do serwisu" readonly="readonly">
   <input type="hidden" name="onlinetransfer" id="onlinetransfer" value="1" readonly="readonly">
   <input type="hidden" name="type" id="type" value="0" readonly="readonly">
   <input type="hidden" name="control" id="control" value="{control}" readonly="readonly">
   <input type="hidden" name="email" id="email" value="{val_email}" readonly="readonly">
   <input type="hidden" name="postcode" id="postcode" value="{kod_pocztowy}" readonly="readonly">
   <input type="hidden" name="forename" id="forename" value="{val_imie}" readonly="readonly">
   <input type="hidden" name="surname" id="surname" value="{val_nazwisko}" readonly="readonly">
   <input type="hidden" name="city" id="city" value="{val_miasto}" readonly="readonly">
   <input type="hidden" name="country" id="country" value="{val_kraj_id_iso3}" readonly="readonly">
   <input type="hidden" name="ignore_last_payment_channel" id="ignore_last_payment_channel" value="1" readonly="readonly">
   <input type="hidden" name="channel_groups" id="channel_groups" value="K,T" readonly="readonly">
   <input type="submit" class="button button-primary"  value="{str_order_dotpay}">
</form>