
<div class="container">
    <div class="country-select center">
        <div class="country-select-label">{str_delivery_country}:</div>
        <div class="country-select-menu shop-offer-menu dropdown">
            <button class="dropdown-button">
                <span class="flag-icon flag-icon-{country_iso_selected}"></span>
                {country_selected}
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </button>
            <div class="shop-offer-menu-secondary dropdown-content">
                <div class="shop-offer-menu-subcategory">
                    <a href="javascript:void(0)" onclick="DivShowHide('countrysplash'); return false;">
                        {str_change_country}
                    </a>
                </div>
            </div>
        </div>
    </div>

    <ul class="shop-item-breadcrumbs">
        <li><a href="{page_domain}{page_lang_name_short}/shop_rent/3/">{str_return_wypozycz}</a><i class="fa fa-angle-right"></i></li>
        <!-- BEGIN path -->
            <!-- IF path.LINK -->
            <!-- ELSE -->
                <li>
                    {path.name}
                    <!-- IF PROMOCJA_TEST -->
                    <span class="color-blue">TEST</span>
                    <!-- ENDIF -->
                </li>
            <!-- ENDIF -->
        <!-- END path -->
    </ul>



    <div class="shop-item-container">
        <div class="shop-item-preview-container">
            <div class="shop-item-preview">
                <div class="shop-item-picture-container swiper-container">
                        <div class="swiper-wrapper" id="productgal">
                            <div class="shop-item-picture-slide swiper-slide">
                                <picture>
                                    <source media="(min-width: 465px)" srcset="{image_src}">
                                    <img src="{image_small_src}" alt="{nazwa}" class="shop-item-picture">
                                </picture>
                            </div>
                            <!-- BEGIN galeria -->
                                <div class="shop-item-picture-slide swiper-slide">
                                    <img class="shop-item-picture" src="{galeria.image_big_url}" alt="{nazwa}">
                                </div>
                            <!-- END galeria -->
                        </div>
                        <div class="shop-item-picture-navigation swiper-button-prev"></div>
                        <div class="shop-item-picture-navigation swiper-button-next"></div>
                        <div class="shop-item-picture-pagination swiper-pagination"></div>
                </div>
                <div class="item_kolory" style="display:none">
                    <span>wybrany kolor:</span>
                    <em id="item_kolor_set" style="padding: 3px; background: transparent;">&nbsp;&nbsp;&nbsp;</em>
                </div>
                <!-- IF PRODUKT_KOLORS -->
                <ul class="shop-item-colors" id="item_colors">
                    <!-- BEGIN subkolory -->
                    <!-- IF subkolory.ACTIVE -->
                    <li class="shop-item-color active" id="pcolor{kolory.id}">
                    <!-- ELSE -->
                    <li class="shop-item-color" id="pcolor{kolory.id}">
                    <!-- ENDIF -->
                        <a href="{subkolory.link}">
                            <div class="shop-item-color-sample" style="background: #{subkolory.kolor_hex} url('{page_domain}dat/kolor/{subkolory.kolor_id}.jpg');"
                            title="{subkolory.kolor}"></div>
                            <span class="shop-item-color-name center">{subkolory.kolor}</span>
                        </a>
                    </li>
                    <!-- END subkolory -->
                </ul>
                <!-- ENDIF -->

                <!-- IF BITSMOUTHPIECE -->
                <ul class="shop-item-bits">
                    <!-- BEGIN bitsmouthpiece -->
                    <!-- IF bitsmouthpiece.ACTIVE -->
                    <li class="shop-item-bit center active">
                    <!-- ELSE -->
                    <li class="shop-item-bit center">
                    <!-- ENDIF -->
                        <a href="{bitsmouthpiece.link}">
                        <img src="{bitsmouthpiece.image_src}" alt="{bitsmouthpiece.nazwa}" height="70">
                        <br />
                        <small>{bitsmouthpiece.nazwa}</small>
                        </a>
                    </li>
                    <!-- END bitsmouthpiece -->
                </ul>
                <!-- ENDIF -->

            </div>
        </div>
        <div class="shop-item-details-container">
            <div class="shop-item-details">
                <div class="shop-item-name">
                    {nazwa}
                    <!-- IF PROMOCJA_TEST -->
                    <span class="color-blue">TEST</span>
                    <!-- ENDIF -->
                </div>
                <!-- IF OPIS_MORE -->
                <div class="shop-item-content" style="text-align:right; padding-top: 15px;font-weight: 300; font-size: 16px; color: #eee; font-family: 'Open Sans',sans-serif; line-height: 1.4em;">
                    {tresc}
                </div>
                <!-- ENDIF -->
                <!-- IF PRODUKT_ROZMIARY -->
                <div class="shop-item-size">
                    <span class="shop-item-size-label">{str_shop_item_size}:</span>
                    <ul id="item_rozmiary">
                        <!-- BEGIN subrozmiary -->
                        <!-- IF subrozmiary.ACTIVE -->
                        <li class="active"><a href="{subrozmiary.link}">{subrozmiary.rozmiar}</a></li>
                        <!-- ELSE -->
                        <li><a href="{subrozmiary.link}">{subrozmiary.rozmiar}</a></li>
                        <!-- ENDIF -->
                        <!-- END subrozmiary -->
                    </ul>
                </div>
                <!-- ENDIF -->

                <!-- IF LABEL == 'half_pad' -->
                <div class="shop-item-size-matches">
                    {str_shop_item_matches} <span class="shop-item-size-matches-text"></span>
                </div>
                <!-- ENDIF -->
                <div class="shop-item-price-tax" style="margin-top: 35px">
                    <!-- IF KLIENT_CENY_NETTO -->
                        {str_shop_item_price_net}
                    <!-- ELSE -->
                        {str_shop_item_price_gross}
                    <!-- ENDIF -->
                </div>
                <div class="shop-item-price-old">
                </div>

                <div class="shop-item-price">
                    <div class="product-gross-price-{id}">
                        {cena_brutto_format}
                    </div>
                    <div>
                        {shop_waluta}
                    </div>
                </div>

                <div class="shop-item-shipping-price">
                    <!--+ {str_shop_shipping_to} {wys_kraj_id_str_ip}: {przesylka_brutto_ip} {shop_waluta}
                    <button type="button" class="help-button popover-button">
                        <i class="fa fa-question-circle"></i>
                        <div class="popover-content">{str_shop_estimated_shipping_price}</div>
                    </button>
                    -->
                    <div>
                        <b>{str_dostawa_termin}</b>
                    </div>
                    <div>
                        <b>{str_dostawa_natychmiastowa}</b>
                    </div>
                </div>

                <!-- IF PRODUKT_KOSZYK -->
                <!-- CartAdd('formcartadd{id}', 'ajax.php?get=shop_cart_part,{id}', 'cartaddid', 2); -->
                <form name="formcartadd" id="formcartadd{id}" action="{page_domain}{koszyk_link}/" method="post"
                onsubmit="ga('send', 'event', 'Cart', 'add'); fbadd();">
                <div class="shop-cart-dropdown">
                    <select name="ilosc" id="quant{id}">
                        <!-- is there any for instruction? -->
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
                    <button type="submit" id="cartadd" class="button-primary shop-item-add-to-cart-button">
                        <i class="fa fa-cart-arrow-down"></i>
                        <span id="cartaddids">{str_addtocart}</span>
                    </button>

                    <input type="hidden" name="cart_label" id="cart_label" value="{str_incart}" />
                    <input type="hidden" name="koszyk_akcja" value="dodaj" />
                    <input type="hidden" name="koszyk_test" value="1" />
                    <input type="hidden" name="oferta_id" id="oferta_id" value="{id}" />
                    <input type="hidden" name="oferta_kolor" id="oferta_kolor" value="{kolor_id}" />
                    <input type="hidden" name="oferta_rozmiar" id="oferta_rozmiar" value="{rozmiar_id}" />
                    <input type="hidden" name="oferta_mnoznik" id="{id}x" value="1" />
                    <input type="hidden" name="oferta_jm" id="oferta_jm{id}" value="" />
                    <input type="hidden" name="netto{id}" id="netto{id}" value="{cena_netto_format}" />
                    <input type="hidden" name="vat{id}" id="vat{id}" value="{vat}" />
                </form>
                <!-- ENDIF -->
                <div class="shop-item-additional-info-container">
                    <!-- IF PRODUKT_KOLOR -->
                    <p class="shop-item-additional-info">
                        {str_color}
                        <em id="item_kolor_value"></em>
                    </p>
                    <!-- ENDIF -->
                    <!-- IF PRODUKT_ROZMIARY -->
                    <p class="shop-item-additional-info">
                        {str_size}
                        <em id="item_rozmiar_value"></em>
                    </p>
                    <!-- ENDIF -->
                    <!-- IF ROZMIAR_WAGA -->
                    <p class="shop-item-additional-info">
                        {str_shop_item_weight}
                        <em id="item_waga_value">{ROZMIAR_WAGA}</em> <b>g</b>
                    </p>
                    <!-- ENDIF -->
                    <p class="shop-item-additional-info">
                        {str_gwarancja_nazwa}
                        <em>{str_gwarancja_wartosc}</em>
                    </p>
                    <p id="item_dostepnosc_value" class="shop-item-additional-info shop-item-additional-info-highlighted">
                        {str_shop_available}
                        <em>{dostepnosc_dni_string}</em>
                    </p>
                </div>
                <div class="shop-item-additional-resources">
                    <a class="button button-transparent shop-item-additional-resources-button" href="{product_technology_url}">{str_shop_technology}</a>
                </div>
            </div>
        </div>
    </div>

    <div class="page-container">
        <!-- INCLUDE 1/payment_and_help_box.tpl -->
    </div>

    </div>


