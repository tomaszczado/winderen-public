<!-- IF wnews -->
  <section id="knowledge-zone">
    <div class="container">
      <div class="inner-container">
        <div class="header logo-icon-with-label">
          <div class="logo">
            <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/logo-only-icon.svg" alt="{str_strefa_wiedzy}" width="34" height="48">
          </div>
          <h2>{str_strefa_wiedzy}</h2>
        </div>
        <div class="articles">

          <!-- BEGIN wnews -->
            <div class="article">
              <div class="column">
                <div class="image">
                  <picture class="rwd-background lazy-picture">
                    <img src="{page_domain}{template_path}images/1px.gif" data-src="{wnews.image_src}" alt="{wnews.tytul}">
                  </picture>
                </div>
              </div>
              <div class="column">
                <h3>{wnews.tytul}</h3>
                <div class="lead">Even in the cleanest stable, our horses and we are exposed... TODO</div>
                <div class="link">
                  <a href="{wnews.link}" title="{wnews.tytul}">
                    <span class="icon circular-icon">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-book.svg" alt="{wnews.tytul}" width="48" height="48">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-book-gray.svg" alt="{wnews.tytul}" width="48" height="48">
                    </span>
                    <span class="label">{str_general_read_now}</span>
                  </a>
                </div>
              </div>
            </div>
          <!-- END friends -->

        </div>

        <div class="text-with-button">
          <h4>{str_homepage_knowledge_zone_text}</h4>
          <div class="buttons">
            <a class="button button-with-black-background-hover button-with-icon" href="{page_domain}{page_lang_name_short}/news" title="{str_general_more_articles}">
              <span class="button-icon">
                <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-book.svg" alt="{str_general_more_articles}" width="1" height="1">
              </span>
              <span class="button-label">{str_general_more_articles}</span>
            </a>
          </div>
        </div>

      </div>
    </div>
  </section>
<!-- ENDIF -->