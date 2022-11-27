<section id="testimonials">
  <div class="container">
    <div class="inner-container">
      <div class="testimonials">
      
        <!-- BEGIN news -->
          <!-- <div class="row row-vertical-center media-box">
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
          </div>-->
          
          <div class="testimonial">
            <div class="image">
              <div class="inner-image">

                <!-- IF news.IMAGE -->
                  <picture class="rwd-background lazy-picture">
                    <img src="{page_domain}{template_path}images/1px.gif" data-src="{news.image_src}" alt="{news.tytul}">
                  </picture>
                <!-- ENDIF -->

              </div>
            </div>
            <div class="details">
              <div class="name-and-link"> 
                <div class="name">{news.tytul}</div>

                <!-- IF news.REDIRECT_ICO == 'instagram' -->
                  <div class="link">
                    <a href="{news.redirect_http}" title="{news.redirect_label}" target="_blank">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-instagram.svg" alt="{news.redirect_label}" width="48" height="48">{news.redirect_label}
                    </a>
                  </div>
                <!-- ELSEIF news.REDIRECT_ICO == 'facebook' -->
                  <div class="link">
                    <a href="{news.redirect_http}" title="{news.redirect_label}" target="_blank">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-facebook.svg" alt="{news.redirect_label}" width="48" height="48">{news.redirect_label}
                    </a>
                  </div>
                <!-- ELSEIF news.REDIRECT_ICO == 'youtube' -->
                  <div class="link">
                    <a href="{news.redirect_http}" title="{news.redirect_label}" target="_blank">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-youtube.svg" alt="{news.redirect_label}" width="48" height="48">{news.redirect_label}
                    </a>
                  </div>
                <!-- ELSE -->
                  <div class="link">
                    <a href="{news.redirect_http}" title="{news.redirect_label}" target="_blank">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-link.svg" alt="{news.redirect_label}" width="48" height="48">{news.redirect_label}
                    </a>
                  </div>
                <!-- ENDIF -->

              </div>
              <div class="quotation">{news.tresc}</div>
            </div>
          </div>

        <!-- END news -->
        
      </div>
    </div>
  </div>
</section>