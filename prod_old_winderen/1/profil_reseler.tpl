<div class="profile-body-container">
    <div class="profile-body profile-body-wide profile-reseller-body">
        <div class="profile-reseller-header">
            <h1>{str_res_sprzedaz}</h1>
            <div class="profile-reseller-points">{str_res_your_points}: {reseler_suma}</div>
        </div>
        <table class="table profile-reseller-table">
            <thead>
                <tr>
                    <th>{str_res_osoba}</th>
                    <th>{str_res_lokalizacja}</th>
                    <th width="50%">{str_res_produkt}</th>
                    <th class="right">{str_res_punkty}</th>
                    <th class="right">{str_res_data}</th>
                </tr>
            </thead>
            <tbody>
                <!-- BEGIN reselerz -->
                    <tr>
                        <td>{reselerz.imie}</td>
                        <td>{reselerz.miasto}</td>
                        <td>{reselerz.produkt}</td>
                        <td class="right">{reselerz.punkty} {str_point}</td>
                        <td class="right">{reselerz.add_time}</td>
                    </tr>
                <!-- END reselerz -->
            </tbody>
        </table>
    </div>
</div>