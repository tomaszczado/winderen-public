
<div class="container">
    <div class="page-container-offset"></div>
    <div class="page-container">
        <h1 class="page-header">{tytul}</h1>
        <!-- IF BANNERS1P -->
        <div class="page-header-slider">
            <ul id="banners1">
                <!-- BEGIN banners1p -->
                    <li>
                        {banners1p.image}
                        <h3>{banners1p.info}</h3>
                    </li>
                <!-- END banners1p -->
            </ul>
        </div>
        <!-- ENDIF -->
        <div class="container page-content">
            {tresc}
            <!-- IF BANNERS4P -->
            <h2>{str_ambasadorzy}</h2>
            <!-- ENDIF -->
        </div>
        <!-- IF BANNERS4P -->
        <div class="page-footer-slider">
            <ul id="banners4" class="banners">
                <!-- BEGIN banners4p -->
                    <li>{banners4p.image}</li>
                <!-- END banners4p -->
            </ul>

            <script type="text/javascript">
                $("#banners4").responsiveSlides({
                    auto: true,
                    pager: true,
                    speed: 300,
                });
            </script>
        </div>
        <!-- ENDIF -->

        <!-- IF LABEL == 'saddle_half_pad' -->
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

<!-- IF SUBPAGESEXT -->
   <!-- INCLUDE 1/inc/subpages.tpl -->
<!-- ELSE -->
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
<!-- ENDIF -->
