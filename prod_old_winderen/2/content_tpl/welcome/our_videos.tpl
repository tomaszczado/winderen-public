<!-- IF wvideo -->
<section id="our-videos">
  <div class="container">
    <div class="inner-container">
      <div class="header logo-icon-with-label">
        <div class="logo">
          <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/logo-only-icon.svg" alt="{str_filmy}" width="34" height="48">
        </div>
        <h2>{str_filmy}</h2>
      </div>
      <div class="videos">

        <!-- BEGIN wvideo -->
          <div class="video">
            <a href="{wvideo.link}" title="{wvideo.tytul}" target="_blank">
              <div class="image">
                <picture class="rwd-background rwd-background-overlay lazy-picture">
                  <img src="{page_domain}{template_path}images/1px.gif" data-src="{wvideo.image_src}" alt="{wvideo.tytul}">
                </picture>
                <span class="new-label">New TODO</span>
                <span class="play circular-icon">
                  <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-play.svg" alt="{wvideo.tytul}" width="1" height="1">
                </span>
              </div>
            </a>
          </div>
        <!-- END friends -->

      </div>

      <div class="text-with-button">
        <h3>{str_najnowsze_produkcje}</h3>
        <div class="buttons">
          <a class="button button-with-blue-background-hover button-with-icon" href="{page_domain}{page_lang_name_short}/news/0/2/" title="{str_najnowsze_produkcje}">
            <span class="button-icon">
              <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-youtube.svg" alt="{str_homepage_our_videos_watch_more_text}" width="1" height="1">
            </span>
            <span class="button-icon">
              <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-youtube-black.svg" alt="{str_homepage_our_videos_watch_more_text}" width="1" height="1">
            </span>
            <span class="button-label">{str_homepage_our_videos_watch_more_text}</span>
          </a>
        </div>
      </div>

    </div>
  </div>
</section>
<!-- ENDIF -->