<div class="container">
    <div class="page-container">
        <h1 class="news-header">Znajdź sklep</h1>
        <div class="news-lead">

            <div class="resellers-country-select row">
                <div class="col-6-sm">
                    <div class="resellers-country-select-label">Wybierz kraj</div>
                </div>
                <div class="col-6-sm">
                    <div class="country-select-menu shop-offer-menu dropdown">
                        <button class="dropdown-button">
                            ---
                            <!--<i class="fa fa-chevron-down" aria-hidden="true"></i>-->
                        </button>
                        <div class="dropdown-content">
                            <!-- BEGIN resellers_kraj -->
                            <a href="{resellers_kraj.link}">{resellers_kraj.nicename}</a>
                            <!-- END resellers_kraj -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="resellers-container">
            <!-- BEGIN resellersk -->
            <div class="resellers-country">
                <span class="flag-icon flag-icon-{resellersk.kiso}"></span>
                {resellersk.kname}
            </div>
            <ul class="resellers-list">
                <!-- BEGIN resellers -->
                <li>
                    <h3>{resellers.nazwa}</h3>
                    <p>
                        {resellers.adres} {resellers.dom}<br />
                        {resellers.kod_pocztowy} {resellers.miasto}<br />
                        {resellers.id_kraj_str}
                    </p>
                    <a href="">
                        <i class="fa fa-map-marker" aria-hidden="true"></i> Google maps</a>
                    </a>
                </li>
                <!-- END resellers -->
            </ul>
            <!-- END resellersk -->
        </div>
    </div>
</div>