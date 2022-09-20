<!-- IF KLAVIYO -->

  <!-- IF KLAVIYO_KLIENT_LOGIN -->
    <script type="application/javascript" async src="https://static.klaviyo.com/onsite/js/klaviyo.js?company_id={KLAVIYO_API_KEY}"></script>
    <script>
      var _learnq = _learnq || [];
      if ('{klient_email_real}') {
          _learnq.push(['identify', {
            '$email' : '{klient_email_real}'
          }]);
        }
    </script>
  <!-- ENDIF -->

  <!-- IF KLAVIYO_ADD_NL -->
    <script>
      var settings = {
        "async": true,
        "crossDomain": true,
        "url": "https://manage.kmail-lists.com/ajax/subscriptions/subscribe",
        "method": "POST",
        "headers": {
          "content-type": "application/x-www-form-urlencoded",
          "cache-control": "no-cache"
        },
        "data": {
          "g": "{KLAVIYO_ADD_PROFILE_LNG}",
          "$fields": "$first_name,$last_name,$source",
          "email": "{klient_email_real}",
          "$first_name": "{klient_imie}",
          "$last_name": "{klient_nazwisko}",
          "$source": "Custom Form"
        }
      }
      $.ajax(settings).done(function (response) {
        console.log(response);
      });
    </script>
  <!-- ENDIF -->

<!-- ENDIF -->