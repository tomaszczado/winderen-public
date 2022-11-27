<div class="column">
	<div class="icon">
		<img class="lazy-image" src="{page_domain}{template_path}images/1px.gif"
			data-src="{page_domain}{template_path}images/icons-bulb.svg" alt="{str_footer_navigation_about_winderen_label}" width="30" height="29">
	</div>
	<div class="label">{str_footer_navigation_about_winderen_label}</div>
	<div class="links">
		<ul>
			<li>
				<a href="{page_link_mission}" title="{str_footer_navigation_our_mission_label}">{str_footer_navigation_our_mission_label}</a>
			</li>
			<li>
				<a href="{page_domain}{friends_link}" title="{str_footer_navigation_our_friends_label}">{str_footer_navigation_our_friends_label}</a>
			</li>
			<li>
				<a href="{page_domain}{page_lang_name_short}/news/0/3/" title="{str_footer_navigation_testimonials_label}">{str_footer_navigation_testimonials_label}</a>
			</li>
		</ul>
	</div>
</div>
<div class="column">
	<div class="icon">
		<img class="lazy-image" src="{page_domain}{template_path}images/1px.gif"
			data-src="{page_domain}{template_path}images/icons-magnifier.svg" alt="{str_footer_navigation_our_products_label}" width="30" height="30">
	</div>
	<div class="label">{str_footer_navigation_our_products_label}</div>
	<div class="links">

    <ul>
      <!-- BEGIN menuprodukty -->
      <li>
        <a href="{menuprodukty.link}" title="{menuprodukty.tytul}">
          {menuprodukty.tytul}
        </a>
      </li>
      <!-- END menuprodukty -->
    </ul>
    
	</div>
</div>
<div class="column">
	<div class="icon">
		<img class="lazy-image" src="{page_domain}{template_path}images/1px.gif"
			data-src="{page_domain}{template_path}images/icons-book-star.svg" alt="{str_footer_navigation_learn_more_label}" width="34" height="25">
	</div>
	<div class="label">{str_footer_navigation_learn_more_label}</div>
	<div class="links">
		<ul>
			<li>
				<a href="{page_domain}{page_lang_name_short}/news/" title="{str_footer_navigation_knowledge_zone_label}">{str_footer_navigation_knowledge_zone_label}</a>
			</li>
			<li>
				<a href="{page_domain}{str_link_instructions_url}" title="{str_footer_navigation_instructions_label}">{str_footer_navigation_instructions_label}</a>
			</li>
			<li>
				<a href="#" title="{str_footer_navigation_faq_label}">{str_footer_navigation_faq_label}</a>
			</li>
			<li>
				<a href="{page_domain}{reviews_link}" title="{str_footer_navigation_reviews_label}">{str_footer_navigation_reviews_label}</a>
			</li>
			<li>
				<a href="{page_domain}{page_lang_name_short}/news/0/2/" title="{str_footer_navigation_videos_label}">{str_footer_navigation_videos_label}</a>
			</li>
		</ul>
	</div>
</div>
<div class="column">
	<div class="icon">
		<img class="lazy-image" src="{page_domain}{template_path}images/1px.gif"
			data-src="{page_domain}{template_path}images/icons-bag.svg" alt="{str_footer_navigation_shop_now_label}" width="20" height="22">
	</div>
	<div class="label">{str_footer_navigation_shop_now_label}</div>
	<div class="links">
		<ul>
			<li>
				<a href="{shop_offer_link}" title="{str_footer_navigation_online_shop_label}">{str_footer_navigation_online_shop_label}</a>
			</li>
			<li>
				<a href="{page_domain}{page_lang_name_short}/legal/" title="{str_footer_navigation_terms_and_conditions_label}">{str_footer_navigation_terms_and_conditions_label}</a>
			</li>
			<li>
				<a href="{page_domain}{page_lang_name_short}/legal/" title="{str_footer_navigation_refunds_policy_label}">{str_footer_navigation_refunds_policy_label}</a>
			</li>
			<li>
				<a href="{page_domain}{page_lang_name_short}/legal/" title="{str_footer_navigation_payments_and_delivery_label}">{str_footer_navigation_payments_and_delivery_label}</a>
			</li>
		</ul>
	</div>
</div>
<div class="column">
	<div class="icon">
		<img class="lazy-image" src="{page_domain}{template_path}images/1px.gif"
			data-src="{page_domain}{template_path}images/icons-group-of-people.svg" alt="{str_footer_navigation_partner_zone_label}" width="29" height="31">
	</div>
	<div class="label">{str_footer_navigation_partner_zone_label}</div>
	<div class="links">
		<ul>
			<li>
				<a href="{page_domain}{partnership_link}" title="{str_footer_navigation_become_a_partner_label}">{str_footer_navigation_become_a_partner_label}</a>
			</li>
		</ul>
	</div>
	<div class="icon">
		<img class="lazy-image" src="{page_domain}{template_path}images/1px.gif"
			data-src="{page_domain}{template_path}images/icons-person.svg" alt="{str_footer_navigation_account_label}" width="17" height="23">
	</div>
	<div class="label">{str_footer_navigation_account_label}</div>
	<div class="links">
		<!-- IF LOGGED -->
		<ul>
			<li><a href="{profil_edit_link}" title="{str_my_account_label}">{klient_imie}</a></li>
			<li><a href="{profil_orders_link}" title="{str_order_twoje}">
					{str_order_twoje}
					<!-- IF KLIENT_PLATNOSCI -->
					<span class="notification dropdown-notification notification-red">
						&excl;
					</span>
					<!-- ENDIF -->
				</a></li>
			<!-- IF KLIENT_ID_TYP == 1 -->
			<li><a href="{partnership_link}" title="{str_partnerstrefa}">{str_partnerstrefa}</a></li>
			<!-- ENDIF -->
			<li><a href="{page_domain}?logout=1" title="{str_logout}">{str_logout}</a></li>
		</ul>
		<!-- ELSE -->
		<ul>
			<li><a href="{profil_login_link}" title="{str_login}">{str_login}</a></li>
			<li><a href="{profil_edit_link}" title="{str_noaccount}">{str_noaccount}</a></li>
		</ul>
		<!-- ENDIF -->
	</div>
</div>