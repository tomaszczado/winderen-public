<script src="{page_domain}{template_main}rater.min.js"></script>

<div class="container">
    <div class="page-container">
        <h1 class="page-header page-header-light">Ankieta</h1>
        <div class="container page-content partnership-content">

            <div class="partnership-signup-section ">
                <form id="partnership-signup" action="{page_url}" method="post">
                    <h3 class="partnership-section-row-header center">
                        Twoja opinia ma dla nas ogromne znaczenie!<br />
                        Wypełnij ankietę i otrzymaj czapkę Winderen NanoSilver w prezencie!
                    </h3>
                    <div class="partnership-signup form-fields polling-form">
                        <!-- BEGIN ankieta -->
                        <div class="polling-box" id="pytanie{ankieta.id}div">
                            <div class="polling-box-title form-field form-field-fill <!-- IF PYTANIE1_ERROR -->form-field-error<!-- ENDIF -->">
                                <div>{ankieta.pytanie}</div>
                            </div>
                            <div class="polling-box-text form-field form-field-fill partnership-signup-option-field">
                                <p>{ankieta.odpowiedz}</p>
                                <p class="form-field-error-message">{pytanie1_error}</p>
                            </div>
                        </div>
                        <!-- END ankieta -->
                    </div>

                        <br /><br />
                        <input type="hidden" name="csrf" value="{csrf}">
                        <input type="hidden" name="poll" value="1">
                        <div class="form-field form-field-fill center">
                            <input type="submit" class="button button-primary" value="Wyślij ankietę">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script>
    $("#pytanie12div").hide();
    $("#pytanie11").change(function () {
        if ($("#pytanie11").val() > 1) {
            $("#pytanie12div").show();
            $("#pytanie12").prop("disabled", false);
        } else {
            $("#pytanie12div").hide();
            $("#pytanie12").prop("disabled", true);
        }
    });


    $("#pytanie13").change(function () {
        if ($("#pytanie13").val() < 3) {
            $("#pytanie14div").show();
            $("#pytanie14").prop("disabled", false);
        } else {
            $("#pytanie14div").hide();
            $("#pytanie14").prop("disabled", true);
        }
    });
    $("#pytanie15div").hide();
    $("#pytanie13").change(function () {
        if ($("#pytanie13").val() > 2) {
            $("#pytanie15div").show();
            $("#pytanie15").prop("disabled", false);
        } else {
            $("#pytanie15div").hide();
            $("#pytanie15").prop("disabled", true);
        }
    });


    $("#pytanie20div").hide();
    $("#pytanie19").change(function () {
        if ($("#pytanie19").val() > 2) {
            $("#pytanie20div").show();
            $("#pytanie20").prop("disabled", false);
        } else {
            $("#pytanie20div").hide();
            $("#pytanie20").prop("disabled", true);
        }
    });

</script>


<style>
.reviews-item-rate-poll .reviews-item-rate-poll-label {
    color: #aaa;
    font-size: 90%;
}
</style>