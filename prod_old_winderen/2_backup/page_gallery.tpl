<link href="https://unpkg.com/nanogallery2/dist/css/nanogallery2.min.css" rel="stylesheet" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://unpkg.com/nanogallery2/dist/jquery.nanogallery2.min.js"></script>

<div style="margin-top:90px;"></div>
<div class="container">
    <div class="page-container-offset"></div>
    <div class="page-container">
        <h1 class="page-header">{tytul}</h1>

        <div data-nanogallery2='{
        "thumbnailWidth": "auto",
        "thumbnailHeight": "160px",
        "thumbnailAlignment": "center",
        "thumbnailBorderHorizontal": 0,
        "thumbnailBorderVertical": 0
        }'>
            <!-- BEGIN images -->
            <a href="{images.image_big_url}" data-ngthumb="{images.image_small_url}" data-ngdesc="">{images.info}</a>
            <!-- END images -->
        </div>

    </div>
</div>