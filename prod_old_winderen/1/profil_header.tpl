
<div class="container">
    <div class="profile-container">
        <!-- IF LOGGED -->
        <ul id="profile-menu" class="profile-menu">
            <!-- BEGIN menuprofil -->
                <!-- IF menuprofil.ACTIVE -->
                    <li><a href="{menuprofil.link}" class="active">{menuprofil.tytul}</a></li>
                <!-- ELSE -->
                    <li><a href="{menuprofil.link}">{menuprofil.tytul}</a></li>
                <!-- ENDIF -->
            <!-- END menuprofil -->
        </ul>
        <!-- ENDIF -->
