
<section id="banner">
  <div class="background">
    <div class="inner-background">
      <picture class="rwd-background rwd-background-overlay lazy-picture">
        <source srcset="images/1px.gif" data-srcset="images/banner-discover-the-products-gel-bits-system-desktop.jpg" media="(min-width: 1200px)">
        <source srcset="images/1px.gif" data-srcset="images/banner-discover-the-products-gel-bits-system-tablet.jpg" media="(min-width: 768px)">
        <img src="images/1px.gif" data-src="images/banner-discover-the-products-gel-bits-system-mobile.jpg" alt="TODO">
      </picture>
    </div>
  </div>
  <div class="content logo-icon-with-label">
    <div class="logo">
      <img class="lazy-image" src="images/1px.gif" data-src="images/logo-gel-bits-system.svg" alt="TODO" width="34" height="48">
    </div>
    <h1>Gel Bits System TODO</h1>
  </div>
</section>

{tresc}



<div class="page2 container">
    <div class="page-container page-container-new">

        <!-- IF BANNERS1P -->
        <div class="page-header-slider">
            <!-- BEGIN banners1p -->
            <div class="page-header-slider-image">
                <!-- IF banners1p.INFO -->
                    {banners1p.info}
                    {banners1p.ban_html}
                <!-- ELSE -->
                    {banners1p.image}
                <!-- ENDIF -->
            </div>
            <!-- END banners1p -->
        </div>
        <!-- ENDIF -->

        <div class="container page-content">

            <!--{tresc}-->

            <!-- IF SUBPAGES -->
            <section class="pagesubpages">
                <ul>
                <!-- BEGIN subpages -->
                <li>
                    <a href="{subpages.link}" <!-- IF subpages.IMAGESMALL -->class="subpagesimagea"<!-- ENDIF -->>
                        <strong>{subpages.tytul}</strong>
                        <!-- IF subpages.IMAGESMALL -->
                        <div class="subpagesimage">{subpages.image_small}</div>
                        <!-- ENDIF -->
                        <br /><span>{subpages.info}</span>
                    </a>
                </li>
                <!-- END subpages -->
                </ul>
            </section>
            <!-- ENDIF -->

        </div>

        <!-- IF LABEL == 'saddlepad' -->
            <!-- INCLUDE 1/winderen/saddle_half_pad.tpl -->
        <!-- ENDIF -->

    </div>

</div>



<!-- IF AUTHOR -->
   <!-- INCLUDE 1/inc/author.tpl -->
<!-- ENDIF -->

<!-- IF SOCIAL -->
   <!-- INCLUDE 1/inc/social.tpl -->
<!-- ENDIF -->

<!-- IF ARCHIVE -->
   <!-- INCLUDE 1/inc/archive.tpl -->
<!-- ENDIF -->

<!-- IF FILES -->
   <!-- INCLUDE 1/inc/attach.tpl -->
<!-- ENDIF -->

<!-- IF MAPS -->
   <!-- INCLUDE 1/inc/maps.tpl -->
<!-- ENDIF -->

<!-- IF PARAMETERS -->
   <!-- INCLUDE 1/inc/parameters.tpl -->
<!-- ENDIF -->