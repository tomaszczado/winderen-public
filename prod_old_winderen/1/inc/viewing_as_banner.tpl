<!-- IF ADMINEDIT -->
    <div id="editpanel">
        <b>{admin_imie} {admin_nazwisko}</b>
        | Zalogowany jako: <b>{klient_imie} {klient_nazwisko}</b>
        | Telefon: <b>{klient_telefon}</b>
        <!--| Cennik: <b>{klient_cennik}</b>
        | Tryb: {user_action}
        | Kurs: {waluta_kurs}-->
            <input type="submit" value="Do administracji" class="button" onclick="location.href='index.php?get=logout2admin'" />
        <!-- IF ADMINZAMOWIENIE -->
            <input type="submit" value="Zapisz zamówienie" class="button" onclick="location.href='index.php?get=logout2admin&zamowienie=1'" />
        <!-- ENDIF -->
    </div>
    <style>
        #editpanel {
            position: fixed;
            bottom: 0px;
            border: 1px solid #637BB5;
            border-top: 0px solid #637BB5;
            padding: 3px;
            background-color: white;
            color: #000;
            z-index: 3000;
            filter: alpha(opacity=95); -moz-opacity: 0.95; opacity: 0.95;
        }
    </style>
<!-- ENDIF -->
