<div class="container">
    <div class="page-container">
        <h1 class="page-header">{tytul}</h1>

        <div class="container page-content">
            {tresc}
        </div>
        

         <!-- IF SUBPAGES -->
         <div class="questions-wrapper">
            <ul class="faq-accordion">
               <!-- BEGIN subpages -->
                  <li class="faq-accordion-item">
                     <div class="faq-accordion-item-title">
                        <label>{subpages.tytul}</label>
                     </div>
                     <div>
                        <i class="fa fa-plus" aria-hidden="true"></i>
                     </div>
                  </li>
                     <ul class="faq-accordion-subitems">
                        <!-- <a href="{subpages.link}">
                           <img src="{template_images}page_ico_{subpages.LABEL}_{page_lang_name_short}.jpg?v=1.2" alt="{subpages.tytul}">
                        </a> -->
                        <li class="faq-accordion-subitem">
                           {subpages.tresc}
                        </li>
                     </ul>
                  
               <!-- END subpages -->
               <li class="faq-accordion-separator"></li>   
            </ul>
         </div>
         <!-- ENDIF -->
    </div>
</div>

