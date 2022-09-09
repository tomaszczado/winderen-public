<li>
  <!-- IF SHOP_CART_ACTIVE -->
    <button onclick="window.location.href='{shop_cart_link}'" class="navbar-button navbar-cart-button active">
  <!-- ELSEIF SHOP_CHECKOUT_ACTIVE -->
    <button onclick="window.location.href='{shop_cart_link}'" class="navbar-button navbar-cart-button active">
  <!-- ELSE -->
    <button onclick="window.location.href='{shop_cart_link}'" class="navbar-button navbar-cart-button navbar-cart" title="{str_cart}">
  <!-- ENDIF -->
        <i class="fa fa-shopping-cart"></i>
        <span
          class="navbar-cart-number <!-- IF KOSZYK_PUSTY -->hidden<!-- ELSE -->notification navbar-notification notification-white<!-- ENDIF -->">
          <!-- IF KOSZYK_PUSTY -->
          <!-- ELSE -->
          {koszyk_stan}
          <!-- ENDIF -->
        </span>
      </button>
</li>
<li class="navbar-currencies">
  <div class="dropdown navbar-dropdown">
    <button class="dropdown-button navbar-button">
      <!-- BEGIN currency -->
      <!-- IF currency.ACTIVE -->
      <div>{currency.kod}</div>
      <!-- ENDIF -->
      <!-- END currency -->
      <i class="fa fa-chevron-down" aria-hidden="true"></i>
    </button>
    <div class="dropdown-content dropdown-content-right">
      <!-- BEGIN currency -->
      <a rel="noindex, nofollow" href="{currency.link}{welcome_pyt}/&currency={currency.id}/">{currency.kod}</a>
      <!-- END currency -->
    </div>
  </div>
</li>
<li class="navbar-languages">
  <div class="dropdown navbar-dropdown">
    <button class="dropdown-button navbar-language navbar-button svg-link">
      <!-- BEGIN language -->
      <!-- IF language.ACTIVE -->
        {language.name}
        <span class="fa fa-comment"></span>
      <!-- ENDIF -->
      <!-- END language -->
      <i class="fa fa-chevron-down" aria-hidden="true"></i>
    </button>
    <div class="dropdown-content dropdown-content-left">
      <!-- BEGIN language -->
      <a class="navbar-dropdown-language svg-link" href="{language.link}">
        {language.name}
      </a>
      <!-- END language -->
    </div>
  </div>
</li>
<li class="navbar-user">
  <div class="dropdown navbar-dropdown">
    <button class="navbar-button dropdown-button">
      <i class="fa fa-user"></i>
      <i class="fa fa-chevron-down" aria-hidden="true"></i>
    </button>
      <!-- IF KLIENT_PLATNOSCI -->
      <span class="notification navbar-notification notification-red">
        &excl;
      </span>
      <!-- ENDIF -->
    <div class="dropdown-content dropdown-content-right">
      <!-- IF LOGGED -->
      <a href="{profil_edit_link}">{klient_imie}</a>
      <a href="{profil_orders_link}">
        {str_order_twoje}
        <!-- IF KLIENT_PLATNOSCI -->
        <span class="notification dropdown-notification notification-red">
          &excl;
        </span>
        <!-- ENDIF -->
      </a>
      <!-- IF KLIENT_ID_TYP == 1 -->
      <a href="{partnership_link}">{str_partnerstrefa}</a>
      <!-- ENDIF -->
      <a href="{page_domain}?logout=1">{str_logout}</a>
      <!-- ELSE -->
      <a href="{profil_login_link}">{str_login}</a>
      <a href="{profil_edit_link}">{str_noaccount}</a>
      <!-- ENDIF -->
    </div>
  </div>
</li>