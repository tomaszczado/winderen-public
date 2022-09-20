<!-- IF ORDER_LIST_SHOW -->
    <h1>{str_order_history}</h1>
    <ul class="profile-orders-list">
        <!-- BEGIN order_list -->
            <li>
                <div class="profile-orders-header">
                    <a href="{order_list.link}" class="profile-orders-name">{str_order_zamowienie} {order_list.id}</a>
                    <div class="profile-orders-actions">
                        <a class="button button-transparent" href="{order_list.link}">{str_order_more}</a>
                    </div>
                </div>
                <dl class="profile-orders-details <!-- IF order_list.STATUSID == 4 -->payment<!-- ENDIF --> <!-- IF order_list.STATUSID == 2 -->in-progress<!-- ENDIF --> <!-- IF order_list.STATUSID == 7 -->in-progress<!-- ENDIF --> <!-- IF order_list.STATUSID == 10 -->sent<!-- ENDIF -->">
                    <dt>{str_order_status}:</dt>
                    <dd class="profile-orders-details-status">
                        {order_list.status}
                    </dd>
                    <dt>{str_order_data}:</dt>
                    <dd>{order_list.add_time}</dd>
                    <dt>{str_order_datasend}:</dt>
                    <dd>{order_list.przesylka_wyslana}</dd>
                    <dt>{str_order_dataodb}:</dt>
                    <dd>{order_list.przesylka_odebrana}</dd>
                </dl>
                <dl class="profile-orders-details">
                    <dt>{str_order_wartosc}:</dt>
                    <dd>{order_list.suma_brutto_waluta} {order_list.val_order_valuta}</dd>
                    <dt>{str_order_transport}:</dt>
                    <dd>{order_list.przesylka_cena_brutto} {order_list.val_order_valuta}</dd>
                    <dt>{str_order_platnosc}:</dt>
                    <dd>{order_list.platnosc}</dd>
                    <dt>{str_order_dostawa}:</dt>
                    <dd>{order_list.przesylka}</dd>
                </dl>
            </li>
        <!-- END order_list -->
    </ul>
    <!-- IF NAV -->
        <div class="profile-orders-pagination">
            <ul class="profile-orders-pagination-pages">
                <!-- IF NAVIGATION_BACK -->
                    <li><a href="{page_domain}{page_get}/0/{page_idd}/{navigation_back}/" class="prev">&larr;</a></li>
                <!-- ENDIF -->
                <!-- BEGIN navigation -->
                    <!-- IF navigation.ACTIVE -->
                        <li class="active"><a href="{page_domain}{page_get}/0/{page_idd}/{navigation.i}/">{navigation.name}</a></li>
                    <!-- ELSE -->
                        <li><a href="{page_domain}{page_get}/0/{page_idd}/{navigation.i}/">{navigation.name}</a></li>
                    <!-- ENDIF -->
                <!-- END navigation -->
                <!-- IF NAVIGATION_NEXT -->
                    <li><a href="{page_domain}{page_get}/0/{page_idd}/{navigation_next}/" class="next">&rarr;</a></li>
                <!-- ENDIF -->
            </ul>
        </div>
    <!-- ENDIF -->
<!-- ELSEIF ORDER_LIST_SHOW_EMPTY -->
    <h1>{str_profile_no_orders}</h1>
<!-- ENDIF -->