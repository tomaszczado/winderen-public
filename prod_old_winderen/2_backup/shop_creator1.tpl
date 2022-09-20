<div class="container">
    <div class="page-container-offset"></div>
    <div class="page-container">
        <h1 class="page-header shop-rent-header">Tytuł</h1>
        <div class="container page-content shop-creator1-content">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed emolumenta communia esse dicuntur, recte autem
            facta et peccata non habentur communia. Sed tamen est aliquid, quod nobis non liceat, liceat illis. Conferam
            avum tuum Drusum cum C. In quibus doctissimi illi veteres inesse quiddam caeleste et divinum putaverunt.
            Transfer idem ad modestiam vel temperantiam, quae est moderatio cupiditatum rationi oboediens.

            Quid enim me prohiberet Epicureum esse, si probarem, quae ille diceret? Facillimum id quidem est, inquam.
            Eodem modo is enim tibi nemo dabit, quod, expetendum sit, id esse laudabile. Hic nihil fuit, quod
            quaereremus. Summum ením bonum exposuit vacuitatem doloris; Immo istud quidem, inquam, quo loco quidque,
            nisi iniquum postulo, arbitratu meo. Non minor, inquit, voluptas percipitur ex vilissimis rebus quam ex
            pretiosissimis.

            Collatio igitur ista te nihil iuvat. Duo Reges: constructio interrete. Ego vero volo in virtute vim esse
            quam maximam; Quasi ego id curem, quid ille aiat aut neget. Aliter enim nosmet ipsos nosse non possumus.
            Compensabatur, inquit, cum summis doloribus laetitia. Sed ego in hoc resisto; Ergo instituto veterum, quo
            etiam Stoici utuntur, hinc capiamus exordium.

        </div>
    </div>

    <br />
    <div class="page-container">
        <div class="container page-content shop-creator1-main">

            <h2>Stworz wlasny czaprak</h2>

            <h3>Wybierz typ czapraka:</h3>
            <ul class="shop-creator1-step1">
                <!-- BEGIN czaprak_typ -->
                <li class="step1-{czaprak_typ.id}">
                    <div class="image">
                        <img src="{page_domain}dat/creator1/czaprak_{czaprak_typ.id}.png">
                    </div>
                    <span>{czaprak_typ.name}</span>
                </li>
                <!-- END czaprak_typ -->
            </ul>


            <div class="row row-vertical-center">
                <div class="col-7 col-12-sm">
                    <h3>Wybierz kolor czapraka [A]:</h3>
                    <ul class="shop-creator1-step2" id="shop-creator1-color1">
                        <!-- BEGIN color_a -->
                        <li>
                            <div class="image">
                                <img src="{page_domain}dat/creator1/color_A_{color_a.name}.png">
                            </div>
                            <span>{color_a.name}</span>
                        </li>
                        <!-- END color_a -->
                    </ul>

                    <h3>Wybierz kolor taśmy ozdobnej [B]:</h3>
                    <ul class="shop-creator1-step2" id="shop-creator1-color2">
                        <!-- BEGIN color_b -->
                        <li>
                            <div class="image">
                                <img src="{page_domain}dat/creator1/color_B_{color_b.name}.png">
                            </div>
                            <span>{color_b.name}</span>
                        </li>
                        <!-- END color_b -->
                    </ul>

                    <h3>Wybierz kolor lamówki [C]:</h3>
                    <ul class="shop-creator1-step2" id="shop-creator1-color3">
                        <!-- BEGIN color_c -->
                        <li>
                            <div class="image">
                                <img src="{page_domain}dat/creator1/color_C_{color_c.name}.png">
                            </div>
                            <span>{color_c.name}</span>
                        </li>
                        <!-- END color_c -->
                    </ul>

                    <h3>Umiejscowienie haftu:</h3>

                    <div class="shop-creator1-haft" id="shop-creator1-haft1">
                        <ul>
                            <li>Lewa strona:</li>
                            <!-- BEGIN haft_l -->
                            <li><span class="shop-creator1-button">{haft_l.name}</span></li>
                            <!-- END color_c -->
                        </ul>
                    </div>

                    <div class="shop-creator1-haft" id="shop-creator1-haft2">
                        <ul>
                            <li>Prawa strona:</li>
                            <!-- BEGIN haft_r -->
                            <li><span class="shop-creator1-button">{haft_r.name}</span></li>
                            <!-- END color_r -->
                        </ul>
                    </div>

                </div>
                <div class="col-5 col-12-sm shop_creator1_prev">
                    <div class="shop_creator1_img">
                        <img src="" id="shop_creator1_img1">
                        <img src="" id="shop_creator1_img2">
                        <img src="" id="shop_creator1_img3">
                        <img src="" id="shop_creator1_img4">
                        <img src="" id="shop_creator1_img5">
                    </div>
                </div>
            </div>

        </div>
    </div>

    <br />
    <div class="page-container">
        <div class="row page-content shop-creator1-cart">
            <div class="col-6 col-12-sm">
                <div class="shop-creator1-sumary">
                    <strong>Typ:</strong> <span id="czaprak_typ"></span><br />
                    <strong>Kolor czapraka:</strong> <span id="kolorA"></span><br />
                    <strong>Kolor taśmy ozdobnej:</strong> <span id="kolorB"></span><br />
                    <strong>Kolor lamówki:</strong> <span id="kolorC"></span><br />
                    <strong>Haft:</strong> <span id="haft"></span><br />
                </div>
            </div>
            <div class="col-6 col-12-sm right">
                <form name="formcartadd" id="formcartadd{id}" action="{page_domain}{koszyk_link}/" method="post">

                    <div class="shop-cart-ilosc">
                        Ilość sztuk:
                        <div class="shop-cart-dropdown">
                            <select name="ilosc" id="quant">
                                <!-- is there any for instruction? -->
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                            </select>
                        </div>
                    </div>
                    <div><strong>Cena za sztukę:</strong> {cena_brutto_format} {shop_waluta}</div>
                    <h3>Suma: <span id="creator1total">1000</span> {shop_waluta}</h3>
                    <button type="submit" id="cartadd" class="button-primary shop-item-add-to-cart-button">
                        <i class="fa fa-cart-arrow-down"></i>
                        <span id="cartaddids">{str_addtocart}</span>
                    </button>
                    <input type="hidden" name="cart_label" id="cart_label" value="{str_incart}" />
                    <input type="hidden" name="koszyk_akcja" value="dodaj" />
                    <input type="hidden" name="oferta_id" id="oferta_id" value="{id}" />
                    <input type="hidden" name="oferta_jm" id="oferta_jm{id}" value="" />
                    <input type="hidden" name="netto{id}" id="netto{id}" value="{cena_netto_format}" />
                    <input type="hidden" name="vat{id}" id="vat{id}" value="{vat}" />
                    <input type="hidden" name="tmp_brutto" id="tmp_brutto" value="{cena_brutto_format}" />
                    <input type="hidden" name="info" id="info" value="" />
                </form>

            </div>
        </div>
    </div>

