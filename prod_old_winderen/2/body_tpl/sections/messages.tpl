<!--
<--!--IF MESSAGES --!-- >
<div id="dimmed" class="dimmed" onClick="DivUnload('popupwindow')"></div>
<div id="popupwindow" class="popupwindow centerPopup">
   <div class="popupclose" onClick="DivUnload('popupwindow')"><i class="fa fa-close" aria-hidden="true"></i></div>
   <ul class="messages">
      <--!--BEGIN message --!-- >
       <li>{message.message}</li>
      <--!--END message --!-- >
   </ul>
</div>
<script>
$(function centerPopup(){
	$('.centerPopup').each(function(){
		$(this).css('left',($(window).width()-$(this).outerWidth())/ 2 + 'px');
		$(this).css('top',($(window).height()-$(this).outerHeight())/ 2 + 'px');
		document.getElementById('popupwindow').style.display='block';
	});
});
</script>
<--!--ENDIF --!-- >-->