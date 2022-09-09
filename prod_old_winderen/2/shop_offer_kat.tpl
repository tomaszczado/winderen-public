
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

    <!-- IF GETID == 3 -->
    <div class="shop-offer-header">
        <div class="shop-offer-menu dropdown">
        </div>
        <div class="shop-offer-header-guide">
            <p class="shop-offer-header-text">{str_guide_bits}</p>
            <a href="{news_link_bits}" class="button button-primary shop-offer-header-button">{str_guide2}</a>
        </div>
    </div>
    <!-- ENDIF -->

    <div class="shop-offer-products">
        <a class="shop-offer-products-anchor" name="products"></a>
        <!-- BEGIN kategorie -->
        <a href="{kategorie.link}" class="shop-offer-product">
            <div class="shop-offer-product-image-container">
                {kategorie.image}
            </div>
            <div class="shop-offer-product-details">
                <p class="shop-offer-product-name">{kategorie.tytul}</p>
                <!-- IF kategorie.CENA_BRUTTO -->
                <p class="shop-offer-product-price">{kategorie.cena_brutto_format}&nbsp;{shop_waluta}</p>
                <!-- ENDIF -->
            </div>
        </a>
        <!-- END kategorie -->
    </div>
</div>