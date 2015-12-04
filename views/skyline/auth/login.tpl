{include file='auth/header.tpl'}
<body class="login-page">
<div class="login-box">
<!--     <div class="login-logo">
        <a href="#"><b>{$config['appName']}</b></a>
    </div> --><!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">- Path to User Center -</p>

        <form>
            <div class="form-group has-feedback">
                <input id="email" name="Email" type="text" class="form-control" placeholder="Email address"/>
                <span  class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input id="passwd" name="Password" type="password" class="form-control" placeholder="Password"/>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
        </form>
        <div class="row">
            <div class="col-xs-8">
                <div class="checkbox icheck">
                    <label>
                        <input id="remember_me" value="week" type="checkbox"> Remember me ~
                    </label>
                </div>
            </div><!-- /.col -->
        </div>

        <div class="row">
            <div class="col-xs-12">
                <button id="login" type="submit" class="btn btn-primary btn-block btn-flat">Login</button>
            </div><!-- /.col -->
        </div>

        <div id="msg-success" class="alert alert-info alert-dismissable" style="display: none;">
            <button type="button" class="close" id="ok-close" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-info"></i> Login Success!</h4>
            <p id="msg-success-p"></p>
        </div>
        <div id="msg-error" class="alert alert-warning alert-dismissable" style="display: none;">
            <button type="button" class="close" id="error-close" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-warning"></i> Woops! Something went wrong!</h4>
            <p id="msg-error-p"></p>
        </div>

        <div class="row">
            
        </div>

        <div class="row" style="padding-top: 10px;">
            <div class="col-xs-6">
                <a href="/password/reset" class="text-center btn btn-default btn-block btn-flat">Forgot ?</a><br>
            </div><!-- /.col -->
            <div class="col-xs-6">
                <a href="/auth/register" class="text-center btn btn-default btn-block btn-flat">Get a Ticket</a>
            </div><!-- /.col -->
        </div>

    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->

<!-- jQuery 2.1.3 -->
<script src="/assets/public/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/assets/public/js/bootstrap.min.js" type="text/javascript"></script>
<!-- iCheck -->
<script src="/assets/public/js/icheck.min.js" type="text/javascript"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
    // $("#msg-error").hide(100);
    // $("#msg-success").hide(100);
</script>
<script>
    $(document).ready(function(){
        function login(){
            $.ajax({
                type:"POST",
                url:"/auth/login",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                    passwd: $("#passwd").val(),
                    remember_me: $("#remember_me").val()
                },
                success:function(data){
                    if(data.ok){
                        $("#msg-error").hide(100);
                        $("#msg-success").show(100);
                        $("#msg-success-p").html(data.msg);
                        window.setTimeout("location.href='/user'", 2000);
                    }else{
                        $("#msg-error").hide(10);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html(data.msg);
                    }
                },
                error:function(jqXHR){
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误："+jqXHR.status);
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                login();
            }
        });
        $("#login").click(function(){
            login();
        });
        $("#ok-close").click(function(){
            $("#msg-success").hide(100);
        });
        $("#error-close").click(function(){
            $("#msg-error").hide(100);
        });
    })
</script>
</body>
</html>