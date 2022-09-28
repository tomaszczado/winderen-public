
<div class="container">
    <!-- INCLUDE 1/inc/shop_item_breadcrumbs.tpl -->
    <div class="shop-item-gel-bits-container">
        <div class="shop-item-gel-bits-header">
            <p>{str_shop_gel_bits_description}</p>
            <a href="#" class="button button-transparent">{str_shop_technology}</a>
        </div>
        <div class="shop-item-gel-bits-configurator-top">
            <h2 class="shop-item-gel-bits-configurator-header">{str_shop_gel_bits_choose_top}</h2>
            <ul class="shop-item-gel-bits-configurator-top-options">
                <!-- BEGIN produkty_sciegierze -->
                    <li class="shop-item-gel-bits-configurator-top-option <!-- IF produkty_sciegierze.ROZMIARY -->shop-item-gel-bits-configurator-option-sizes-available<!-- ENDIF -->" data-top-option-id="{produkty_sciegierze.id}" data-top-option-label="{produkty_sciegierze.nazwa}">
                        <img src="{produkty_sciegierze.imagem_src}">
                        {produkty_sciegierze.nazwa}
                        <!-- IF produkty_sciegierze.ROZMIARY -->
                            <ul class="shop-item-gel-bits-configurator-sizes">
                                <!-- BEGIN rozmiary -->
                                    <li class="shop-item-gel-bits-configurator-size" data-top-option-id="{produkty_sciegierze.rozmiary.id}" data-top-option-label="{produkty_sciegierze.rozmiary.nazwa}">{produkty_sciegierze.rozmiary.rozmiar}</li>
                                <!-- END rozmiary -->
                            </ul>
                        <!-- ENDIF -->
                    </li>
                <!-- END produkty_sciegierze -->
                <li class="shop-item-gel-bits-configurator-top-option" data-top-option-id="0" data-top-option-label="{str_shop_gel_bits_no_top}">
                    <img src="{page_domain}{template_images}shop_gel_bits/x.png">
                    {str_shop_gel_bits_no_top}
                </li>
            </ul>
        </div>
        <div class="shop-item-gel-bits-body">
            <div class="shop-item-gel-bits-configurator-left">
                <h2 class="shop-item-gel-bits-configurator-header">{str_shop_gel_bits_choose_left}</h2>
                <ul class="shop-item-gel-bits-configurator-left-options">
                    <!-- BEGIN produkty_boki -->
                        <li class="shop-item-gel-bits-configurator-left-option <!-- IF produkty_boki.ROZMIARY -->shop-item-gel-bits-configurator-option-sizes-available<!-- ENDIF -->" data-left-option-id="{produkty_boki.id}" data-left-option-label="{produkty_boki.nazwa}">
                        <img src="{produkty_boki.imagem_src}">
                        <div class="shop-item-gel-bits-configurator-left-option-name">
                                {produkty_boki.nazwa}
                                <!-- IF produkty_boki.ROZMIARY -->
                                    <ul class="shop-item-gel-bits-configurator-sizes">
                                        <!-- BEGIN rozmiary -->
                                            <li class="shop-item-gel-bits-configurator-size" data-left-option-id="{produkty_boki.rozmiary.id}" data-left-option-label="{produkty_boki.rozmiary.nazwa}">{produkty_boki.rozmiary.rozmiar}</li>
                                        <!-- END rozmiary -->
                                    </ul>
                                <!-- ENDIF -->
                        </div>
                    </li>
                    <!-- END produkty_boki -->
                    <li class="shop-item-gel-bits-configurator-left-option" data-left-option-id="0" data-left-option-label="{str_shop_gel_bits_no_left}">
                        <img src="{page_domain}{template_images}shop_gel_bits/x.png">
                        <div class="shop-item-gel-bits-configurator-left-option-name">
                            {str_shop_gel_bits_no_left}
                        </div>
                    </li>
                </ul>
            </div>
            <div class="shop-item-gel-bits-preview-container">
                <div class="shop-item-preview">
                    <div class="shop-item-picture-container shop-item-gel-bits-picture-container swiper-container">
                            <div class="swiper-wrapper" id="productgal">
                                <div class="shop-item-picture-slide swiper-slide">
                                    <img class="shop-item-picture" src="{image_big}" alt="{nazwa}">
                                </div>
                            </div>
                            <div class="shop-item-picture-navigation swiper-button-prev"></div>
                            <div class="shop-item-picture-navigation swiper-button-next"></div>
                            <div class="shop-item-picture-pagination swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="shop-item-gel-bits-footer">
            <div class="shop-item-gel-bits-configurator-summary">
                <div class="shop-item-gel-bits-configurator-summary-selection">
                    {str_shop_gel_bits_details_top}: <span class="shop-item-gel-bits-configurator-summary-selection-top-option">-</span>
                </div>
                <div class="shop-item-gel-bits-configurator-summary-selection">
                    {str_shop_gel_bits_details_left}: <span class="shop-item-gel-bits-configurator-summary-selection-left-option">-</span>
                </div>
                <ul class="shop-item-gel-bits-configurator-links">
                    <li>
                        <div class="shop-item-gel-bits-configurator-links-name">
                            Gel bit system
                        </div>
                        <a href="#" class="shop-item-gel-bits-configurator-links-link">
                            {str_learn_more}
                        </a>
                    </li>
                    <li>
                        <div class="shop-item-gel-bits-configurator-links-name">
                            {str_shop_gel_bits_replaceable_system}
                        </div>
                        <a href="#" class="shop-item-gel-bits-configurator-links-link">
                            {str_learn_more}
                        </a>
                    </li>
                </ul>
            </div>
            <div class="shop-item-gel-bits-details">
                <div class="shop-item-price-tax">
                    {str_shop_item_price_gross}
                </div>
                <div class="shop-item-price-old">
                </div>
                <div class="shop-item-price productbrutto">
                    {cena_brutto_format} {shop_waluta}
                </div>
                <div class="shop-item-shipping-price">
                    + {str_shop_shipping_to} {wys_kraj_id_str_ip}: {przesylka_brutto_ip} {shop_waluta}
                    <button type="button" class="help-button popover-button">
                        <i class="fa fa-question-circle"></i>
                        <div class="popover-content">{str_shop_estimated_shipping_price}</div>
                    </button>
                </div>
                <!-- IF PRODUKT_KOSZYK -->
                <form name="formcartadd" id="formcartadd{id}" action="{koszyk_link}/" method="post" onsubmit="CartAdd('formcartadd{id}', 'ajax.php?get=shop_cart_part,{id}', 'cartaddid{id}', 2); fbq('track', 'AddToCart'); ga('send', 'event', 'Cart', 'add'); return false;">
                    <button type="submit" id="cartadd" class="button-primary shop-item-add-to-cart-button">
                        <i class="fa fa-cart-arrow-down"></i>
                        <span id="cartaddids">{str_addtocart}</span>
                    </button>

                    <input type="hidden" name="cart_label" id="cart_label" value="{str_incart}" />
                    <input type="hidden" name="koszyk_akcja" value="dodaj" />
                    <input type="hidden" name="oferta_id" id="oferta_id" value="{id}" />
                    <input type="hidden" name="oferta_kolor" id="oferta_kolor" value="" />
                    <input type="hidden" name="oferta_rozmiar" id="oferta_rozmiar" value="" />
                    <input type="hidden" name="oferta_mnoznik" id="{id}x" value="1" />
                    <input type="hidden" name="oferta_jm" id="oferta_jm{id}" value="" />
                    <input type="hidden" name="netto{id}" id="netto{id}" value="{shop_netto_round}" />
                    <input type="hidden" name="vat{id}" id="vat{id}" value="{vat}" />
                    <input type="hidden" name="ilosc" id="quant{id}" value="1" />
                </form>
                <!-- ENDIF -->
                <div class="shop-item-additional-info-container">
                    <p class="shop-item-additional-info">
                        {str_size}
                        <em id="item_rozmiar_value">135mm</em>
                    </p>
                    <p class="shop-item-additional-info">
                        {str_thick}
                        <em id="item_rozmiar_value">22mm</em>
                    </p>
                </div>
                <div class="shop-item-additional-info-container">
                    <p class="shop-item-additional-info">
                        {str_shop_available}
                        <em>{dostepnosc_dni_string}</em>
                    </p>
                    <p class="shop-item-additional-info">
                        {str_shop_shipping}
                        <em>{str_shop_worldwide}</em>
                    </p>
                    <p class="shop-item-additional-info">
                        {str_gwarancja_nazwa}
                        <em>{str_gwarancja_wartosc}</em>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        document.productPictureSwiper = new Swiper('.shop-item-picture-container', {
            pagination: {
                el: '.shop-item-picture-pagination',
                clickable: true
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            observer: true
        });
    });
</script>
<script type="text/javascript" src="templates/1/files/gel_bits.js"></script>