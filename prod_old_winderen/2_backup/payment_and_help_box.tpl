<div class="payment-and-help-box-container">
    <div class="payment-container">
        <div class="payment-item">
            <div class="payment-item-title">
                {str_secure_payment}
            </div>
            <div class="payment-item-imagea">
                <!-- BEGIN platnoscikraj -->
                    <!-- IF platnoscikraj.IMAGE -->
                    <img src="{platnoscikraj.image_src}" alt="{platnoscikraj.nazwa}" title="{platnoscikraj.nazwa}" />
                    <!-- ENDIF -->
                <!-- END platnoscikraj -->
            </div>
        </div>

        <div class="payment-item">
            <div class="payment-item-title">
                {str_fast_delivery}
            </div>
            <div class="payment-item-content">
                <div class="payment-item-content">
                    <div class="payment-item-image-small">
                        <img src="{page_domain}{template_images}/shipping/{przesylka_id}.png" alt="{przesylka_nazwa}" />
                    </div>
                    <div class="payment-item-text">
                        {przesylka_dni_str} {str_delivery_time_days}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row help-box-container">
        <div class="col-5 col-12-sm col-l">
            <img class="help-box-profile-image" src="{template_images}/contact/contact{contact_id}.png" alt="{str_contact}" />
        </div>
        <div class="col-7 col-12-sm col-r">
            <h3>
                {str_napisz_do_nas}
                <br />
                <span>{str_support_team}</span>
            </h3>
            <!--<div class="help-box-name">- {contact_author_imie}</div>-->
            <ul class="help-box-contact-lines">
                <li><a href="mailto:{contact_author_email}">{contact_author_email}</a></li>
                <li>{contact_author_telefon}</li>
            </ul>
        </div>
    </div>
</div>