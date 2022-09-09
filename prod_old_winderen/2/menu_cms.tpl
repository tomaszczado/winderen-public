<div id="sidebar">
   <ul class="menu-accordion">
      <li class="menu-accordion-item menu-accordion-item-start">
         <label>
            <a href="{page_domain}{page_lang_name_short}" title="Home page">Welcome</a>
         </label>
      </li>
   <!-- BEGIN menu1 -->
      <!-- IF menu1.ACTIVE -->
      <li class="menu-accordion-item">
         <label class="active">
            <!-- IF menu1.MENU2 -->
            {menu1.tytul}
            <!-- ELSE -->
            <a href="{menu1.link}">{menu1.tytul}</a>
            <!-- ENDIF -->
         </label>
         <!-- IF menu1.MENU2 -->
            <div>
               <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
         <!-- ENDIF -->
      </li>
      <!-- ELSE -->
      <li class="menu-accordion-item">
         <label>
            <!-- IF menu1.MENU2 -->
            {menu1.tytul}
            <!-- ELSE -->
            <a href="{menu1.link}">{menu1.tytul}</a>
            <!-- ENDIF -->
         </label>

         <!-- IF menu1.MENU2 -->
            <div>
               <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
         <!-- ENDIF -->
      </li>
      <!-- ENDIF -->
         <!-- IF menu1.MENU2 -->
            <ul class="menu-accordion-subitems">
            <!-- BEGIN menu2 -->
               <!-- IF menu1.menu2.ACTIVE -->
               <li class="menu-accordion-subitem">
                  <a href="{menu1.menu2.link}">
                     <div class="navbar-submenu-option-part">
                        <img src={menu1.menu2.image_small_src} alt="{menu1.menu2.tytul_alt}">
                     </div>
                     <div class="navbar-submenu-option-part">
                        {menu1.menu2.tytul}
                     </div>
                  </a>
               </li>
               <!-- ELSE -->
               <li class="menu-accordion-subitem">
                  <a href="{menu1.menu2.link}">
                     <div class="navbar-submenu-option-part">
                        <img src="{menu1.menu2.image_small_src}" alt="{menu1.menu2.tytul_alt}">
                     </div>
                     <div class="navbar-submenu-option-part">
                        {menu1.menu2.tytul}
                     </div>
                  </a>
               </li>
               <!-- ENDIF -->
            <!-- END menu2 -->
            </ul>
         <!-- ENDIF -->
   <!-- END menu1 -->

   <li class="menu-accordion-item">
      <label class="active">{str_delivery_country}&nbsp;&nbsp;<span class="flag-icon flag-icon-{country_iso_selected}"></span>
      </label>
      <div>
         <i class="fa fa-chevron-down" aria-hidden="true"></i>
      </div>
   </li>


      <ul class="menu-accordion-subitems">
         <li class="menu-accordion-subitem">
         <a href="javascript:void(0)" onclick="document.querySelector('body').classList.remove('no-scroll'); DivShowHide('countrysplash'); return false;">
               <div class="navbar-submenu-option-part" style="text-align: center;">
                  <span class="fa fa-map-marker" style="font-size:180%"></span>
               </div>
               <div class="navbar-submenu-option-part" style="line-height:1.3">
                  {str_change_country}
               </div>
            </a>
         </li>
      </ul>


   <li class="menu-accordion-separator"></li>
   <!-- IF LOGGED -->
      <a href="{profil_orders_link}">
         <li class="menu-accordion-item-static orders">
               <label class="active">
                  {str_order_twoje}
               </label>
               <!-- IF KLIENT_PLATNOSCI -->
               <div class="vertical-center">
                  <div class="notification notification-red">
                     &excl;
                  </div>
               </div>
               <!-- ENDIF -->
               <i class="fa fa-chevron-right" aria-hidden="true"></i>
         </li>
      </a>

      <!-- IF KLIENT_ID_TYP == 1 -->
      <a href="{partnership_link}">
         <li class="menu-accordion-item-static partners">
               <label class="active">{str_partnerstrefa}</label>
               <i class="fa fa-chevron-right" aria-hidden="true"></i>
         </li>
      </a>
      <!-- ENDIF -->

      <li class="menu-accordion-separator"></li>
   <!-- ENDIF -->

   </ul>
</div>