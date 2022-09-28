<script src="{page_domain}{template_main}rater.min.js"></script>

<div class="container">
    <div class="page-container-offset"></div>
    <div class="page-container">
        <h1 class="page-header">{str_wasze_opinie}</h1>
        <div class="container page-content">
            <div class="reviews-header">
                {str_str_twojeopinie_info}
            </div>

            <div class="reviews-container">
                <div class="reviews">
                    <!-- IF REVIEWS -->
                    <ul class="reviews-items">
                        <!-- BEGIN reviews -->
                        <!-- IF reviews.ID == 0 -->
                        <p class="center">{str_ocen_prace_zespolu}</p>
                        <!-- ENDIF -->
                        <form id="form{reviews.id}" name="reviews{reviews.id}" action="{page_url}" method="post"
                            class="freviews">
                            <li class="reviews-item">
                                <div class="reviews-item-picture-container">
                                    {reviews.image}
                                </div>
                                <div class="reviews-item-details">
                                    <div class="reviews-item-name">{reviews.tytul}</div>
                                </div>
                                <div class="center">
                                    <div class="reviews-item-rate">
                                        <div class="rate{reviews.id}"></div>
                                        <input type="hidden" id="input{reviews.id}" name="ocena[{reviews.id}]" value="">
                                    </div>
                                </div>
                            </li>
                            <li class="reviews-item-textarea">
                                <div>
                                    <textarea id="tekst{reviews.id}" name="tekst[{reviews.id}]" cols="30" rows="4"
                                        placeholder="{str_napiszopinie}" required></textarea>
                                </div>
                            </li>
                            <li class="reviews-item-button">
                                <!-- IF reviews.ID > 0 -->
                                <span id="nick{reviews.id}">
                                    <input type="text" id="nick{reviews.id}" name="nick[{reviews.id}]" value="{author}">
                                </span>
                                <!-- ENDIF -->
                                <button id="{reviews.id}" type="submit" class="button button-primary reviews-button">
                                    {str_przeslijopinie}
                                </button>
                                <div id="msg{reviews.id}" class="reviews-msg hide">
                                    {str_dziekujemyzaopinie}
                                </div>
                            </li>

                            <script>
                                $(document).ready(function () {
                                    var options = {
                                        max_value: 5,
                                        step_size: 1,
                                        initial_value: 0,
                                        update_input_field_name: $("#input{reviews.id}"),
                                    }
                                    $(".rate{reviews.id}").rate(options);
                                });
                            </script>
                        </form>
                        <!-- END reviews -->

                    </ul>
                    <!-- ELSE -->
                    <div class="reviews-empty">
                        <h3>Brak do oceny</h3>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>

        </div>
    </div>
</div>


<script>
    $(document).ready(function () {
        // kolor jak ocenia
        $(".reviews-item-rate").click(function () {
            $('.reviews-item-rate div').css('color', '#F0B209');
        });

        // click
        $(".reviews-button").click(function () {
            // config
            var id = event.target.id;
            var frm = $('#form' + id);
            var ocena = $('#input' + id).val();

            // czy oceniono
            if (ocena == 0) {
                $('#form' + id + ' .reviews-item-rate div').css('color', 'red');
                return false;
            }

            // zapisz
            frm.submit(function (e) {
                e.preventDefault();
                $.ajax({
                    type: frm.attr('method'),
                    url: frm.attr('action'),
                    data: frm.serialize(),
                    success: function (data) {
                        console.log('Submission was successful.');
                        //console.log(data);
                        $("#" + id).fadeOut();
                        $("#msg" + id).fadeIn();
                        $("#tekst" + id).fadeOut();
                        $("#nick" + id).fadeOut();
                    },
                    error: function (data) {
                        console.log('An error occurred.');
                        //console.log(data);
                    },
                });
            });
        });
    });
</script>