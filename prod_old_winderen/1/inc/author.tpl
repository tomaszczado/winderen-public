<section class="pageauthor">
   <!-- IF BIP -->
      <ul>
         <li>
            <small>Wytworzył:</small>
            <h3>{author_nazwisko} {author_imie}</h3>
         </li>
         <li>
            <small>Data wytworzenia:</small>
            <h3>{data_start}</h3>
         </li>

         <li>
            <small>Opublikował w BIP:</small>
            <h3>{add_user}</h3>
         </li>
         <li>
            <small>Data opublikowania:</small>
            <h4>{add_time}</h4>
         </li>
         <li>
            <small>Ostatnio zaktualizował:</small>
            <h3>{edit_user}</h3>
         </li>
         <li>
            <small>Data ostatniej aktualizacji:</small>
            <h3>{edit_time}</h3>
         </li>
         <li>
            <small>Liczba wyświetleń:</small>
            <h3>{counter_value}</h3>
         </li>
      </ul>
   <!-- ELSE -->
      {author_nazwa}<br />
      {page_edit_user} {edit_time_string0}
      {author_contact}
      <!-- ENDIF -->
</section>