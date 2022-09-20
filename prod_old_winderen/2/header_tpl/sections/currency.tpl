<div class="currency">

  <!-- BEGIN currency -->
    <!-- IF currency.ACTIVE -->
      <div class="selected">{currency.kod}</div>
    <!-- ENDIF -->
  <!-- END currency -->

  <div class="values"> 
    <div class="inner-values">
      <div class="select-label">{str_header_select_currency}</div>

      <!-- BEGIN currency -->
        <div class="value">
          <a href="{currency.link}{welcome_pyt}/&currency={currency.id}/" title="{currency.kod}" rel="noindex, nofollow">{currency.kod}</a>
        </div>
      <!-- END currency -->
      
    </div>
  </div>
</div>