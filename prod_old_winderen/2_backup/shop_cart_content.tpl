    <div class="shop-cart-container">
        <div class="shop-cart">
            <!-- IF CART_NOT_EMPTY -->
            <div class="shop-cart-header">
                {str_cart_header}
            </div>
            <form id="shop_cart" name="shop_cart" action="shop_cart/" method="post" onsubmit="ShowWorker()">
                <ul class="shop-cart-items">
                    <!-- BEGIN cart -->
                    <li class="shop-cart-item">
                        <div class="shop-cart-item-picture-container">
                            <div class="shop-cart-item-delete mobile">
                                <a href="{cart.pozycja_del_link}"><i class="fa fa-times" aria-hidden="true"></i></a>
                            </div>
                            {cart.image}
                        </div>
                        <div class="shop-cart-item-details">
                            <div class="shop-cart-item-name">
                                {cart.nazwa}
                                <!-- IF cart.PROMOCJA_TEST -->
                                <span class="color-blue">TEST</span>
                                <!-- ENDIF -->
                            </div>
                            <div class="shop-cart-item-details-additional">
                                <!-- IF cart.KOLOR -->
                                    <span class="shop-cart-item-detail">{str_color}: <em>{cart.kolor}</em></span>
                                <!-- ENDIF -->
                                <!-- IF cart.ROZMIAR && cart.ROZMIAR != '---' -->
                                    <span class="shop-cart-item-detail">{str_size}: <em>{cart.rozmiar}</em></span>
                                <!-- ENDIF -->
                            </div>
                            <!-- IF cart.OPAKOWANIA -->
                            <div class="shop-cart-item-opakowania">
                                {str_opakowanie_wybierz}
                                <!-- BEGIN opakowania -->
                                <div class="row">
                                    <div class="col-4">
                                        <!-- IF opakowania.ACTIVE -->
                                        <div class="shop-cart-item-opakowanie active">
                                            {cart.opakowania.image}
                                        </div>
                                        <!-- ELSE -->
                                        <div class="shop-cart-item-opakowanie">
                                            <a href="{page_domain}{page_lang_name_short}/shop_cart/&o={cart.opakowania.id}&p={cart.oferta_id}">
                                                {cart.opakowania.image}
                                            </a>
                                        </div>
                                        <!-- ENDIF -->
                                    </div>
                                    <div class="col-8">
                                        {cart.opakowania.nazwa}<br />
                                        <strong>+ <span class="opakowanie-price-{cart.oferta_id}-{cart.opakowania.id}">{cart.opakowania.wartosc_brutto}</span> {shop_waluta}</strong>
                                    </div>
                                </div>
                                <!-- END opakowania -->
                            </div>
                            <!-- ENDIF -->
                        </div>
                        <div class="shop-cart-item-additional">
                            <div class="shop-cart-item-delete">
                                <a href="{cart.pozycja_del_link}"><i class="fa fa-times" aria-hidden="true"></i></a>
                            </div>
                            <div class="shop-cart-quantity-and-price">
                                <div class="shop-cart-dropdown">
                                    <select id="cart-change" onchange="CartChange(this, '{cart.oferta_id}', '{shop_netto_round}', '{shop_brutto_round}')">
                                        <!-- is there any for instruction? -->
                                        <option selected hidden>{cart.ilosc}</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                    </select>
                                </div>

                                <input type="hidden" id="netto{cart.oferta_id}" value="{cart.cena_netto}" />
                                <input type="hidden" id="vat{cart.oferta_id}" value="{cart.vat}" />
                                <input type="hidden" id="{cart.oferta_id}x" value="{cart.mnoznik}" />
                                <div class="shop-cart-item-price">
                                    <span class="product-gross-price-{cart.oferta_id}">
                                        {cart.wartosc_brutto}
                                    </span>
                                    {shop_waluta}
                                </div>
                            </div>
                        </div>
                    </li>
                    <!-- END cart -->
                </ul>

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

                <div id="shop-cart-summary" class="shop-cart-summary">
                    <div class="shop-cart-summary-section">
                        <h4>{str_pytania}<h4>
                            <!-- IF PAGES -->
                                <ul class="cart-accordion">
                                    <!-- BEGIN pages -->
                                        <li class="cart-accordion-item">
                                            <label>{pages.tytul}</label>
                                            <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                        </li>
                                        <ul class="cart-accordion-subitems">
                                            <li class="cart-accordion-subitem">
                                            {pages.tresc}
                                            </li>
                                        </ul>
                                    <!-- END pages -->
                                </ul>
                            <!-- ENDIF -->
                            <a href="{shop_offer_link}" class="button button-transparent shop-cart-button-continue-shopping-faq">{str_shopping}</a>
                    </div>
                    <div class="shop-cart-summary-section">
                        <div class="shop-cart-summary-value">
                            {str_products_value}:
                            <span class="scart-brutto">{koszyk_suma_brutto}</span> {shop_waluta}
                        </div>
                        <div class="shop-cart-summary-shipping-price">
                            + {str_shop_shipping_to}: <span class="flag-icon flag-icon-{przesylka_ip_iso}"></span> <span class="shipping-brutto">{przesylka_brutto_ip} {shop_waluta}</span>
                        </div>
                        <div class="shop-cart-summary-shipping-price">
                            {str_dostawa_termin}
                        </div>
                        <div class="shop-cart-summary-tax">
                            <!-- IF KLIENT_CENY_NETTO -->
                                {str_shop_item_price_net}
                                <div>{shop_fv_netto_info}</div>
                            <!-- ELSE -->
                                {str_shop_item_price_gross}
                                <div>{shop_fv_brutto_info}</div>
                            <!-- ENDIF -->
                        </div>
                        <div class="shop-cart-summary-total-price">
                            <span class="shop-cart-summary-total-price-label">{str_total}:</span>
                            <span class="scartallbrutto">{koszyk_all_brutto}</span>
                            {shop_waluta}
                        </div>
                        <div class="shop-cart-actions">
                            <a href="{shop_offer_link}" class="button button-transparent shop-cart-button-continue-shopping">{str_shopping}</a>
                            <a href="{shop_checkout_link}" onClick="ga('send', 'event', 'cart2checkout', 'Click');" class="button button-primary shop-cart-button-secure-checkout">{str_checkout}</a>
                        </div>

                        <div class="shop-cart-icons-logos">
                            <!-- BEGIN platnoscikraj -->
                            <!-- IF platnoscikraj.IMAGE -->
                            <img src="{platnoscikraj.image_src}" alt="{platnoscikraj.nazwa}" height="25" title="{platnoscikraj.nazwa}">
                            <!-- ENDIF -->
                            <!-- END platnoscikraj -->
                        </div>

                    </div>
                </div>

            </form>
            <!-- ELSE -->
                <div class="shop-cart-empty">
                    <h3>{str_cart_empty}</h3>
                    <p>
                        <a href="{shop_offer_link}" class="shop-cart-go-to-shop button button-primary">{str_carttoshop}</a>
                    </p>
                </div>
            <!-- ENDIF -->
        </div>
    </div>