<div class="places">
   <!-- IF MAPS_STREET -->
   <h3>{maps_kod_pocztowy} {maps_city}, {maps_street}</h3>
   <!-- ENDIF -->
   <div id="map" style="width: 100%; height: 300px; border: 0px solid black; background: gray;">
   <!-- tu bedzie mapa -->
   </div>
</div>

<script type="text/javascript" src="{page_domain}templates/files/google_maps.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type='text/javascript'>
var mapa;
var dymek = new google.maps.InfoWindow(); // zmienna globalna
function mapaStart() {
	var wspolrzedne = new google.maps.LatLng({maps_lat}, {maps_lng});
	var opcjeMapy = {
	  zoom: 15,
	  center: wspolrzedne,
	  mapTypeId: google.maps.MapTypeId.ROADMAP,
	  disableDoubleClickZoom: true,
	  disableScrollWheelZoom: true,
	  scaleControl: false
	};

   // wspólne cechy ikon
   <!-- IF PLACES_ICON -->
   var rozmiar = new google.maps.Size(32,32);
   var punkt_startowy = new google.maps.Point(0,0);
   var punkt_zaczepienia = new google.maps.Point(16,26);
   var ikona1 = new google.maps.MarkerImage("{places_icon}", rozmiar, punkt_startowy, punkt_zaczepienia);
   <!-- ELSE -->
   var rozmiar = new google.maps.Size(32,32);
   var punkt_startowy = new google.maps.Point(0,0);
   var punkt_zaczepienia = new google.maps.Point(22,22);
   var ikona1 = new google.maps.MarkerImage("https://maps.gstatic.com/mapfiles/ms2/micons/ltblue-dot.png", rozmiar, punkt_startowy, punkt_zaczepienia);
   <!-- ENDIF -->
   //mapa
	mapa = new google.maps.Map(document.getElementById("map"), opcjeMapy);
	//znacznik
   var marker = dodajMarker('{tytul}', {position: new google.maps.LatLng({maps_lat},{maps_lng}), map: mapa, icon: ikona1});

   <!-- IF ID_DZIAL_OFF == 8 -->
   var srodek = new google.maps.LatLng({maps_lat},{maps_lng});
   var kolo = new google.maps.Circle({
   	map: 			   mapa,
   	center:			srodek,
   	radius:			70,
   	strokeColor:	'#429fe6',
   	strokeWeight:	0,
   	strokeOpacity:	0.8,
   	fillColor:		'#429fe6',
   	fillOpacity:	0.4
   });
   <!-- ENDIF -->
}
mapaStart();
</script>