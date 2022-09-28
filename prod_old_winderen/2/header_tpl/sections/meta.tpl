<!-- BEGIN hreflang --><link rel="alternate" hreflang="{hreflang.iso}" href="{hreflang.link}" />
<!-- END hreflang -->
<meta name="p:domain_verify" content="3dec4bfc1fb5ec74316d4467a525d3fd"/>
<!-- IF METAOPENGRAF -->
<meta property="og:title" content="{page_title}" />
<meta property="og:type" content="article" />
<meta property="og:url" content="{page_url}" />
<meta property="og:image" content="{page_image_src}" />
<meta property="og:image:width" content="800"/>
<meta property="og:image:height" content="430"/>
<meta property="og:description" content="{page_description}" />
<!-- ENDIF -->
<!-- IF METATWITTER -->
<meta name="twitter:card" content="summary" />
<meta name="twitter:site" content="{page_domain}" />
<meta name="twitter:title" content="{page_title}" />
<meta name="twitter:description" content="{page_description}" />
<meta name="twitter:image" content="{page_image_src}" />
<!-- ENDIF -->
<meta name="p:domain_verify" content="7002aea7f7e64451a71c21777ac3348f"/>
<!-- IF METACANONICAL -->
<link rel="canonical" href="{canonical_url}" />
<!-- ENDIF -->
<!-- IF METADC -->
<meta name="DC.title" lang="{page_lang_name_short}" content="{page_title}">
<meta name="DC.description" lang="{page_lang_name_short}" content="{page_description}">
<meta name="DC.creator" content="{author}">
<meta name="DC.publisher" content="{firma_nazwa}">
<meta name="DC.language" content="{page_lang_name_short}">
<!-- ENDIF -->
<!-- IF METAGEOTAG -->
<meta name="geo.region" content="{metageotag_region}" />
<meta name="geo.placename" content="{metageotag_placename}" />
<meta name="geo.position" content="{metageotag_lat};{metageotag_lng}" />
<meta name="ICBM" content="{metageotag_lat}, {metageotag_lng}" />
<!-- ENDIF -->
<!-- IF OPENSEARCH -->
<link rel="search" type="application/opensearchdescription+xml" title="{opensearch_name}" href="{page_domain}dat/search.xml" />
<!-- ENDIF -->
<!-- IF RSS -->
<link rel="alternate" type="application/rss+xml" title="{rss_title}" href="{page_domain}{rss_link}" />
<!-- ENDIF -->
<!-- IF MOBILEAPP -->
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="{mobileapp_name}">
<!-- ENDIF -->
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<!-- IF SCHEMAORG -->
<script type = "application/ld+json" > {
   "@context": "http://schema.org",
   "@type": "WebSite",
   "name": "{firma_nazwa}",
   "alternateName": "{firma_nazwa}",
   "url": "{page_domain}"
}
</script>
<script type = "application/ld+json" > {
   "@context": "http://schema.org",
   "@type": "Organization",
   "address": {
      "@type": "PostalAddress",
      "addressLocality": "{firma_miasto}, Poland",
      "postalCode": "{firma_miasto_kod}",
      "streetAddress": "{firma_adres}"
   },
   "contactPoint": {
      "@type": "ContactPoint",
      "telephone": "{firma_telefon}",
      "contactType": "customer service"
   },
   "name": "{firma_nazwa}",
   "url": "{page_domain}",
   "logo": "{page_domain}templates/1/img/logo.png",
   "email": "{firma_email}",
   "faxNumber": "{firma_fax}",
   "telephone": "+48 {firma_telefon}"
}
</script>
<!-- IF SHOP_ITEM_ACTIVE -->
<script type = 'application/ld+json' > {
   "@context": "http://www.schema.org",
   "@type": "product",
   "brand": "{mkr_name}",
   "name": "{nazwa}",
   "productID": "{id}",
   "category": "{kategoria}",
   "image": "{page_domain}{image_big}",
   "description": "{page_description}",
   "offers": {
      "@type": "Offer",
      "priceCurrency": "{shop_waluta}",
      "price": "{cena_brutto}",
      "availability": "http://schema.org/InStock",
      "seller": {
         "@type": "Organization",
         "name": "{firma_nazwa}"
         }
      }
   }
}
</script>
<!-- ENDIF -->
<!-- ENDIF -->

<!-- IF ENVIRONMENT == 'prod' -->
<!-- IF FBPIXEL_VIEW -->

<!-- GoogleAnalytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-102333290-1', 'auto');
  ga('send', 'pageview');
  ga('set', 'anonymizeIp', true);
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-HHJLZF060R"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-HHJLZF060R');
</script>

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '{fbpixelid}');
fbq('track', 'PageView');
<!-- IF FBPIXEL_CONTENT -->
fbq('track', 'ViewContent', {
    content_name: '{nazwa}',
    content_type: 'product',
    content_ids: '{id}',
    value: {cena_brutto},
    currency: '{shop_waluta}'
});
<!-- ENDIF -->
</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id={fbpixelid}&ev=PageView&noscript=1"/></noscript>
<!-- End Facebook Pixel Code -->

<!-- ENDIF -->
<!-- ENDIF -->


<!-- IF ENVIRONMENT == 'prod' -->
<script>
!function (w, d, t) {
  w.TiktokAnalyticsObject=t;var ttq=w[t]=w[t]||[];ttq.methods=["page","track","identify","instances","debug","on","off","once","ready","alias","group","enableCookie","disableCookie"],ttq.setAndDefer=function(t,e){t[e]=function(){t.push([e].concat(Array.prototype.slice.call(arguments,0)))}};for(var i=0;i<ttq.methods.length;i++)ttq.setAndDefer(ttq,ttq.methods[i]);ttq.instance=function(t){for(var e=ttq._i[t]||[],n=0;n<ttq.methods.length;n++)ttq.setAndDefer(e,ttq.methods[n]);return e},ttq.load=function(e,n){var i="https://analytics.tiktok.com/i18n/pixel/events.js";ttq._i=ttq._i||{},ttq._i[e]=[],ttq._i[e]._u=i,ttq._t=ttq._t||{},ttq._t[e]=+new Date,ttq._o=ttq._o||{},ttq._o[e]=n||{};var o=document.createElement("script");o.type="text/javascript",o.async=!0,o.src=i+"?sdkid="+e+"&lib="+t;var a=document.getElementsByTagName("script")[0];a.parentNode.insertBefore(o,a)};

  ttq.load('CBODM63C77U606K84IAG');
  ttq.page();
}(window, document, 'ttq');
</script>
<!-- ENDIF -->


<!-- IF ENVIRONMENT == 'prod' -->
<!-- IF SHOP_ITEM_ACTIVE -->
<!-- TikTok Pixel Code -->
<script>
ttq.track('ViewContent', {
   content_id: {id},
   content_type: 'product',
   content_name: '{page_title}',
   quantity: 1,
   price: {cena_brutto},
   currency: '{shop_waluta}',
});
</script>
<!-- ENDIF -->
<!-- ENDIF -->