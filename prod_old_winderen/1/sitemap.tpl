<h1>{sitemap_title} {page_domain_nice}</h1>

<article class="sitemap pagecontent">
  <!-- BEGIN pages_main -->
    <h2><a href="{pages_main.link}">{pages_main.tytul}</a></h2>
    <!-- IF INFO1 -->
    <p>{pages_main.info}</p>
    <!-- ENDIF -->
    <ul>
    <li style="display: none;"></li>
    <!-- BEGIN pages -->
       <li>
          <h4><a href="{pages.link}" title="{pages.info}">{pages.tytul}</a></h4>
          <!-- IF INFO2 -->
          <span>{pages.info}</span>
          <!-- ENDIF -->
       </li>
    <!-- END pages -->
    </ul>
  <!-- END pages_main -->
</article>
