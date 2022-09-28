<div class="ship-to-overlay">
  <div class="ship-to-inner-overlay">
    <div class="header">
      <div class="label">{str_header_ship_to_country_of_delivery}</div>
      <div class="flag">
        <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/flags-4x3/{country_iso_selected}.svg" width="1" height="1" alt="{country_selected}">
      </div>
      <div class="country">{country_selected}</div>
    </div>
    <div class="info">{str_header_ship_to_content}</div>
    <div class="buttons">
      <a class="button button-blue with-background button-with-icon" href="{shop_offer_link}&country={country_iso_selected}" rel="noindex, nofollow" title="{str_go_to_shop}">
        <span class="button-icon"><img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-bag-blue.svg" alt="{str_go_to_shop}" width="1" height="1"></span>
        <span class="button-icon"><img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-bag-black.svg" alt="{str_go_to_shop}" width="1" height="1"></span>
        <span class="button-label">{str_go_to_shop}</span>
      </a>
    </div>
    <div class="continents-and-countries">
    
      <!-- BEGIN countryregion -->
        <div class="continent">
          <div class="name">{countryregion.rname}</div>
          <div class="countries">
            <ul>
            
              <!-- BEGIN countryflags -->
                  <li>
                      <a href="{countryflags.link}?country={countryflags.iso}" rel="noindex, nofollow" title="{countryflags.nicename} ({countryflags.iso})">
                          <!--<span class="flag-icon flag-icon-{countryflags.iso}"></span>-->
                          <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/flags-4x3/{countryflags.iso}.svg" width="1" height="1" alt="{countryflags.iso}">
                          {countryflags.nicename} ({countryflags.iso})
                      </a>
                  </li>
              <!-- END countryflags -->
              
            </ul>
          </div>
        </div>
      <!-- END countryregion -->

    </div>
  </div>
</div>