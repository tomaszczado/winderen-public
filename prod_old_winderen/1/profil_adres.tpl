<div class="profile-body-container">
    <div class="profile-body">
        <form action="{page_url}" method="post">
            <h1>{str_shipping_address}</h1>
            <div class="form-fields profile-edit-section">
                <!-- INCLUDE 1/forms/shipping_fields.tpl -->
                <input type="hidden" name="wysylka" value="1" {wysylka_checked} />
            </div>
            <div class="profile-actions">
                <input type="submit" class="button button-primary profile-actions-save" value="{str_save}">
            </div>
        </form>
    </div>
</div>