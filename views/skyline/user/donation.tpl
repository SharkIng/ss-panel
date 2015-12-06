 {include file='user/main.tpl'}                        
<div class="container" style="margin-top: 50px;">
    <!-- Content Header (Page header) -->
    <div class="page-header">
        <h1>
            捐赠/购物中心
            <small>Donation and Payment Center</small>
        </h1>
    </div>

<div class="panel panel-default">
    <div class="panel-heading">捐赠我们</div>
        <div class="panel-body">
            <div class="bs-callout bs-callout-info">
                本站实行免费运营，但是您可以选择捐赠我们，以获得更专业的服务！捐赠还有可能享受更多服务哦
            </div>
             
            {if $paid eq 'true'}            
<!--             <div id="msg-error" class="alert alert-warning alert-dismissable" style="display:none">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-warning"></i> 出错了! 请联系客服!</h4>
                <p id="msg-error-p"></p>
            </div> -->
            <div id="msg-success" class="alert alert-info alert-dismissable" style="display:none">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-info"></i> 捐款成功! 如有疑问请联系客服</h4>
                <p id="msg-success-p"></p>
            </div>
            {/if}

            <h3>捐赠金额 - <small> - 支持Visa,Master Card等各类信用卡和借记卡</small></h3>
            <form id="donationForm" action"/user/donation" method="POST">
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                        <input type="text" class="form-control has-success" id="amount" name="amount" onkeyup="on_change(this.value);" onchange="on_change(this.value);">
                        <input type="hidden" id="stripePubKey" name="stripePubKey" value={$config['stripePubKey']}/>
                        <input type="hidden" id="stripeToken" name="stripeToken"/>
                        <input type="hidden" id="stripeEmail" name="stripeEmail"/>
                        <input type="hidden" id="stripeAmount" name="stripeAmount"/>
                        <span class="input-group-addon" id="input_notice">请输入正确金额</span>
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button" id="input_submit" disabled="disabled">还没有好哦</button>
                    </span>
                </div>
            </form>

                <script>
                function check_number(str) {
                    var r = /^[0-9]*[1-9][0-9]*$/;
                    return r.test(str);
                }
                function on_change(value) {
                    if (check_number(value)) {
                        $('#amount').addClass('has-success');
                        $('#input_notice').html('获得' + value * 0.1 + 'G 流量！以及更多！~');
                        $('#input_submit').removeAttr("disabled");
                        $('#input_submit').html('确定');
                    } else {
                        $('#amount').addClass('has-error');
                        $('#input_notice').html('请输入正确金额');
                        $('#input_submit').attr("disabled", "disabled");
                        $('#input_submit').html('还没有好哦');
                    }
                }
                </script>
        <p></p>
        </div>

    </div>
</div>

<script src="https://checkout.stripe.com/checkout.js"></script>
<script src="/assets/public/js/stripe.js"></script>

{include file='user/footer.tpl'}