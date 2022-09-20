<div class="shop-cart-container">
    <div class="shop-cart-added-item">
        <!-- BEGIN cart -->
            <!-- IF cart.PRODUCT_ADDED -->
            <div class="shop-cart-added-item-picture-container">
                <a href="{shop_offer_link}" class="button button-transparent button-rounded shop-cart-added-back-up">
                    <span>{str_go_to_shop}</span>
                </a>
            </div>
            <div class="shop-cart-added-item-picture-container">
                {cart.image}
            </div>
            <div class="shop-cart-suggested-item-details">
                <div class="shop-cart-suggested-item-details-additional">
                    <div class="shop-cart-suggested-item-name">
                        {cart.nazwa}
                        <!-- IF cart.PROMOCJA_TEST -->
                        <span class="color-blue">TEST</span>
                        <!-- ENDIF -->
                    </div>
                    <div class="shop-cart-suggested-summary-section">
                        <div class="shop-cart-summary-suggested-value">
                            <span class="scart-brutto">{cart.cena_brutto}
                            {shop_waluta}</span>
                            <!-- IF KOSZYK_STAN == 1 -->
                            + {str_shop_shipping}
                            <!--
                            <button type="button" class="help-button popover-button">
                                <i class="fa fa-question-circle"></i>
                                <div class="popover-content">{str_shop_estimated_shipping_price}</div>
                            </button>
                            -->
                            <span class="shipping-brutto">{przesylka_brutto_ip} {shop_waluta}</span>
                            <!-- ENDIF -->
                        </div>
                    </div>
                </div>
                <a href="{shop_offer_link}" class="button button-transparent button-rounded shop-cart-added-back-down">
                    <span>{str_go_to_shop}</span>
                </a>
                <a href="{shop_cart_link}" class="button button-primary button-rounded">
                    <span>{str_cartshow}</span>
                </a>
            </div>

            <!-- IF ENVIRONMENT == 'prod' -->
            <script>
            pintrk('track', 'addtocart', {
            value: '{cart.cena_brutto}',
            order_quantity: '{cart.ilosc}',
            currency: '{shop_waluta}'
            });
            </script>
            <!-- ENDIF -->

            <!-- ENDIF -->
        <!-- END cart -->
    </div>

    <!-- IF KOSZYK_DARMOWA_PRZESYLKA -->
    <div class="shop-cart-shipping-free">
        {str_shipping_free} <!-- IF PAGE_COUNTRY == 171 -->{str_shop_item_price_net}<!-- ENDIF -->
    </div>
    <!-- ENDIF -->

    <!-- IF KOSZYK_BREXIT_DO135 -->
    <div class="shop-cart-shipping-free shop-cart-shipping-brexit">
        <span class="flag-icon flag-icon-en"></span>
        <strong>Brexit INFO</strong>: Shipping to the UK is only possible for orders over 135 GBP net.
    </div>
    <!-- ENDIF -->

    <!-- IF KOSZYK_BREXIT_OD135 -->
    <div class="shop-cart-shipping-free shop-cart-shipping-brexit">
        <span class="flag-icon flag-icon-en"></span>
        <strong>Brexit INFO</strong>: The value of your cart is shown net, however UK tax of 20% may be charged to you by the customs agency upon receipt of your package.
    </div>
    <!-- ENDIF -->

    <!-- IF SHOP_CHECKOUT_PROMO -->
    <div class="shop-cart-gift">
        <div class="shop-checkout-gift">
            <h2>{str_promo_czapka1}</h2>
            <p>{str_promo_czapka2}</p>
            <div><img src="{template_images}promo/czapki.png"></div>
        </div>
    </div>
    <!-- ENDIF -->

    <!-- IF CARTADDTOFREE -->

        <div class="shop-cart-addtofree">
            <h2>{str_promo_dostfree1}</h2>
            <p>{str_promo_dostfree2}</p>
            <div class="shop-cart-addtofree-center center">
                <span class="shop-cart-addtofree-arrow-down"></span>
            </div>
            <div class="shop-cart-addtofree-items">
            <!-- BEGIN cartadd2 -->
                <a class="shop-cart-addtofree-item" href="{cartadd2.link}">
                    <div class="shop-cart-addtofree-bg">
                        <img class="shop-cart-addtofree-image" src="{cartadd2.image_src}" alt="{cartadd2.tytul}">
                        <div class="shop-cart-addtofree-name">{cartadd2.tytul}</div>
                    </div>
                </a>
            <!-- END cartadd2 -->
            </div>
        </div>

    <!-- ELSE -->

        <!-- IF CARTPOLECANE -->
        <div class="shop-cart-suggested2">
            <div class="shop-cart-suggested2-header">{str_other_products}:</div>
            <div class="shop-cart-suggested2-items">
            <!-- BEGIN polecane -->
                <a class="shop-cart-suggested2-item" href="{polecane.link}">
                    <div class="shop-cart-suggested2-bg">
                        <img class="shop-cart-suggested2-image" src="{polecane.image_src}" alt="{polecane.tytul}">
                        <div class="shop-cart-suggested2-name">{polecane.tytul}</div>
                    </div>
                </a>
            <!-- END polecane -->
            </div>
        </div>
        <!-- ENDIF -->

    <!-- ENDIF -->

</div>

<!-- IF ENVIRONMENT == 'prod' -->

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




<!-- IF KLAVIYO -->
<script type="text/javascript">
    var _learnq = _learnq || [];
    _learnq.push(["track", "Added to Cart", {<!-- BEGIN cart --><!-- IF cart.PRODUCT_ADDED -->
     "$value": {koszyk_suma_brutto_base},
     "AddedItemProductName": "{cart.nazwa_title}",
     "AddedItemProductID": "{cart.oferta_id}",
     "AddedItemSKU": "{cart.oferta_id}",
     "AddedItemCategories": ["{cart.kategoria_nazwa}"],
     "AddedItemImageURL": "{page_domain}{cart.image_src}",
     "AddedItemURL": "{page_domain}{cart.link}",
     "AddedItemPrice": {cart.cena_brutto_base},
     "AddedItemQuantity": {cart.ilosc},
     "CheckoutURL": "{page_domain}{shop_checkout_link}",
     "StoreLanguage": "{page_lang_name_short}",
     <!-- ENDIF -->
     <!-- END cart -->
     "Items": [<!-- BEGIN cart -->
        {
         "ProductID": "{cart.oferta_id}",
         "SKU": "{cart.oferta_id}",
         "ProductName": "{cart.nazwa_title}",
         "Quantity": {cart.ilosc},
         "ItemPrice": {cart.cena_brutto_base},
         "RowTotal": {cart.wartosc_brutto_base},
         "ProductURL": "{page_domain}{cart.link}",
         "ImageURL": "{page_domain}{cart.image_src}",
         "ProductCategories": ["{cart.kategoria_nazwa}"]
        },<!-- END cart -->
     ]
   }]);
</script>
<!-- ENDIF -->