<!-- IF GETIDD == 2 -->
  <!-- INCLUDE 2/content_tpl/videos/banner.tpl -->
  <!-- INCLUDE 2/content_tpl/videos/videos.tpl -->
<!-- ELSEIF GETIDD == 3 -->
  <!-- INCLUDE 2/content_tpl/testimonials/banner.tpl -->
  <!-- INCLUDE 2/content_tpl/testimonials/testimonials.tpl -->
<!-- ELSE -->
  TODO NEWS.TPL
<!-- ENDIF -->

<!--===={GETIDD}=====-->

<!--
< !-- IF GETIDD == 2 -- >

<div class="container">
    <div class="page-container page-films">
        <h1 class="news-header">{str_filmy}</h1>
        <div class="container page-content">
            <ul class="films">
                < !-- BEGIN news -- >
                <li class="">
                    <div class="films-iframe">{news.tresc}</div>
                    <div class="films-info">
                        <h2>{news.tytul}</h2>
                        <p>{news.info}</p>
                    </div>
                </li>
                < !-- END news -- >
            </ul>
        </div>
    </div>
</div>

< !-- ELSEIF GETIDD == 3 -- >

<div class="container">
    <div class="page-container page-media">
        <h1 class="news-header">{str_napisali_o_nas}</h1>
        <div class="container page-content">
            < !-- BEGIN news -- >
            <div class="row row-vertical-center media-box">
                <div class="col-4 col-12-sm center">
                    <div class="media-image">
                        < !-- IF news.IMAGE -- >
                        <img src="{news.image_src}" alt=" ">
                        < !-- ENDIF -- >
                    </div>
                </div>
                <div class="col-8 col-12-sm center">
                    <div class="media-info">
                        <div class="media-info-content">{news.tresc}</div>
                        <h2>{news.tytul}</h2>
                    </div>
                </div>
            </div>
            < !-- END news -- >
        </div>
    </div>
</div>

< !-- ELSE -- >

<div class="container">
    <div class="page-container page-news">

        <div class="row row-vertical-center welcome-details-row news-wiedza">
            <div class="col-6 col-l col-12-sm center">
                <img src="{template_images}welcome2/icons/strefa_wiedzy.png" alt="{str_strefa_wiedzy}" class="welcome-details-img">
                <h2 class="welcome-details-name">{str_strefa_wiedzy}</h2>
                <p class="welcome-details-description">
                    {str_jak_nasze_tech}
                </p>

            </div>
            <div class="col-6 col-r col-12-sm">
            </div>
        </div>


        <div class="container page-content">
            < !-- BEGIN news -- >
            <a href="{news.link}" class="news-row-link">
            <div class="row row-vertical-top news-row">
                <div class="col-7 col-12-sm">
                    <span class="news-row-image">
                        <img src="{news.image_src}" alt=" ">
                    </span>
                </div>
                <div class="col-6 col-12-sm">
                    <div class="news-article-info">
                        <h2 class="news-article__title">{news.tytul}</h2>
                        <p class="news-article__preview">{news.info}</p>
                        <div class="right news-article-readmore">
                            <span class="news-row-button button button-primary" href="{news.link}">{str_news_read_more}</span>
                        </div>
                    </div>
                </div>
            </div>
            </a>
            < !-- END news -- >
        </div>
    </div>
</div>

< !-- ENDIF -- >
-->