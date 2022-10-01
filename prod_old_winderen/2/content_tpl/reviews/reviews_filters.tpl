<section id="reviews-filters">
  <div class="container">
    <div class="inner-container">
      <div class="wrapper">
        <div class="selection">{str_wszystkie_opinie}</div>
        <div class="filters">
          <!-- BEGIN rkategorie -->
            <!-- IF rkategorie.ACTIVE -->
              <div class="filter selected">
                <a href="{rkategorie.link}" title="{rkategorie.tytul}">{rkategorie.tytul}</a>
              </div>
            <!-- ELSE -->
              <div class="filter">
                <a href="{rkategorie.link}" title="{rkategorie.tytul}">{rkategorie.tytul}</a>
              </div>
            <!-- ENDIF -->
          <!-- END rkategorie -->
        </div>
      </div>
    </div>
  </div>
</section>