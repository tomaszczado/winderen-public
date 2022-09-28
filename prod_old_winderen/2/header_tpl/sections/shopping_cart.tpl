<div class="shopping-cart has-items">
  <a href="{shop_cart_link}" title="{str_cart}">
    <span class="icon">
      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-bag.svg" alt="{str_cart}" width="1" height="1">
      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-bag-black.svg" alt="{str_cart}" width="1" height="1">
      
      <!-- IF KOSZYK_PUSTY -->
      <!-- ELSE -->
        <span>{koszyk_stan}</span>
      <!-- ENDIF -->

    </span>
  </a>
</div>