<script>
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

<script>
    var productId = {DEFAULT_PRODUCT_ID};
    var anchorProductId = AnchorCheck();
    if (anchorProductId != 'empty') {
        productId = anchorProductId;
    }
    if (anchorProductId>0) {
        window.location.replace("{link_redirect_old}" + anchorProductId);
    }

    function ChangeProductVersion (versionProductId) {

    }
</script>

<script>

    $("#oferta_id").val({id});
    $(".productbrutto").html("{cena_brutto} {shop_waluta}");

    <!-- IF CENA_STARA_POKAZ -->
        $(".shop-item-price-old").html("{cena_stara} {shop_waluta}");
        $('.shop-item-price-old').show();
    <!-- ELSE -->
        $(".shop-item-price-old").html("");
        $('.shop-item-price-old').hide();
    <!-- ENDIF -->

    <!-- IF DOSTEPNOSC == 2 -->
        $("#item_dostepnosc_value").html("<em>{str_shop_available_not}</em><br />{str_shop_available_from} <em>{dostepnosc_od}</em>");
        $('#item_dostepnosc_value').removeClass('shop-item-additional-info-highlighted');
        $('#item_dostepnosc_value').addClass('shop-item-additional-info-highlighted-orange');
    <!-- ELSEIF DOSTEPNOSC == 1 -->
        $("#item_dostepnosc_value").html("{str_shop_available} <em>{str_shop_available_on_request}</em>");
        $('#item_dostepnosc_value').removeClass('shop-item-additional-info-highlighted');
        $('#item_dostepnosc_value').addClass('shop-item-additional-info-highlighted-orange');
    <!-- ELSE -->
        $("#item_dostepnosc_value").html("{str_shop_available} <em>{str_shop_available_in_stock}</em>");
        $('#item_dostepnosc_value').addClass('shop-item-additional-info-highlighted');
        $('#item_dostepnosc_value').removeClass('shop-item-additional-info-highlighted-orange');
    <!-- ENDIF -->

    $("#item_kolor_value").html("{kolory_id}");
    $("#item_rozmiar_value").html('{rozmiary_id}');
    $('#item_rozmiar_id').html('{rozmiar_id}');

    //czy w koszyku
    <!-- IF INCART -->
        $("#cartaddid").addClass("cartadded");
        $("#cartaddids").html('{str_incart}');
    <!-- ELSE -->
        $("#cartaddid").removeClass("cartadded");
        $("#cartaddids").html('{str_addtocart}');
    <!-- ENDIF -->
</script>

<script>
    var currentSize = $('#oferta_rozmiar').val();
    $('#rid' + currentSize).addClass('active');
    if (currentSize == 1) {
        $('.shop-item-size-matches-text').html('15.5" - 16"');
    } else if (currentSize == 2) {
        $('.shop-item-size-matches-text').html('16.5" - 17"');
    } else {
        $('.shop-item-size-matches-text').html('17.5" - 18.5"');
    }
</script>

<script>
    function fbadd() {
        fbq('track', 'AddToCart', {
            content_name: '{nazwa}',
            content_type: 'product',
            content_ids: '{id}',
            value: {cena_brutto},
            currency: '{shop_waluta}'
        });
    }
</script>