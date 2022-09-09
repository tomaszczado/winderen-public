<ul class="navbar-menu-options"><!-- BEGIN menu1 -->
   <!-- IF menu1.ACTIVE -->
   <li class="navbar-menu-option">
      <a href="{menu1.link}" class="active">{menu1.tytul}</a>
   <!-- ELSE -->
   <li class="navbar-menu-option">
      <a href="{menu1.link}">{menu1.tytul}</a>
   <!-- ENDIF -->
      <!-- IF menu1.MENU2 -->
         <ul class="navbar-submenu-options">
            <!-- BEGIN menu2 -->
               <!-- IF menu1.menu2.ACTIVE -->
               <li class="navbar-submenu-option active">
                  <a href="{menu1.menu2.link}" class="active">
                  <img src="{menu1.menu2.image_small_src}" alt="{menu1.menu2.tytul_alt}">
                     {menu1.menu2.tytul}
                  </a>
               </li>
               <!-- ELSE -->
               <li class="navbar-submenu-option">
                  <a href="{menu1.menu2.link}">
                  <img src="{menu1.menu2.image_small_src}" alt="{menu1.menu2.tytul_alt}">
                     {menu1.menu2.tytul}
                  </a>
               </li>
               <!-- ENDIF -->
            <!-- END menu2 -->
         </ul>
      <!-- ENDIF -->
   </li>
<!-- END menu1 -->
</ul>
