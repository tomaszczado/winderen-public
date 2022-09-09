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

        <h1 class="page-header">{tytul}</h1>

        <div class="container page-content">

            {tresc}

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