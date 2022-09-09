<!-- IF ZESTAWY_ILOSC == 0 -->
    Not found (0)
<!-- ELSEIF ZESTAWY_ILOSC > 2 -->
    Too many found
<!-- ELSE -->
    <script>
        $("#oferta_id").val({id});
        $(".productbrutto").html("{cena_brutto} {shop_waluta}");
        <!-- IF CENA_STARA_POKAZ -->
            $(".shop-item-price-old").html("{cena_stara} {shop_waluta}");
        <!-- ELSE -->
            $(".shop-item-price-old").html("");
        <!-- ENDIF -->
        <!-- IF INCART -->
            $("#cartaddid").addClass("cartadded");
            $("#cartaddids").html('{str_incart}');
        <!-- ELSE -->
            $("#cartaddid").removeClass("cartadded");
            $("#cartaddids").html('{str_addtocart}');
        <!-- ENDIF -->
        AnchorSet({id});
    </script>

    <div class="shop-item-picture-slide swiper-slide">
        <img class="shop-item-picture" src="{imageb_src}" alt="{nazwa}">
    </div>
    <!-- BEGIN galeria -->
        <div class="shop-item-picture-slide swiper-slide">
            <img class="shop-item-picture" src="{galeria.image_big_url}">
        </div>
    <!-- END galeria -->

    <script>
        document.productPictureSwiper.slideTo(0, 0, false);
    </script>
<!-- ENDIF -->