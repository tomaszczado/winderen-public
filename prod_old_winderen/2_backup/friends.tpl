<div class="container">
    <div class="page-container">
        <h1 class="page-header">{str_friends}</h1>
        <div class="news-lead">
            <p>{str_friends_info}</p>
        </div>
        <div class="friends-container">
        <!-- BEGIN friends -->
            <div class="friend-tile">
                {friends.image}
                <div class="info-container">
                    <div class="name-surname-container">
                        <div class="name-container">
                            {friends.imie}
                        </div>
                        <div class="surname-container">
                            {friends.nazwisko}
                        </div>
                    </div>
                    <div class="links-container">
                        <!-- IF friends.FACEBOOK -->
                            <a rel="nofollow" href={friends.facebook} target="_blank" rel="noreferrer">
                                <i class="fab fa-facebook-square"></i>
                            </a>
                        <!-- ENDIF -->
                        <!-- IF friends.INSTAGRAM -->
                            <a rel="nofollow" href={friends.instagram} target="_blank" rel="noreferrer">
                                <i class="fab fa-instagram"></i>
                            </a>
                        <!-- ENDIF -->
                        <!-- IF friends.WWW -->
                            <a rel="nofollow" href={friends.www} target="_blank" rel="noreferrer">
                                <i class="fa fa-globe"></i>
                            </a>
                        <!-- ENDIF -->
                    </div>
                </div>
                <!-- {friends.tresc}
                {friends.image} -->
            </div>
        <!-- END friends -->
        </div>
    </div>
</div>
