<!-- IF SHOP_ITEM_ACTIVE -->
<!-- ELSEIF SHOP_OFFER_ACTIVE -->
<!-- ELSEIF SHOP_CART_ACTIVE -->
<!-- ELSEIF SHOP_CHECKOUT_ACTIVE -->
<!-- ELSE -->
  <!-- IF SHOPICON -->

    <div class="buy-now">
      <a class="button button-blue button-with-icon" href="{shop_offer_link}" title="{str_navbar_buy}">
        <span class="button-icon">
          <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-bag-blue.svg" alt="{str_navbar_buy}" width="1" height="1">
        </span>
        <span class="button-label">{str_navbar_buy}</span>
      </a>
    </div>

  <!-- ELSE -->

    <div class="buy-now">
      <a class="button button-blue button-with-icon" href="{shop_offer_link}" title="{str_navbar_buy}">
        <span class="button-icon">
          <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-bag-blue.svg" alt="{str_navbar_buy}" width="1" height="1">
        </span>
        <span class="button-label">{str_navbar_buy}</span>
      </a>
    </div>

  <!-- ENDIF -->
<!-- ENDIF -->