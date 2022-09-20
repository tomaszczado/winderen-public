<!DOCTYPE html>
<html lang="{page_lang_name_short}">
<head>
<meta charset="utf-8" />
<!-- IF ENVIRONMENT == 'prod' -->
<!-- ELSE -->
<style>.content { margin-top: 30px; }</style>
<!-- ENDIF -->
<link rel="stylesheet" href="{page_domain}{template_adds}main.css" type="text/css" media="screen, print"  />
<!-- IF CSSADD1 -->
<link rel="stylesheet" href="{page_domain}{template_adds}{CSSADD1}.css?v=1.1" type="text/css" media="screen"  />
<!-- ENDIF -->
<!-- IF CSSADD2 -->
<link rel="stylesheet" href="{page_domain}{template_adds}{CSSADD2}.css" type="text/css" media="screen"  />
<!-- ENDIF -->
<script src="{page_domain}{template_main}main.js"></script>
<title>{page_title}</title>
<meta name="robots" content="{metarobots}" />
<meta name="Description" content="{page_description}" />
<meta name="Keywords" content="{page_keywords}" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
<base href="{page_domain}" />
<link rel="manifest" href="{page_domain}site.webmanifest">
<meta name="theme-color" content="#ffffff">
<link rel="dns-prefetch" href="https://www.facebook.com">
<link rel="dns-prefetch" href="https://connect.facebook.net">
<link rel="dns-prefetch" href="https://www.google-analytics.com">
<link rel="dns-prefetch" href="https://adservice.google.pl">
<link rel="dns-prefetch" href="https://ad.doubleclick.net">
<link rel="preload" href="{page_domain}{template_adds}main.css" as="style">
<link rel="preload" href="{page_domain}templates/plugins/flag-icon-css-master/css/flag-icon.css" as="style">
<link rel="preload" href="{page_domain}templates/plugins/fonta/css/font-awesome.min.css" as="style">


{html_head}
<!-- INCLUDE 1/inc/html_header.tpl -->
</head>
<body>
{html_body1}
<!-- INCLUDE 1/inc/html_body.tpl -->
<a name="top"></a>

<!-- IF MESSAGES -->
<div id="dimmed" class="dimmed" onClick="DivUnload('popupwindow')"></div>
<div id="popupwindow" class="popupwindow centerPopup">
   <div class="popupclose" onClick="DivUnload('popupwindow')"><i class="fa fa-close" aria-hidden="true"></i></div>
   <ul class="messages">
      <!-- BEGIN message -->
       <li>{message.message}</li>
      <!-- END message -->
   </ul>
</div>
<script>
$(function centerPopup(){
	$('.centerPopup').each(function(){
		$(this).css('left',($(window).width()-$(this).outerWidth())/ 2 + 'px');
		$(this).css('top',($(window).height()-$(this).outerHeight())/ 2 + 'px');
		document.getElementById('popupwindow').style.display='block';
	});
});
</script>
<!-- ENDIF -->

<!-- IF CMS_ERROR -->
<!-- ELSE -->
<header>
  <nav class="navbar fixed-top">
    <div class="navbar-section navbar-hamburger-menu">
      <button type="button" class="navbar-menu-button navbar-button" aria-label="menu">
        <i id="navbar-menu-icon" class="fa fa-bars"></i>
      </button>
    </div>

    <div class="navbar-section navbar-logo-section">
      <a href="{page_domain}" class="svg-link navbar-logo" aria-label="Start page">
        <object data="{template_images}logo.svg">{firma_nazwa}</object>
      </a>
      <a href="{page_domain}" class="svg-link navbar-logo-small" aria-label="Start page">
        <object data="{template_images}logo2.svg">{firma_nazwa}</object>
      </a>
    </div>

    <div class="navbar-menu fixed-top">
      <!-- INCLUDE 1/submenu_cms.tpl -->
    </div>

    <div class="navbar-section navbar-spacer"></div>
  </nav>

  <div class="navbar-right-menu fixed-top">
    <ul class="navbar-nav">
      <li>
        <!-- IF SHOP_ITEM_ACTIVE -->
        <!-- ELSEIF SHOP_OFFER_ACTIVE -->
        <!-- ELSEIF SHOP_CART_ACTIVE -->
        <!-- ELSEIF SHOP_CHECKOUT_ACTIVE -->
        <!-- ELSE -->
          <!-- IF SHOPICON -->
			<a class="navbar-buy" href="{shop_offer_link}">
				{str_navbar_buy}
				<span class="flag-icon flag-icon-{country_iso_selected}"></span>
			</a>
          <!-- ELSE -->
          	<a class="navbar-buy" href="{shop_offer_link}">
              {str_navbar_buy}
              <span class="flag-icon flag-icon-{country_iso_selected}"></span>
        	</a>
          <!-- ENDIF -->
        <!-- ENDIF -->
      </li>
        <!-- INCLUDE 1/header_switcher_menu.tpl -->
    </ul>
  </div>

</header>

<div class="menu-container hidden">
  <nav class="menu">
    <div class="menu-items">
        <!-- INCLUDE 1/menu_cms.tpl -->
    </div>
    <nav class="navbar">
      <ul class="navbar-nav-mobile">
          <!-- INCLUDE 1/header_switcher_menu.tpl -->
      </ul>
    </nav>
  </nav>
</div>
<div class="menu-overlay hidden"></div>

<article class="content">
      <!-- IF MENU_PROFIL -->
         <!-- INCLUDE 1/profil_header.tpl -->
      <!-- ENDIF -->
<!-- ENDIF -->
