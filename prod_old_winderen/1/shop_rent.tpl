
<div class="container">
    <div class="page-container-offset"></div>
    <div class="page-container">
        <h1 class="page-header shop-rent-header">{tytul}</h1>
        <div class="container page-content shop-rent-content">
            <div class="row">
                <div class="col-6 col-12-sm shop-rent-details justify">
                    {tresc}
                </div>
                <div class="col-6 col-12-sm shop-rent-offer">
                    <img class="img-fill" src="{page_domain}{template_images}shop_rent/rent{GETID}.png" alt="{tytul}">
                    <ul class="shop-rent-offer-options">
                        <!-- BEGIN ofertahire -->
                            <li>
                                <div class="shop-rent-offer-details">
                                    <div class="shop-rent-offer-name">
                                        {ofertahire.nazwa}<br /><span class="color-blue">TEST</span>
                                    </div>
                                    <!-- IF ofertahire.ROZMIAR -->
                                    <div class="shop-rent-offer-size">{str_size}: {ofertahire.rozmiar}</div>
                                    <!-- ENDIF -->

                                    <!-- IF ofertahire.KOSZYK -->
                                    <form name="cartadd{ofertahire.id}" id="cartadd{ofertahire.id}" action="{page_domain}{koszyk_link}/" method="post" onsubmit="ga('send', 'event', 'Cart', 'add');">
                                        <button type="submit" id="cartadd{id}" class="button-primary shop-item-add-to-cart-button">
                                            <i class="fa fa-cart-arrow-down"></i>
                                            <span id="cartaddid{ofertahire.id}s">{str_return_wypozycz}</span>
                                        </button>
                                        <input type="hidden" name="koszyk_akcja" value="dodaj" />
                                        <input type="hidden" name="koszyk_test" value="1" />
                                        <input type="hidden" name="oferta_id" value="{ofertahire.id}" />
                                        <input type="hidden" name="ilosc" value="1" />
                                    </form>
                                    <!-- ELSE -->
                                        <br />
                                        <a href="{ofertahire.link}" class="button-primary shop-item-add-to-cart-button">
                                            <i class="fa fa-cart-arrow-down"></i>
                                            <span id="cartaddid{ofertahire.id}s">{str_return_wypozycz}</span>
                                        </a>
                                    <!-- ENDIF -->
                                </div>
                                <div class="shop-rent-offer-photo">
                                    {ofertahire.image}
                                </div>
                            </li>
                        <!-- END ofertahire -->
                    </ul>
                    <div class="shop-rent-return">
                        <div>{str_return_pytanie}</div>
                        <a href="{shop_return_link}" class="button button-transparent">{str_return_button}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>