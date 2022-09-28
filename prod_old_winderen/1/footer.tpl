<!-- IF CMS_ERROR -->
<!-- ELSE -->
<!-- IF MENU_PROFIL -->
</div>
</div>
<!-- ENDIF -->

<div class="clear"></div>
</article>

<div class="footer-container">
    <footer class="footer">

        <!-- IF PAGE_LANG_INFO -->
        <div></div>
        <!-- ENDIF -->

        <div class="welcome-menu">
            <ul class="">
                <!-- BEGIN wmenu -->
                <li class="">
                    <a href="{wmenu.link}">
                        <div class="">
                            <img src="{wmenu.image_small_src}" alt="{wmenu.tytul_alt}">
                        </div>
                        <div class="">
                            {wmenu.tytul}
                        </div>
                    </a>
                </li>
                <!-- END wmenu -->
            </ul>
        </div>

        <!-- IF SHOP_CHECKOUT_ACTIVE -->
        <!-- ELSE -->

        <!-- ENDIF -->
        <hr class="footer-separator">
        <ul class="footer-links">
            <li class="footer-icons-container">
                <ul class="footer-icons footer-icons-social">
                    <!-- IF PAGE_COUNTRY == 226 -->
                    <li><a rel="nofollow" href="https://www.facebook.com/Winderen-USA-Innovative-Equestrian-Solutions-102379511525335/" title="Facebook"><i class="fab fa-facebook-square"></i></a></li>
                    <li><a rel="nofollow" href="https://www.instagram.com/winderen_equestrian_usa/" title="Instagram"><i class="fab fa-instagram"></i></a></li>
                    <li><a rel="nofollow" href="{firma_url_yt}" title="YouTube"><i class="fab fa-youtube-square"></i></i></a></li>
                    <!-- ELSE -->
                    <li><a rel="nofollow" href="{firma_url_fb}" title="Facebook"><i class="fab fa-facebook-square"></i></a></li>
                    <li><a rel="nofollow" href="{firma_url_instagram}" title="Instagram"><i class="fab fa-instagram"></i></i></a></li>
                    <li><a rel="nofollow" href="{firma_url_yt}" title="YouTube"><i class="fab fa-youtube-square"></i></a></li>
                    <!-- ENDIF -->
                </ul>
            </li>
            <li class="footer-icons-container"></li>
            <li class="footer-icons-logos footer-icons-logos1">
                    <!-- BEGIN platnoscikraj -->
                    <!-- IF platnoscikraj.IMAGE -->
                    <img src="{platnoscikraj.image_src}" alt="{platnoscikraj.nazwa}" height="25" title="{platnoscikraj.nazwa}">
                    <!-- ENDIF -->
                    <!-- END platnoscikraj -->
            </li>
            <li class="footer-icons-logos footer-icons-logos2">
                <img src="{page_domain}{template_images}/shipping/{przesylka_id}.png" height="25" alt="{przesylka_nazwa}">
            </li>
            <li class="footer-tos-container">
                <a href="{page_domain}{page_lang_name_short}/legal/" target="_blank">{str_regulaminy}</a>
            </li>

            <li>
                <div class="country-select center">
                    <div class="country-select-label"></div>
                    <div class="country-select-menu shop-offer-menu dropdown">
                        <button class="dropdown-button">
                            <span class="flag-icon flag-icon-{country_iso_selected}"></span>
                            {country_selected}
                            <i class="fa fa-chevron-down" aria-hidden="true"></i>
                        </button>
                        <div class="shop-offer-menu-secondary dropdown-content">
                            <div class="shop-offer-menu-subcategory">
                                <a href="javascript:void(0)" onclick="window.scrollTo(0, 0); DivShowHide('countrysplash'); return false;">
                                    {str_change_country}
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>

            <li>
                <div class="dropdown navbar-dropdown">
                    <button class="dropdown-button navbar-button">
                        <!-- BEGIN currency -->
                        <!-- IF currency.ACTIVE -->
                        <div>{currency.kod}</div>
                        <!-- ENDIF -->
                        <!-- END currency -->
                        <i class="fa fa-chevron-up" aria-hidden="true"></i>
                    </button>
                    <div class="dropdown-content-up">
                        <!-- BEGIN currency -->
                        <a rel="noindex, nofollow" href="{currency.link}{welcome_pyt}/&currency={currency.id}/">{currency.kod}</a>
                        <!-- END currency -->
                    </div>
                </div>
                <input type="hidden" id="shop_waluta" name="shop_waluta" value="{shop_waluta}">
            </li>
            <li>
                <div class="dropdown navbar-dropdown">
                    <button class="dropdown-button navbar-language navbar-button svg-link">
                        <!-- BEGIN language -->
                        <!-- IF language.ACTIVE -->
                            {language.name}
                            <span class="fa fa-comment"></span>
                        <!-- ENDIF -->
                        <!-- END language -->
                        <i class="fa fa-chevron-up" aria-hidden="true"></i>
                    </button>
                    <div class="dropdown-content-up">
                        <!-- BEGIN language -->
                        <a class="navbar-dropdown-language svg-link" href="{language.link}">
                            &nbsp;{language.name}
                        </a>
                        <!-- END language -->
                    </div>
                </div>
            </li>
        </ul>
        <div class="footer-copyright">
            {str_footer_copyright}
        </div>

        <div class="footer-totop">
            <a href="{page_url}#top"><i class="fa fa-arrow-circle-up" aria-hidden="true"></i></a>
        </div>
    </footer>

    <!-- INCLUDE 1/inc/viewing_as_banner.tpl -->

