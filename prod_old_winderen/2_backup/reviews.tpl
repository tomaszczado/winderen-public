<div class="container">
    <div class="page-container-offset"></div>
    <div class="page-container">
        <h1 class="page-header">{str_wasze_opinie}</h1>
        <div class="container page-content reviews-content">
            <div class="reviews-menu">
                <ul>
                    <!-- BEGIN rkategorie -->
                        <!-- IF rkategorie.ACTIVE -->
                        <li><a href="{rkategorie.link}" class="active">{rkategorie.tytul}</a></li>
                        <!-- ELSE -->
                            <li><a href="{rkategorie.link}">{rkategorie.tytul}</a></li>
                        <!-- ENDIF -->
                    <!-- END rkategorie -->
                </ul>
            </div>

            <div class="reviews-content">
                <ul id="reviews">
                <!-- BEGIN reviews -->
                <li class="hide">
                <div class="reviews-item">
                    <div class="col-4 col-12-sm">
                        <div class="reviews-item-image">{reviews.image}</div>
                        <div class="reviews-item-stars">
                            <span class="reviews-item-stars5" style="width:{reviews.procent}px"></span>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="">{reviews.tresc}</div>
                        <div class="reviews-item-author">
                            {reviews.author}
                            <span class="flag-icon flag-icon-{reviews.lngiso}"></span>
                            <div class="reviews-item-date">{str_zakup} {reviews.add_time_str}</div>
                        </div>
                    </div>
                </div>
                </li>
                <!-- END reviews -->
                </ul>
                <br class="clear">
                <div class="center" style="margin-bottom: 1rem; margin-top: -1rem;">
                    <div id="ReviewsLoadMore" class="button button-primary">{str_pokaz_wiecej}</div>
                </div>
            </div>

        </div>
    </div>
</div>


<script>
$(document).ready(function () {
    ShowMoreUl('#reviews', 15, 'hide', '#ReviewsLoadMore');
});
</script>

<script>
function ShowMoreUl(nazwa, ilosc, klasa, nazwa_more)
{
    var size_li = $(nazwa+" li").length;
    //size_li = $("#InstaList li").size();
    var x = ilosc;
    if (x >= size_li) {
        $(nazwa_more).hide();
    }
    $(nazwa+' li:lt(' + x + ')').removeClass(klasa);
    $(nazwa_more).click(function () {
        x = (x + ilosc <= size_li) ? x + ilosc : size_li;
        //alert(x);
        $(nazwa+' li:lt(' + x + ')' ).removeClass(klasa);
        if (x>=size_li) {
            $(nazwa_more).hide();
        }
    });
}
</script>