<div class="container">
    <!-- BEGIN menu1 -->
        <!-- IF menu1.ACTIVE -->
            <!-- IF menu1.MENU2 -->
                <ul>
                    <div class="button-prev">
                        <i class="fa fa-chevron-left" aria-hidden="true"></i>
                    </div>
                    <div class="shop-offer-submenu-options">
                        <!-- BEGIN menu2 -->
                        <!-- IF menu1.menu2.ACTIVE -->
                        <li class="shop-offer-submenu-option">
                            <a href="{menu1.menu2.link}">
                                {menu1.menu2.image_small}
                                {menu1.menu2.tytul}
                            </a>
                        </li>
                        <!-- ELSE -->
                        <li class="shop-offer-submenu-option">
                            <a href="{menu1.menu2.link}">
                                {menu1.menu2.image_small}
                                {menu1.menu2.tytul}
                            </a>
                        </li>
                        <!-- ENDIF -->
                        <!-- END menu2 -->
                    </div>
                    <div class="button-next">
                        <i class="fa fa-chevron-right" aria-hidden="true"></i>
                    </div>
                </ul>
            <!-- ENDIF -->
        <!-- ENDIF -->
    <!-- END menu1 -->

<!-- IF GETID == 0 -->

    <div class="shop-home-container">
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

        <div class="shop-home-products2">

        <!-- BEGIN menu1 -->
        <!-- IF menu1.ACTIVE -->
        <!-- IF menu1.MENU2 -->
            <!-- BEGIN menu2 -->
            <!-- IF menu2.ID != 30 -->
            <div class="shop-home-products2-block">
                <a href="{menu1.menu2.link}">
                    <picture class="shop-home-products2-image">
                        <img src="{page_domain}{template_images}shop_home2/shopcategory_{menu2.ID}.jpg" width="600" height="400" alt="{menu1.menu2.tytul}">
                    </picture>
                    <div class="shop-home-products2-info">
                        <h3>{menu1.menu2.tytul}</h3>
                        <span class="shop-home-products2-button">
                            {str_go_to_shop}
                        </span>
                    </div>
                </a>
            </div>
            <!-- ENDIF -->
            <!-- END menu2 -->
        <!-- ENDIF -->
        <!-- ENDIF -->
        <!-- END menu1 -->

        </div>
        <br class="clear" />

        <div class="wd-line">
            <span class="wd-line-logo">
                <img src="{template_images}logo2.svg" alt="{firma_nazwa}">
            </span>
        </div>

        <div class="row row-vertical-center welcome-details-row welcome-wiedza">
            <div class="col-6 col-l col-12-sm center">
                <img src="{template_images}welcome2/icons/strefa_wiedzy.png" alt="{str_strefa_wiedzy}" class="welcome-details-img">
                <h2 class="welcome-details-name">{str_strefa_wiedzy}</h2>
                <p class="welcome-details-description">
                    {str_jak_nasze_tech}
                </p>
                <a class="button button-transparent" href="{page_domain}{page_lang_name_short}/news">
                    <i class="fa fa-ellipsis-h"></i> {str_learn_more}
                </a>
            </div>
            <div class="col-6 col-r col-12-sm">
            </div>
        </div>

    </div>

<!-- ELSEIF OFERTA_KATEGORIE == 1 -->
    <!-- INCLUDE 1/shop_offer_kat.tpl -->
<!-- ELSE -->

   <!-- IF OFERTA_EMPTY -->

   <div class="empty">
      <h3>Brak wyników</h3>
   </div>

   <!-- ELSE -->

    <div class="shop-offer-container">
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

        <div class="shop-offer-content center">
            <h1>{shop_offer_tytul}</h1>
            <div class="shop-offer-header-info">
                {shop_offer_info}
            </div>
        </div>

            <!-- IF (GETID == 12) || (GETID == 1) || (GETID == 10) || (GETID == 9) || (GETID == 11) -->
			<div class="shop-offer-header">
                <div class="shop-offer-menu dropdown">
                    <!-- BEGIN dzialy1 -->
                            <!-- IF (dzialy1.ACTIVE) -->
                                <button class="dropdown-button">{dzialy1.tytul} <i class="fa fa-chevron-down" aria-hidden="true"></i></button>
                                    <!-- IF dzialy1.DZIALY2 -->
                                        <div class="shop-offer-menu-secondary dropdown-content">
                                        <!-- BEGIN dzialy2 -->
                                            <div class="shop-offer-menu-subcategory <!-- IF dzialy1.dzialy2.ACTIVE -->active<!-- ENDIF --> {dzialy1.dzialy2.label}">
                                                <a href="{dzialy1.dzialy2.link}">
                                                    <i class="fa fa-cogs shop-offer-menu-subcategory-system"></i>
                                                    {dzialy1.dzialy2.tytul}
                                                </a>
                                            </div>
                                        <!-- END dzialy2 -->
                                        </div>
                                    <!-- ENDIF -->
                            <!-- ENDIF -->
                    <!-- END dzialy1 -->
                </div>
                <div class="shop-offer-header-guide">
                    <p class="shop-offer-header-text">{str_guide1}</p>
                    <a href="{news_link_which_saddle}" class="button button-primary shop-offer-header-button">{str_guide2}</a>
                </div>
            </div>
            <!-- ENDIF -->

            <div class="shop-offer-products">
                <a class="shop-offer-products-anchor" name="products"></a>
               <!-- BEGIN oferty -->
                   <a href="{oferty.link}" class="shop-offer-product">
                       <div class="shop-offer-product-image-container">
                           {oferty.imageb}
                       </div>
                       <div class="shop-offer-product-details">
                           <p class="shop-offer-product-name">{oferty.nazwa}</p>
                           <p class="shop-offer-product-price">{oferty.cena_brutto_format}&nbsp;{shop_waluta}</p>
                       </div>
                   </a>
               <!-- END oferty -->
            </div>
            <!-- IF NAV -->
                <ul class="shop-offer-pagination">
                    <!-- IF NAVIGATION_BACK -->
                        <li><a href="{navigation_back}">&lt;</a></li>
                    <!-- ENDIF -->
                    <!-- BEGIN navigation -->
                        <!-- IF navigation.ACTIVE -->
                            <li class="active"><a href="{navigation.link}">{navigation.name}</a></li>
                        <!-- ELSE -->
                            <li><a href="{navigation.link}">{navigation.name}</a></li>
                        <!-- ENDIF -->
                    <!-- END navigation -->
                    <!-- IF NAVIGATION_NEXT -->
                        <li><a href="{navigation_next}" class="next">></a></li>
                    <!-- ENDIF -->
                </ul>
            <!-- ENDIF -->

        <!-- IF (GETID == 12) || (GETID == 1) || (GETID == 10) || (GETID == 9) || (GETID == 11) -->
        <div class="shop-offer-mobile-guide">
            <p class="shop-offer-header-text">{str_guide1}</p>
            <a href="{news_link_which_saddle}" class="button button-primary shop-offer-header-button">{str_guide2}</a>
        </div>
        <!-- ENDIF -->

        <div class="page-container with-border">
            <!-- INCLUDE 1/payment_and_help_box.tpl -->
        </div>
    </div>

   <!-- ENDIF -->

<!-- ENDIF -->

   <!-- IF GETID == 3 -->
    <div class="shop-offer-mobile-guide">
        <p class="shop-offer-header-text">{str_guide_bits}</p>
        <a href="{news_link_bits}" class="button button-primary shop-offer-header-button">{str_guide2}</a>
    </div>
   <!-- ENDIF -->

</div>