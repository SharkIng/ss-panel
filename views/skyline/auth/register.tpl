{include file='auth/header.tpl'}
<body class="register-page">
<div class="register-box">
<!--     <div class="register-logo">
        <a href="../"><b>{$config['appName']}</b></a>
    </div> -->

    <div class="register-box-body">
        <p class="login-box-msg">Register, and fly in the sky! Meow ~</p>

        <div class="form-group has-feedback">
            <input type="text" id="name" class="form-control" placeholder="Nickname"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="text" id="email" class="form-control" placeholder="Email"/>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="password" id="passwd" class="form-control" placeholder="Password"/>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="password" id="repasswd" class="form-control" placeholder="Repeat Password"/>
            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            <input type="text" id="code" class="form-control" placeholder="Invitation Code"/>
            <span class="glyphicon glyphicon-send form-control-feedback"></span>
            <a href="/code">Need an Invitation Code?</a>
        </div>

<!--         <div class="form-group has-feedback form-control" style="display: inline-block; border: 1px inset #BBB;">
            <input type="text" id="code" style="border: none; padding: 0; margin: 0;width: 320px;" placeholder="Invitation Code"/>
            <a style="border: none; background: none; float:right; margin-right: 15px;" href="/code">Need an Invitation Code?</a>
            <span class="glyphicon glyphicon-send form-control-feedback"></span>
        </div> -->

        <div class="form-group has-feedback">
            <p>By signing up, you agree to the <a href="/tos">Terms of Service</a></p>
        </div>

        <div class="form-group has-feedback">
            <button type="submit" id="reg" class="btn btn-primary btn-block btn-flat">On board</button>
        </div>

        <div id="msg-success" class="alert alert-info alert-dismissable" style="display: none;">
            <button type="button" class="close" id="ok-close" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-info"></i> Register Success!</h4>
            <p id="msg-success-p"></p>
        </div>

        <div id="msg-error" class="alert alert-warning alert-dismissable" style="display: none;">
            <button type="button" class="close" id="error-close" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-warning"></i> Woops! Something went wrong!!</h4>
            <p id="msg-error-p"></p>
        </div>

        <a href="/auth/login" class="text-center">Already have account? Login now!</a>
    </div><!-- /.form-box -->
</div><!-- /.register-box -->

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
        // $("#msg-error").hide(100);
        // $("#msg-success").hide(100);

    });
</script>
<script>
    $(document).ready(function(){
        function register(){
            $.ajax({
                type:"POST",
                url:"/auth/register",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                    name: $("#name").val(),
                    passwd: $("#passwd").val(),
                    repasswd: $("#repasswd").val(),
                    code: $("#code").val(),
                    agree: $("#agree").val()
                },
                success:function(data){
                    if(data.ok){
                        $("#msg-error").hide(10);
                        $("#msg-success").show(100);
                        $("#msg-success-p").html(data.msg);
                        window.setTimeout("location.href='login.php'", 2000);
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
                register();
            }
        });
        $("#reg").click(function(){
            register();
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
