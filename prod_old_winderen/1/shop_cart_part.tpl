<script>
$(".scart-brutto").html("{koszyk_brutto}");
$(".scartnetto").html("{koszyk_netto}");
$(".scartallbrutto").html("{koszyk_all_brutto}");
$(".navbar-cart-number").html("{koszyk_ilosc}");
$('.navbar-cart-number').removeClass('hidden');
$(".navbar-cart-number").addClass("notification navbar-notification notification-white");
$('#cart-checkout-sidebar-cart-shipping-price').html('{przesylka_brutto}');

<!-- BEGIN cart_opakowania -->
$('.opakowanie-price-{cart_opakowania.oferta_id}-{cart_opakowania.id}').html('{cart_opakowania.wartosc_brutto}');
<!-- END cart_opakowania -->
</script>

<!-- IF ENVIRONMENT == 'prod' -->
<!-- IF DODAJ -->

<!--
Start of Floodlight Tag: Please do not remove
Activity name of this tag: Dodanie do koszyka
URL of the webpage where the tag is expected to be placed:
This tag must be placed between the <body> and </body> tags, as close as possible to the opening tag.
Creation Date: 05/13/2019
-->
<script type="text/javascript">
</script>
<noscript></noscript>
<iframe src="https://9150837.fls.doubleclick.net/activityi;src=9150837;type=invmedia;cat=dodan00;dc_lat=;dc_rdid=;tag_for_child_directed_treatment=;tfua=;npa=;ord=1?" width="1" height="1" frameborder="0" style="display:none"></iframe>

<!-- End of Floodlight Tag: Please do not remove -->

<!-- ENDIF -->
<!-- ENDIF -->