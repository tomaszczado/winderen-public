<ul class="shop-item-breadcrumbs">
    <li><a href="{shop_offer_link}">{str_shop}</a><i class="fa fa-angle-right"></i></li>
    <!-- BEGIN path -->
        <!-- IF path.LINK -->
            <li><a href="{path.link}">{path.name}</a><i class="fa fa-angle-right"></i></li>
        <!-- ELSE -->
            <li>{path.name}</li>
        <!-- ENDIF -->
    <!-- END path -->
</ul>