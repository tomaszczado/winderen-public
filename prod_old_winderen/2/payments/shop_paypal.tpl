<script src="https://www.paypal.com/sdk/js?client-id={PAYPAL_ID}&currency={val_order_valuta}&disable-funding=card,credit,bancontact,blik,eps,giropay,ideal,mercadopago,mybank,p24,sepa,sofort,venmo">
</script>

<div id="paypal-button-container"></div>
<div id="paypal-save"></div>

<!-- Add the checkout buttons, set up the order and approve the order -->
<script>
	paypal.Buttons({
		createOrder: function (data, actions) {
			return actions.order.create({
				payer: {
					name: {
						given_name: "PayPal",
						surname: "{val_nazwisko}"
					},
					address: {
						address_line_1: "{val_adres}",
						address_line_2: "",
						admin_area_2: "{val_miasto}",
						admin_area_1: "",
						postal_code: "{val_kod_pocztowy}",
						country_code: "{val_kraj_id_iso}"
					},
					email_address: "{val_email}",
				},
				purchase_units: [{
					description: "Order {val_id}",
					amount: {
						currency_code: '{val_order_valuta}',
						value: '{zamowienie_suma_brutto}'
					},
				}]
			});
		},
		onApprove: function (data, actions) {
			return actions.order.capture().then(function (details) {
				//alert('Transaction completed by ' + details.payer.name.given_name + "ID:" + details.id);
				//console.log(details);
				//console.log(details.id);  // order id
				//console.log(details.status);  // 'COMPLETED'

				// Call your server to save the transaction
				return fetch('ajax.php?get=shop_paypal_afterpay&id={val_id}', {
					method: 'post',
					headers: {
						'content-type': 'application/json'
					},
					body: JSON.stringify({
						orderDATA: details
					})
				}).then(function(response){
                    // redirect to the completed page if paid
					window.location.href = "{page_domain}shop_dotpay_afterpay&status=ok";
                });
				// redirect to OK
				//window.location.href = "{page_domain}shop_dotpay_afterpay&status=ok";
				//window.location.replace("{page_domain}shop_dotpay_afterpay&status=ok");
            });
		},
		onCancel: function (data) {
			// Show a cancel page, or return to cart
			// Redirect to fail
			window.location.replace("{page_domain}shop_dotpay_afterpay&status=fail");
		}
	}).render('#paypal-button-container'); // Display payment options on your web page
</script>

