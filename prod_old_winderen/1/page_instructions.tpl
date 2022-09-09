<div class="container">
    <div class="page-container">
        <h1 class="page-header">{tytul}</h1>
        <!-- IF SUBPAGES -->
            <div class="instructions-list">
                <!-- BEGIN subpages -->
                    <div class="instructions-list-item">
                        <!-- IF subpages.IMAGESMALL -->
                            <img class="instructions-list-item-image" src="{subpages.image_small_src}" alt="{subpages.tytul}">
                        <!-- ENDIF -->
                        <div class="instructions-list-item-name">{subpages.tytul}</div>
                        <a href={subpages.link} class="button-primary instructions-list-button">
                            <span>{str_read_instruction}</span>
                        </a>
                    </div>
                <!-- END subpages -->
            </div>
         <!-- ENDIF -->
    </div>
</div>