</div>


<script>
    $(".shop-creator1-step1 li").click(function () {
        $(".shop-creator1-step1 li").removeClass();
        $(this).addClass("active");
        shop_creator1();
    });
    $("#shop-creator1-color1 li").click(function () {
        $("#shop-creator1-color1 li").removeClass();
        $(this).addClass("active");
        shop_creator1();
    });
    $("#shop-creator1-color2 li").click(function () {
        $("#shop-creator1-color2 li").removeClass();
        $(this).addClass("active");
        shop_creator1();
    });
    $("#shop-creator1-color3 li").click(function () {
        $("#shop-creator1-color3 li").removeClass();
        $(this).addClass("active");
        shop_creator1();
    });
    $("#shop-creator1-haft1 li").click(function () {
        $("#shop-creator1-haft1 li").removeClass();
        $(this).addClass("active");
        shop_creator1();
    });
    $("#shop-creator1-haft2 li").click(function () {
        $("#shop-creator1-haft2 li").removeClass();
        $(this).addClass("active");
        shop_creator1();
    });

    // start
    shop_creator1('def');

    function shop_creator1(tryb) {
        var czaprak_typ = $(".shop-creator1-step1 .active span").text();
        $("#czaprak_typ").text(czaprak_typ);

        var kolorA = $("#shop-creator1-color1 .active span").text();
        $("#kolorA").text(kolorA);

        var kolorB = $("#shop-creator1-color2 .active span").text();
        $("#kolorB").text(kolorB);

        var kolorC = $("#shop-creator1-color3 .active span").text();
        $("#kolorC").text(kolorC);

        var haft1 = $("#shop-creator1-haft1 .active span").text()
        var haft2 = $("#shop-creator1-haft2 .active span").text();
        $("#haft").text(haft1 + '/' + haft2);


        if (tryb == 'def') {
            // def
            czaprak_typ = 'Skokowy';
            kolorA = 'navy';
            kolorB = 'silver';
            kolorC = 'navy';
            haft1 = 'Winderen';
            haft2 = 'Puste';
            // info
            $("#czaprak_typ").text(czaprak_typ);
            $("#kolorA").text(kolorA);
            $("#kolorB").text(kolorB);
            $("#kolorC").text(kolorC);
            $("#haft").text(haft1 + '/' + haft2);
            // zaznacz
            $(".shop-creator1-step1 li:nth-child(1)").addClass("active");
            $("#shop-creator1-color1 li:nth-child(6)").addClass("active");
            $("#shop-creator1-color2 li:nth-child(12)").addClass("active");
            $("#shop-creator1-color3 li:nth-child(6)").addClass("active");
            $("#shop-creator1-haft1 li:nth-child(2)").addClass("active");
            $("#shop-creator1-haft2 li:nth-child(4)").addClass("active");
        }

        // obrazek typ
        if (czaprak_typ == 'Skokowy') {
            var czaprak = 'jump';
        } else if (czaprak_typ == 'Ujezdzeniowy') {
            var czaprak = 'dres';
        } else if (czaprak_typ == 'Ujezdzeniowy petite') {
            var czaprak = 'petite';
        } else {
            var czaprak = 'pony';
        }

        // obrazek
        var plik1 = '{page_domain}dat/creator1/A/' + czaprak + '_a_' + kolorA + '.png';
        $('#shop_creator1_img1').attr("src", plik1);

        var plik2 = '{page_domain}dat/creator1/B/' + czaprak + '_b_' + kolorB + '.png';
        $('#shop_creator1_img2').attr("src", plik2);

        var plik3 = '{page_domain}dat/creator1/C/' + czaprak + '_c_' + kolorC + '.png';
        $('#shop_creator1_img3').attr("src", plik3);

        if (haft1 == 'Winderen') {
            var haft1f = 'winderen';
        } else if (haft1 == 'Twoje logo') {
            var haft1f = 'logo';
        } else {
            var haft1f = 'empty';
        }
        var plik4 = '{page_domain}dat/creator1/logo/' + haft1f + '_' + czaprak + '_a.png';
        $('#shop_creator1_img4').attr("src", plik4);

        if (haft2 == 'Winderen') {
            var haft2f = 'winderen';
        } else if (haft2 == 'Twoje logo') {
            var haft2f = 'logo';
        } else {
            var haft2f = 'empty';
        }
        var plik5 = '{page_domain}dat/creator1/logo/' + haft2f + '_' + czaprak + '_b.png';
        $('#shop_creator1_img5').attr("src", plik5);

        // konsola
        console.log(czaprak_typ);
        console.log(plik1);
        console.log(plik2);
        console.log(plik3);
        console.log(plik4);
        console.log(plik5);

        // opis
        var info = 'Typ: ' + czaprak_typ +
            "\nKolor czapraka: " + kolorA +
            "\nKolor taśmy: " + kolorB +
            "\nKolor lamówki: " + kolorC +
            "\nHaft: " + haft1 + '/' + haft2;
        $("#info").val(info);

    }

    // ilosc
    $(document).ready(function () {
        $('#quant').on('change', function () {
            var cena_brutto = parseFloat($('#tmp_brutto').val());
            var ilosc = parseInt(this.value);
            var total = ilosc * cena_brutto;
            $('#creator1total').html(total);
        });
    });
</script>