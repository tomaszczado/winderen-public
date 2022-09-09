<form id="laybuy-form" action="{page_url}" method="post" class="form-laybuy">
    <div class="form-row">

        <!-- IF POKAZ_FORM_LAYBUY_REDIRECT -->
                <!-- IF LAYBUY_ERROR -->
                <div id="laybuy-errors" style="color:rgb(230, 36, 101);">{LAYBUY_ERROR}</div>
                <!-- ENDIF -->
        <!-- ENDIF -->

        <div class="form-field form-field-fill">
            <input type="hidden" name="order" value="{val_id}">
        </div>

        <button class="button button-primary">{str_order_pay}</button>
    </div>
</form>