</div>
<!-- ENDIF -->

<div id="dimmedlog" class="dimmed" style="display: none" onClick="DivUnload('loginpopup')"></div>
<script>
    $("#alogin").click(function () {
        $('#loginpopup').each(function () {
            $("#dimmedlog").fadeIn();
            $(this).css('left', ($(window).width() - $(this).outerWidth()) / 2 + 'px');
            $(this).css('top', ($(window).height() - $(this).outerHeight()) / 2 + 'px');
            $("#loginpopup").fadeIn();
            return false;
        });
        return false;
    });
</script>

<script>
// y position
$(window).scroll(function() {
    let isMobile = window.matchMedia("only screen and (max-width: 760px)").matches;
    if (isMobile == true) {
        var scrollwin = $(window).scrollTop();
        //alert(scrollwin);
        if (scrollwin > 1000) {
            $(".footer-totop").css("display", "block");
        } else {
            $(".footer-totop").css("display", "none");
        }
    }
});
</script>

<!-- INCLUDE 1/inc/footer_ga4.tpl -->

<script src="{page_domain}templates/plugins/jarallax/jarallax.min.js"></script>
<link rel="stylesheet" href="{page_domain}templates/plugins/jarallax/jarallax.css" type="text/css" media="screen"  />
<script>
    objectFitImages();
    jarallax(document.querySelectorAll('.jarallax'));
    jarallax(document.querySelectorAll('.jarallax-keep-img'), {
        keepImg: true,
    });
</script>

<script>
    //$(".flag-icon-place").html('<span class="flag-icon flag-icon-{country_iso_selected}"></span>');
</script>

<!-- IF COUNTRYSPLASH -->
<div class="countrysplash" id="countrysplash">
<!-- ELSE -->
<div class="countrysplash hide" id="countrysplash">
<!-- ENDIF -->
    <div class="countrysplashselected">
        {str_kraj}:
        <span class="flag-icon flag-icon-{country_iso_selected}"></span>
        <strong>{country_selected}</strong>
    </div>
    <p>If this is wrong, please pick your country below to get the best Winderen experience</p>
    <a href="{shop_offer_link}&country={country_iso_selected}" rel="noindex, nofollow" class="button button-primary">{str_go_to_shop}</a>

    <!-- BEGIN countryregion -->
    <div class="lang-item {countryregion.active}">
        <h3 class="countryregion{countryregion.rid}">
            <i class="fa fa-chevron-down" aria-hidden="true"></i>
            <label>{countryregion.rname}</label>
        </h3>
        <ul class="lang-subitem">
        <!-- BEGIN countryflags -->
            <li>
                <a href="{countryflags.link}?country={countryflags.iso}" rel="noindex, nofollow">
                    <span class="flag-icon flag-icon-{countryflags.iso}"></span>
                    {countryflags.nicename} ({countryflags.iso})
                </a>
            </li>
        <!-- END countryflags -->
        </ul>
    </div>
    <!-- END countryregion -->
</div>

<!-- IF KLAVIYO -->

<!-- IF KLAVIYO_KLIENT_LOGIN -->
<script type="application/javascript" async src="https://static.klaviyo.com/onsite/js/klaviyo.js?company_id={KLAVIYO_API_KEY}"></script>
<script>
 var _learnq = _learnq || [];
 if ('{klient_email_real}') {
    _learnq.push(['identify', {
       '$email' : '{klient_email_real}'
    }]);
  }
</script>
<!-- ENDIF -->

<!-- IF KLAVIYO_ADD_NL -->
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://manage.kmail-lists.com/ajax/subscriptions/subscribe",
  "method": "POST",
  "headers": {
    "content-type": "application/x-www-form-urlencoded",
    "cache-control": "no-cache"
  },
  "data": {
    "g": "{KLAVIYO_ADD_PROFILE_LNG}",
    "$fields": "$first_name,$last_name,$source",
    "email": "{klient_email_real}",
    "$first_name": "{klient_imie}",
    "$last_name": "{klient_nazwisko}",
    "$source": "Custom Form"
  }
}
$.ajax(settings).done(function (response) {
  console.log(response);
});
</script>
<!-- ENDIF -->

<!-- ENDIF -->

<!-- IF COOKIES -->
<div class="cookie-content hide">{str_cookie_content}</div>
<div class="cookie-content-ok hide">{str_cookie_content_ok}</div>
<script src="{page_domain}{template_main}whcookies.js"></script>
<!-- ENDIF -->

</body>
</html>