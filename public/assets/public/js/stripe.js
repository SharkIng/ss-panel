var handler = StripeCheckout.configure({
	key: 'pk_test_55qsM1PZ5USDOOUeDhdv1GVF',
	token: function(token) {
		$("#stripeToken").val(token.id);
		$("#stripeEmail").val(token.email);
		$(".input-group").submit();
	}
});

$('#input_submit').on('click', function(e) {
	var amount = $("#input_to").val() * 100;
	// Open Checkout with further options
	
	handler.open({
		name: 'TwoVPN.com 支付平台',
		description: '您正在TwoVPN支付购买某服务',
		amount: amount,
		bitcoin: true,
		alipay: true
	});
	e.preventDefault();
});

// Close Checkout on page navigation
$(window).on('popstate', function() {
	handler.close();
});