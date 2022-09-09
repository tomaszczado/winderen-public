/**
* Przeladowanie div na stronie
*/
function PageDivReload(link, div) {
   $(document).ready(function () {
      //$('#'+div).addClass('loading');
      $('#' + div).load(link, function () {
         //$('#'+div).removeClass('loading');
      });
   });
}

/**
* Pokazanie diva "wait..."
*/
function ShowWorker() {
   try {
      //document.getElementById('worker').style.display='block';
   } catch (err) {
      //window.alert("There is no form on name: "+formname);
   }
}


/**
* Wyslanie formularza o danym ID
*/
function FormSubmit(formname) {
   try {
      ShowWorker();
      document.getElementById(formname).submit();
   } catch (err) {
      window.alert("There is no form on name: " + formname);
   }
}

/**
* Focus na danym polu (ID)
*/
function FocusSet(id) {
   try {
      var obiekt = document.getElementById(id);
      if (obiekt == null) {
         return false;
      } else {
         obiekt.focus();
      }
   } catch (err) {
   }
}

/**
* Wysłanie formularza o danym ID do danego DIV (id)
*/
function FormSubmitAjax(form, url, timer) {
   //wysylka
   if (url == '') {
      var url = $(form).attr('action');
   }
   var met = $(form).attr('method');
   $.ajax({
      type: met,
      url: url,
      data: $('#' + form).serialize(),
      error: function (XMLHttpRequest, textStatus, errorThrown) {
         $("#error").show();
         $("#error").append('Błąd obiektu o nazwie:' + XMLHttpRequest + '<br />Komunikat:' + textStatus + '<br />Rodzaj:' + errorThrown);
      },
      success: function (html) {
         $('#cartsummary').html(html);
      }
   });
   if (timer > 0) {
      setTimeout("FormSubmitAjax('" + form + "', '" + div + "', '" + url + "', " + timer + ");", timer);
   }
}


/**
* Zapisanie wartości formularza do Cookies
<a href="javascript:FormSave('cart', 'fsaver', 'ajax.php?get=formsave')">Zapisz dane z formularza</a>
<div id="fsaver"></div>
*/
function FormSaveToCookies(form, div, url) {
   $(div).ajaxStart(function () {
   });
   $(div).ajaxStop(function () {
   });
   if (url == '') {
      var url = $(form).attr('action');
   }
   var met = $(form).attr('method');
   var data;
   $.ajax({
      type: 'POST',
      url: url,
      data: $('#' + form).serialize(),
      error: function (XMLHttpRequest, textStatus, errorThrown) {
         $("#error").show();
         $("#error").append('Błąd obiektu o nazwie:' + XMLHttpRequest + '<br />Komunikat:' + textStatus + '<br />Rodzaj:' + errorThrown);
      },
      success: function (data) {
         $('#' + div).html(data);
      }
   });
}

/**
* Wyszukanie z podpowiedzi
*/
function findset(slowo) {
   document.getElementById('worker').style.display = 'block';
   key = document.getElementById('searchtxt');
   keyform = document.getElementById('search');
   key.value = slowo;
   keyform.submit();
}

/**
* Ustaw kotwice w url
*/
function AnchorSet(value) {
   value = encodeURI(value);
   window.location.hash = "#" + value;
}

/**
* Odczytuj kotwice co 0.3 sec
*/
//$().ready(function(){
//setInterval("AnchorCheck()", 300);
//});

/**
* Wywolaj zdarzenie przy zmianie kotwicy w URL
*/
var currentAnchor = null;
function AnchorCheck() {
   if (currentAnchor != document.location.hash) {
      currentAnchor = document.location.hash;
      if (!currentAnchor) {
         query = "empty";
      } else {
         var splits = currentAnchor.substring(1).split('&');
         var section = splits[0];
         delete splits[0];
         var params = splits.join('&');
         var query = section + params;
      }
      return query;
   }
}

/**
* Wywolaj zdarzenie przy zmianie kotwicy w URL
*/
var currentAnchor = null;
function AnchorCheckAndReload(link, div, name) {
   if (currentAnchor != document.location.hash) {
      currentAnchor = document.location.hash;
      if (!currentAnchor) {
         query = "empty";
      } else {
         //Creates the  string callback. This converts the url URL/#main&id=2 in URL/?section=main&id=2
         var splits = currentAnchor.substring(1).split('&');
         //Get the section
         var section = splits[0];
         delete splits[0];
         //Create the params string
         var params = splits.join('&');
         var query = name + "=" + section + params;
      }
      //nazwy
      var obiekt_found = div + '_found';
      var obiekt_search = div + '_search';
      //ustaw ciag w polu
      try {
         if (section != '' && section != 'undefined' && isset(section)) {
            document.getElementById(obiekt_search).value = decodeURI(section);
         }
      } catch (err) {
      }
      //przeladowanie DIV
      if (section != '') {
         PageDivReload(link + "&" + query, obiekt_found);
      }
   }
}

