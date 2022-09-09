<!-- IF COMMSEND -->
<div style="min-height: 100px">
Komentarz dodano, pojawi się po akceptacji moderatora. Dziękujemy.<!-- IF SPAM -->..<!-- ENDIF -->
</div>
<!-- ELSE -->
<form onsubmit="FormSubmitAjax('#formcomment', '#commentform', 'ajax.php?get=comments', 0); return false;" id="formcomment" name="formcomment" action="{page_url}#comment" method="post">
   <ul class="formarea">
      <li>
         <label for="comment">Komentarz <span>*</span></label>
         <textarea placeholder="" name="comment" id="comment" required>{comment}</textarea>
         <!-- IF COMMENT_ERROR --><p>Pole wymagane, minimum 20 znaków.</p><!-- ENDIF -->
      </li>
      <li>
         <label for="comment_nick">Imię i nazwisko <span>*</span></label>
         <input type="text" placeholder="" name="comment_nick" id="comment_nick" value="{comment_nick}" required />
         <!-- IF COMMENT_NICK_ERROR --><p>Pole wymagane.</p><!-- ENDIF -->
      </li>
      <!-- IF CAPTCHA -->
      <li>
         <label for="captcha"><img src="admin/plugins/captcha/captcha.php" /></label>
         <input type="text" name="captcha" id="captcha" size="45" value="" placeholder="Wpisz powyższy kod" />
         <!-- IF CAPTCHA_ERROR --><p>Błędny kod</p><!-- ENDIF -->
      </li>
      <!-- ENDIF -->
   </ul>
   <input type="text" name="commentemail" value="" style="display:none" />
   <input type="hidden" name="comment_id" value="{page_id}" />
   <input type="hidden" name="comment_type" value="{comment_type}" />
	<input type="hidden" name="csrf" value="{csrf}">
	<input type="hidden" name="form_time" value="0">
   <input type="hidden" name="tryb" value="insert" /><br />
   <p align="center"><input type="submit" value="Dodaj komentarz" class="button" /></p>
</form>

<script type="text/javascript">
var incrementInterval;
$(document).ready(function () {
    incrementInterval = setInterval('incrementDisplayTime()', 1000);
});
function incrementDisplayTime() {
    $('form input[type="hidden"][name="form_time"]').each(function() {
        $(this).val(parseInt($(this).val()) + 1);
    });
}
</script>

<!-- ENDIF -->