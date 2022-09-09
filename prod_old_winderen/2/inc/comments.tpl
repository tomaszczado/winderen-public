<!-- IF COMMENT -->
<section class="comments">
   <a name="comment"> </a>
   <h2>{komentarze}</h2>
   <ul>
   <!-- BEGIN comments -->
   <li>
      <div>
         <p>
            <strong>{comments.nick}</strong>
            <br />
            <span class="clock">{comments.add_time_string0}</span>
         </p>
         {comments.comment}
      </div>
   </li>
   <!-- END comments -->
   </ul>
   <div class="commentform" id="commentform">
      <!-- INCLUDE 1/inc/comment.tpl -->
   </div>
</section>
<!-- ENDIF -->
