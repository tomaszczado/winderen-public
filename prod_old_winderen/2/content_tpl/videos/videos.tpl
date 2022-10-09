<section id="videos">
  <div class="container">
    <div class="inner-container">
      <div class="header logo-icon-with-label">
        <div class="icon">
          <div class="circular-icon">
            <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-youtube.svg" alt="{str_filmy}" width="48" height="48">
          </div>
        </div>
        <h2>{str_videos_header}</h2>
      </div>
      <div class="videos">
      
        <!-- BEGIN news -->
          <div class="video">
            <div class="iframe">
              <div class="outer-iframe">
                <div class="inner-iframe">
                  {news.tresc}
                </div>
              </div>
            </div>
            <div class="details">
              <h3>{news.tytul}</h3>

              <!-- IF news.info -->
                <div class="info">{news.info}</div>
              <!-- ENDIF -->

            </div>
          </div>
        <!-- END news -->

      </div>
    </div>
  </div>
</section>