<div class="account">
  <div class="icon-wrapper">
    <span class="icon">
      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-account.svg" alt="{profil_edit_link}" width="1" height="1">
      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-account-gray.svg" alt="{profil_edit_link}" width="1" height="1">
    </span>
  </div>
  <div class="values">
    <div class="inner-values">
    
      <!-- IF LOGGED -->
        <div class="select-label">{str_my_account_client}: {klient_imie}</div>
        <div class="value">
          <a href="{profil_edit_link}" title="{str_my_account_label}">{str_my_account_label}</a>
        </div>
        <div class="value">
          <a href="{profil_orders_link}" title="{str_order_twoje}">
            {str_order_twoje}
            <!-- IF KLIENT_PLATNOSCI -->
              <span class="notification dropdown-notification notification-red">
                &excl;
              </span>
            <!-- ENDIF -->
          </a>
        </div>
        
        <!-- IF KLIENT_ID_TYP == 1 -->
          <div class="value">
            <a href="{partnership_link}" title="{str_partnerstrefa}">{str_partnerstrefa}</a>
          </div>
        <!-- ENDIF -->

        <div class="value logout">
          <a href="{page_domain}?logout=1" title="{str_logout}">{str_logout}</a>
        </div>

      <!-- ELSE -->

        <div class="select-label">{str_my_account_label}</div>
        <div class="value">
          <a href="{profil_login_link}" title="{str_login}">{str_login}</a>
        </div>
        <div class="value">
          <a href="{profil_edit_link}" title="{str_noaccount}">{str_noaccount}</a>
        </div>

      <!-- ENDIF -->
      
    </div>
  </div>
</div>