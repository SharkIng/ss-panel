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
            <h3>捐赠金额 - <small> - 支持Visa,Master Card等各类信用卡和借记卡</small></h3>
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                        <input type="text" class="form-control has-success" id="input_to" onkeyup="on_change(this.value);" onchange="on_change(this.value);">
                        <span class="input-group-addon" id="input_notice">请输入正确金额</span>
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button" id="input_submit" disabled="disabled">还没有好哦</button>
                    </span>
                </div>

                <script>
                function check_number(str) {
                    var r = /^[0-9]*[1-9][0-9]*$/;
                    return r.test(str);
                }
                function on_change(value) {
                    if (check_number(value)) {
                        $('#input_to').addClass('has-success');
                        $('#input_notice').html('获得' + value * 0.1 + 'G 流量！以及更多！~');
                        $('#input_submit').removeAttr("disabled");
                        $('#input_submit').html('确定');
                    } else {
                        $('#input_to').addClass('has-error');
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