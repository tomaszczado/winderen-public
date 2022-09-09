<div id="pagesubpages">
   <h3 style="display:none">{pagesubpages} {subpages_count}</h3>
   <ul>
   <!-- BEGIN subpages -->
      <li>
         <a href="{subpages.link}" <!-- IF subpages.IMAGESMALL -->class="subpagesimagea"<!-- ENDIF -->>
            <strong>{subpages.tytul}</strong>
            <!-- IF subpages.IMAGESMALL -->
            <div class="subpagesimage">{subpages.image_small}</div>
            <!-- ENDIF -->
            <span>{subpages.edit_time_string0}<br />{subpages.info}</span>
         </a>
         <!-- IF SUBPAGES_FAVORITES -->
            <!-- IF subpages.FAVORITES_ACTIVE -->
            <p id="fav{subpages.id}">jest w ulubionych</p>
            <!-- ELSE -->
            <p id="fav{subpages.id}"><a href="javascript:favorites_save('{subpages.record_fav}', 'fav{subpages.id}') ">dodaj do ulubionych</a></p>
            <!-- ENDIF -->
         <!-- ENDIF -->
         <!-- IF subpages.PARAMETERS -->
            <!-- BEGIN parameters -->
              <dl>
               <!-- IF subpages.parameters.NAME == 'GWARANCJA' -->
               <dt><b>{subpages.parameters.nazwa}</b></dt><dd><b>{subpages.parameters.wartosc}</b> {subpages.parameters.jednostka}</dd>
               <!-- ELSE -->
               <dt>{subpages.parameters.nazwa}</dt><dd><b>{subpages.parameters.wartosc}</b> {subpages.parameters.jednostka}</dd>
               <!-- ENDIF -->
            </dl>
            <!-- END parameters -->
         <!-- ENDIF -->
      </li>
   <!-- END subpages -->
   </ul>
   <br class="clear" />
   
   <!-- IF NAV -->
   <div class="paging">
      <ul>
         <!-- IF NAVIGATION_BACK -->
         <li><a href="{navigation_back}" class="prev"><</a></li>
         <!-- ENDIF -->
         <!-- BEGIN navigation -->
            <!-- IF navigation.ACTIVE -->
            <li><span>{navigation.name}</span></li>
            <!-- ELSE -->
            <li><a href="{navigation.link}">{navigation.name}</a></li>
            <!-- ENDIF -->
         <!-- END navigation -->
         <!-- IF NAVIGATION_NEXT -->
         <li><a href="{navigation_next}" class="next">></a></li>
         <!-- ENDIF -->
      </ul>
   </div>
   <!-- ENDIF -->   
   <br class="clear" />
</div>



<!-- IF RECOMMENDS -->
<div id="pagerecommends">
   <h3>{pagerecommends} {recommends_count}</h3>
   <ul>
   <!-- BEGIN recommends -->
      <li>
         <a href="{recommends.link}">
            <strong>{recommends.tytul}</strong>
            <span>{recommends.info}</span>
         </a>
      </li>
   <!-- END recommends -->
   </ul>
</div>
<!-- ENDIF -->    