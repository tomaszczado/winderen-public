<h1>Potwierdzenie płatności</h1>

<div class="formsendok center">
   <img src="{template_images}logo_passion.png" alt="Winderen" />
   <div class="pagecontent">
   	<h2>{tytul}</h2>
      <p>{podtytul}</p>

<div class="hide">
<!-- IF GETIDD == 1 -->
   <h2>Płatność zaakceptowana</h2>
<!-- ENDIF -->
<!-- IF GETIDD == 2 -->
   <h2>Błąd płatności</h2>
<!-- ENDIF -->
<!-- IF ERROR_HTTP -->
   <h2>Błąd polaczenia z PayPal</h2>
<!-- ENDIF -->
</div>


<!-- IF PAYPAL_FAIL -->

   <h2>{str_dotpay_error}</h2>

<!-- ENDIF -->

<!-- IF PAYPAL_SUCCESS -->

   <h2>{str_dotpay_ok}</h2>

<!-- ENDIF -->


   </div>
   <br class="clear">
   <br class="clear">
   <a href="{page_domain}welcome" class="button button-primary">{str_next}</a>
</div>

<style>
.formsendok {
   padding-top: 60px;
   min-height: 600px;
   background: transparent url('templates/1/img/bg_profil.png') right center no-repeat;
}
.formsendok h3 {
   margin-bottom: 120px;
}
h1 {
   display: none;
}
#sidebar {
   display: none;
}
</style>


