<!-- IF OFERTA_FILTR -->
<div class="tooltip">Oglądasz tylko część oferty, ograniczoną filtrami. <a href="{oferta_filtr_reset}">Zobacz wszystko</a></div>
<!-- ENDIF -->

<ul class="shopofferlist">
<!-- BEGIN oferty -->
<li>
   <ul class="shopofferlistitem">
      <li class="item1">
         <a href="{oferty.link}"><img src="{oferty.imagem_src}" alt="{oferty.nazwa}" /></a>
      </li>
      <li class="item2">
         <h4>
            <a href="{oferty.link}" title="{oferty.nazwa}">{oferty.nazwa}</a>
            <!-- IF oferty.PRODUKT_NOWOSC --><span class="produktnew">Nowość!</span><!-- ENDIF -->
            <!-- IF oferty.PRODUKT_PROMOCJA --><span class="produktpromo">{oferty.promocja_value}</span><!-- ENDIF -->
         </h4>
         <p class="opis">
            {oferty.opis}
            <a href="{oferty.link}">{str_more}...</a>
         </p>
      </li>
      <li class="item3">
         <div class="cfg">
            <a href="{oferty.link}" class="button">{str_shop_konfiguruj}</a>
         </div>

         <form name="cartadd{oferty.id}" id="cartadd{oferty.id}" action="{koszyk_link}/" method="post" class="hide">
            <ul>
               <!-- IF oferty.PRODUKT_KOSZYK -->
               <li><strong>{oferty.cena_brutto_format}&nbsp;{shop_waluta}</strong></li>
               <!-- IF oferty.PRODUKT_PROMOCJA -->
               <li><p style="text-decoration: line-through;">{oferty.cena_stara}&nbsp;{shop_waluta}</p></li>
               <!-- ENDIF -->
               <li class="hide"><small>{oferty.cena_netto_format}&nbsp;{shop_waluta} (netto)</small></li>
               <!-- ENDIF -->
               <li class="dostepnosc">{oferty.dostepnosc_nazwa}: <span class="dostepnosc{oferty.dostepnosc_dni}">{oferty.dostepnosc_dni_string}</span></li>
            </ul>
            <!-- IF oferty.PRODUKT_KOSZYK -->
            <input type="hidden" name="koszyk_akcja" value="dodaj" />
            <input type="hidden" name="oferta_id" value="{oferty.id}" />
            <input type="hidden" name="ilosc" value="1" />
               <!-- IF oferty.PRODUKT_WKOSZYKU -->
               <label for="cartadd{oferty.id}" class="button cartadd">
                  <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                  w&nbsp;koszyku
                  <input type="submit" id="cartadd{oferty.id}" value="w koszyku" class="hide" />
               </label>
               <!-- ELSE -->
               <label for="cadd{oferty.id}" class="button cartadd">
                  <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                  do&nbsp;koszyka
                  <input type="submit" id="cadd{oferty.id}" value="do koszyka" class="hide" />
               </label>
               <!-- ENDIF -->
            <!-- ENDIF -->
         </form>
      </li>
   </ul>
</li>
<!-- END oferty -->
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
         <li class="active"><a href="{navigation.link}">{navigation.name}</a></li>
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