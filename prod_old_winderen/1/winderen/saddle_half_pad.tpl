<map name="page6" id="page6">
<area id="wimgm0" alt="" title="BALLISTIC NYLON UPPER SHELL" shape="poly" coords="7,201,8,176,54,122,128,81,193,27,240,42,307,88,450,130,500,128,540,146,584,180,595,204,582,210,473,169,336,241,259,267,226,265,141,187,44,207" />
<area id="wimgm1" alt="" title="DYNAMIC STABILIZATION LAYER" shape="poly" coords="26,209,19,234,38,245,140,236,244,318,359,288,459,236,403,209,328,250,281,267,235,272,167,219,137,192" />
<area id="wimgm2" alt="" title="FORCE EQUALIZER" shape="poly" coords="32,248,136,239,240,321,343,300,440,248,574,304,568,315,459,302,340,361,257,382,159,293,54,288,24,278" />
<area id="wimgm3" alt="" title="BIOMECHANICAL CONNECTIVE TISSUE" shape="poly" coords="34,288,156,295,251,382,399,336,462,305,568,353,563,366,455,357,315,427,259,433,237,423,163,334,61,327,28,317" />
<area id="wimgm4" alt="" title="KEVLAR BOTTOM SHELL" shape="poly" coords="27,322,26,320,88,335,159,336,233,427,259,437,317,431,455,359,519,365,575,396,568,402,505,389,332,467,268,482,225,468,150,364,64,364,21,348" />
</map>

<style>
@media only screen and (max-width: 720px) {
    #rozmiarimg {
        width: 100%;
        height: auto;
    }
}

#warstwyimg img {
   position: absolute;
   opacity: 0.6;
   transition: opacity 0.5s ease-in-out;
}
#warstwyli {
   margin-top: 60px;

}
@media only screen and (max-width: 720px) {
    #warstwyli {
        margin-top: 260px;
    }
}

#warstwyli .arrow {
    background-image: url(templates/1/img/arrow.png);
    background-repeat: no-repeat;
    background-size: contain;
    background-position-y: center;
    position: relative;
    width: 20px;
    height: 20px;
    flex-shrink: 0;
    margin-right: 10px;
}

#warstwyli h4 {
   font-family: 'Open Sans', sans-serif;
   font-size: 115%;
   color: #fff;
}
#warstwyli .active h4 {
    color: #ffbf75;
}

#warstwyli .active .arrow {
    transform: rotate(180deg);
}

#warstwyli li {
   cursor: pointer;
   margin-bottom: 0px !important;
   padding-bottom: 15px;
   z-index: 100;
   overflow: hidden;
   display: flex;
}
#warstwyli li p {
   margin-top: 0px !important;
   height: 0px;
   opacity: 0;
   transition: all 0.2s ease-in-out;
}
#warstwyli .active p {
   height: auto;
   opacity: 1;
   transition: all 0.2s ease-in-out;
}
#page6 area {
   cursor: pointer;
}
</style>

<script>
$("#warstwyli li").click(function() {
   var id = $(this).attr("id");
   var nr = id.replace("wli", "");
   $("#warstwyimg img").css({ opacity: 0.5 });
   $("#warstwyimg #wimg" + nr).css({ opacity: 0.99 });
   $("#warstwyli li").removeClass('active');
   $("#wli"+nr).addClass('active');
});
$("#page6 area").click(function() {
   var id = $(this).attr("id");
   var nr = id.replace("wimgm", "");
   $("#warstwyimg img").css({ opacity: 0.5 });
   $("#warstwyimg #wimg" + nr).css({ opacity: 0.99 });
   $("#warstwyli li").removeClass('active');
   $("#wli"+nr).addClass('active');
});
$('#wli0').click();


$('.rozmiar li[data-index=0]').click();
$('img[usemap]').rwdImageMaps();
</script>