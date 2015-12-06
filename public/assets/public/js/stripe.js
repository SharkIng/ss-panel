var amount;

var handler = StripeCheckout.configure({
	key: '',
	token: function(token) {
		$("#stripeToken").val(token.id);
		$("#stripeEmail").val(token.email);
		$("#stripeAmount").val(amount);
		$("#donationForm").submit();

		// function(){
		// 	$.ajax({
		// 	        url: "donation",
		// 	        type: "POST",
		// 	        dataType:"json",
		//                     data:{
		//                         amount: $("#amount").val() * 100,
		//                         stripeToken: token.id,
		// 		stripeEmail: token.email
		//                     },
		//                     success:function(data){
		//                         if(data.ret){
		//                             $("#msg-success").show();
		//                             $("#msg-success-p").html(data.msg);
		//                         }else{
		//                             $("#msg-error").show();
		//                             $("#msg-error-p").html(data.msg);
		//                         }
		//                     },
		//                     error:function(jqXHR){
		//                         alert("发生错误："+jqXHR.status);
		//                     }
		// 	 }); // end ajax call

		// }

	}
});

$('#input_submit').on('click', function(e) {
	amount = $("#amount").val() * 100;
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