/**
* Zmiana class dla id
*/
function divstyleswitch(id, switch1, switch2) {
   var div = document.getElementById(id);
   if (div == null) {
      return false;
   }
   if (div.className == switch1) {
      div.className = switch2;
   } else {
      div.className = switch1;
   }
}
var timer = 0;
function divstyleswitchafter(id, switch1, switch2, time) {
   if (timer) {
      clearTimeout(timer);
   }
   timer = setTimeout("divstyleswitch('" + id + "', '" + switch1 + "', '" + switch2 + "');", time);
}
function divstyleswitchafterclear(id, switch1, time) {
   clearTimeout(timer);
   var div = document.getElementById(id);
   if (div == null) {
      return false;
   }
   setTimeout("document.getElementById('" + id + "').className='" + switch1 + "'", time);
}

/**
* Animowane pokazywanie div/ukrywanie
*/
function DivShowHide(div) {
   $("#" + div).animate({ "height": "toggle" }, { duration: 200 });
}

/**
* Unload popup div
*/
function DivUnload(div) {
   try {
      document.getElementById(div).style.display = 'none';
      $(".dimmed").fadeOut();
   } catch (err) {
   }
}
function DivLoadDimmed() {
   try {
      $(".dimmed").fadeIn();
   } catch (err) {

   }
}

/**
* Zaokraglenia (math)
*/
function round(number, places) {
   places = (!places ? 2 : places);
   return Math.round(number * Math.pow(10, places)) / Math.pow(10, places);
}

/**
* Koszyk
*/
function CartChange(select, item, rn, rb) {
   let number = select.value;
   $('.dropdown').removeClass('show');
   var quantityItems = $(".quant" + item);
   quantityItems.val(round(number, 4));

   //zmiana podsumowania wartosc produktu
   var netto = parseFloat(document.getElementById('netto' + item).value);
   var vat = parseFloat(document.getElementById('vat' + item).value);
   try {
      var waluta = document.getElementById('shop_waluta').value;
   } catch (err) {
   }

   console.log(netto, vat, item, rn, rb);
   cena_netto = round(netto, rn);
   wartosc_netto = cena_netto * number;
   wartosc_netto = round(wartosc_netto, rn);

   cena_brutto = cena_netto + (cena_netto * vat / 100);
   cena_brutto = round(cena_brutto, rb);

   wartosc_brutto = cena_brutto * number;
   wartosc_brutto = round(wartosc_brutto, rb);

   $('.product-gross-price-' + item).html(wartosc_brutto);
   //zmiana podsumowania

   var ajaxUrl = 'ajax.php?get=shop_cart_part,' + item + ',' + number + ',';
   $.post(ajaxUrl, function (response) {
      $('#shop-cart-summary').append(response);
   });
}

/**
* Dodaj do koszyka - ajax
*/
function CartAdd(form, url, button, typ) {
   //wyslij formularz
   FormSubmitAjax(form, url, 0);
   //detekcja jezyka
   try {
      var lang = document.getElementById('page_lang').value;
   } catch (err) {
   }
   try {
      var koszykw = document.getElementById('cart_label').value;
   } catch (err) {
   }

   //zmien przycisk dodawania
   if (typ == 1) {
      $("#" + button).addClass("cartadded");
      $("#" + button + 's').html(koszykw);
   } else {
      $("#" + button).addClass("cartadded");
      $("#" + button + 's').html(koszykw);
   }
   //nie przeladuj
   return false;
}

/**
* Dodaj do koszyka
*/
function CartAddInt(tryb, field) {
   number = parseFloat(document.getElementById('quant' + field).value);
   mnoznik = parseFloat(document.getElementById(field + 'x').value);
   mnoznik = Math.abs(mnoznik);
   if (mnoznik == 0) {
      mnoznik = 1;
   }
   if (tryb == 0) {
      number = number - mnoznik;
      if (number == 0) {
         number = mnoznik;
      }
   } else {
      number = number + mnoznik;
   }
   number = round(number, 4);
   document.getElementById('quant' + field).value = number;
}


//kolor produktu
function ShopKolor(hex, name, image, idact) {
   //nazwa
   document.getElementById('oferta_kolor').value = name;
   //kolor
   document.getElementById('item_kolor_set').style.background = '#' + hex;
   $('#item_kolor_set').css('background-image', 'url(' + image + ')');
   //active ID
   $(".shop-item-colors li").removeClass("active");
   $("#" + idact).addClass("active");
}

//rozmiar produktu
function ShopRozmiar(rozmiar) {
   //rozmiar
   document.getElementById('oferta_rozmiar').value = rozmiar;
}

//ustaw mnoznik ilosci produktu
function ShopMnoznik(field, mnoznik, jm) {
   document.getElementById('oferta_jm' + field).value = jm;
   document.getElementById('quant' + field).value = mnoznik;
   document.getElementById(field + 'x').value = mnoznik;
   return false;
}
