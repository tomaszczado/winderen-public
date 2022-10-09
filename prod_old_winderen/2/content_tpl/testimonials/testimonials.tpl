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
                <div class="link">
                  <a href="#" title="Instagram" target="_blank">
                    <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-instagram.svg" alt="{news.tytul}" width="48" height="48">@riderreviews TODO
                  </a>
                </div>
              </div>
              <div class="quotation">{news.tresc}.</div>
            </div>
          </div>

        <!-- END news -->
        
      </div>
    </div>
  </div>
</section>