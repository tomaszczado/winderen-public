<section id="friends">
  <div class="container">
    <div class="inner-container">
      <div class="header logo-icon-with-label">
        <div class="logo">
          <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/logo-only-icon.svg" alt="Logo" width="34" height="48">
        </div>
        <div class="quotation">
          {str_friends_quote}
          <br><br>
          — {str_friends_quote_author}
        </div>
      </div>

      <div class="friends">
        <!-- BEGIN friends -->
          <div class="friend">
            <div class="image">
              <picture class="rwd-background lazy-picture">
                <img src="{page_domain}{template_path}images/1px.gif" data-src="{friends.image_src}" alt="{friends.imie} {friends.nazwisko}">
              </picture>
            </div>
            <div class="name-and-socials">
              <div class="name">
                {friends.imie}
                <br>
                {friends.nazwisko}
              </div>
              <div class="socials">
                <!-- IF friends.FACEBOOK -->
                  <a rel="nofollow" href={friends.facebook} target="_blank" rel="noreferrer">
                    <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-facebook.svg" width="1" height="1" alt="Facebook">
                  </a>
                <!-- ENDIF -->
                <!-- IF friends.INSTAGRAM -->
                  <a rel="nofollow" href={friends.instagram} target="_blank" rel="noreferrer">
                    <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-instagram.svg" width="1" height="1" alt="Instagram">
                  </a>
                <!-- ENDIF -->
                <!-- IF friends.WWW -->
                  <a rel="nofollow" href={friends.www} target="_blank" rel="noreferrer">
                    <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-youtube.svg" width="1" height="1" alt="Website">
                  </a>
                <!-- ENDIF -->
                <!-- IF friends.WWW -->
                  <a rel="nofollow" href={friends.www} target="_blank" rel="noreferrer">
                    <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-www.svg" width="1" height="1" alt="Website">
                  </a>
                <!-- ENDIF -->
              </div>
            </div>
          </div>
        <!-- END friends -->
      </div>
    </div>
  </div>
</section>