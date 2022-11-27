<section id="our-friends">
  <div class="container">
    <div class="inner-container">
      <div class="header logo-icon-with-label">
        <div class="logo">
          <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/logo-only-icon.svg" alt="{str_friends}" width="34" height="48">
        </div>
        <h2>{str_friends}</h2>
      </div>
      <div class="content">
        <div class="friends">

          <!-- BEGIN wfriends -->
            <div class="friend">
              <div class="image">
                <picture class="rwd-background lazy-picture">
                  <img src="{page_domain}{template_path}images/1px.gif" data-src="{wfriends.image_src}" alt="{wfriends.imie} {wfriends.nazwisko}">
                </picture>
              </div>
              <div class="name-and-socials">
                <div class="name">
                  {wfriends.imie}
                  <br>
                  {wfriends.nazwisko}
                </div>
                <div class="socials">
                  <!-- IF wfriends.FACEBOOK -->
                    <a rel="nofollow" href={wfriends.facebook} target="_blank" rel="noreferrer">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-facebook.svg" width="1" height="1" alt="Facebook">
                    </a>
                  <!-- ENDIF -->
                  <!-- IF wfriends.INSTAGRAM -->
                    <a rel="nofollow" href={wfriends.instagram} target="_blank" rel="noreferrer">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-instagram.svg" width="1" height="1" alt="Instagram">
                    </a>
                  <!-- ENDIF -->
                  <!-- IF wfriends.YOUTUBE -->
                    <a rel="nofollow" href={wfriends.youtube} target="_blank" rel="noreferrer">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-youtube.svg" width="1" height="1" alt="Website">
                    </a>
                  <!-- ENDIF -->
                  <!-- IF wfriends.WWW -->
                    <a rel="nofollow" href={wfriends.www} target="_blank" rel="noreferrer">
                      <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-social-simple-www.svg" width="1" height="1" alt="Website">
                    </a>
                  <!-- ENDIF -->
                </div>
              </div>
            </div>
          <!-- END friends -->

        </div>
        <div class="info">
          <div class="general-text">{str_homepage_our_friends_promo_text}</div>
          <div class="bottom">
            <div class="icon">
              <span class="circular-icon">
                <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-heart.svg" width="10" height="10" alt="{str_friends}">
              </span>
            </div>
            <div class="additional-text">{str_homepage_our_friends_promo_thank_you_text}</div>
          </div>
        </div>
      </div>
      <div class="text-with-button">
        <div class="buttons">
          <a class="button button-with-hover button-with-black-background-hover button-with-icon" href="{friends_link}" title="{str_homepage_our_friends_meet_them_all_text}">
            <span class="button-icon">
              <img class="lazy-image" src="{page_domain}{template_path}images/1px.gif" data-src="{page_domain}{template_path}images/icons-heart.svg" alt="{str_homepage_our_friends_meet_them_all_text}" width="1" height="1">
            </span>
            <span class="button-label">{str_homepage_our_friends_meet_them_all_text}</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>