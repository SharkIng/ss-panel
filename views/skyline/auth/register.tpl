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
            <a onclick = "showCode()">Need an Invitation Code?</a>
        </div>

<!--         <div class="form-group has-feedback form-control" style="display: inline-block; border: 1px inset #BBB;">
            <input type="text" id="code" style="border: none; padding: 0; margin: 0;width: 320px;" placeholder="Invitation Code"/>
            <a style="border: none; background: none; float:right; margin-right: 15px;" href="/code">Need an Invitation Code?</a>
            <span class="glyphicon glyphicon-send form-control-feedback"></span>
        </div> -->

        <div class="form-group has-feedback">
            <p>By signing up, you agree to the <a onclick = "showTos()">Terms of Service</a></p>
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

<!-- Invitation Code Google Form -->
<div class="modal fade" id="Code" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="color:black;text-align:center">Fill out the form, have a chance to get the invitation code !</h4>
        <h5 style="text-align:center;">You can also obtain a code from registered user.</h5>
      </div>
      <div class="modal-body center" style="color:black;text-align:center;padding-left:10%;padding-right:10%;color:#3b3b3b">
        <div class="row center">
            <iframe src="https://docs.google.com/forms/d/15GhjPijX8ZFGNruyS7VBUFxJTEk-Grw4WEWaa2GHQNE/viewform?embedded=true" width="500" height="500" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" style="color:black;">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- TOS -->
<div class="modal fade" id="tos" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="color:black;text-align:center">用户协议</h4>
      </div>
      <div class="modal-body center" style="color:black;text-align:left;height:600px;overflow: scroll;padding-left:10%;padding-right:10%;color:#3b3b3b">
          <p>{$config['appName']}，以下简称本站。</p>
    <h3>隐私</h3>
    <p>
        <ul>
            <li>用户注册时候需要提供邮箱以及密码，并自行保管。邮箱为用户的唯一凭证。</li>
            <li>本站将加密储存网站登录密码，并尽可能防止任何程度的数据泄露。但Shadowsocks连接密码为类明文储存，为了保证您的权益，请保持默认自动生成的密码或采用非自身常用密码。</li>
            <li>用户在使用本站提供之服务时，享有所有数据和隐私安全的权利。所有通过 Shadowsocks 客户端的流量都将被加密。本站将不会记录用户的任何访问记录，更不会尝试在服务端上获取用户的流量数据。</li>
        </ul>
    </p>

    <h3>禁止用途</h3>
    <p>
        <ul>
              <li>不得发布儿童色情等相关内容</li>
              <li>不得发布任何形式的带有欺诈，欺骗性质的内容，包含但不仅限于仿牌、钓鱼等性质的内容</li>
              <li>不得进行违反中国和服务器所在国法律的行为或发布违反中国和服务器所在国法律的内容。</li>
              <li>不得使用BT、迅雷、电驴等严重影响网络性能的程序</li>
              <li>不得提供破解后的程序、破解补丁、破解方法</li>
              <li>不得下载含版权的图片、模板、音乐、视频、图书等</li>
              <li>不得下载含版权的图片、模板、音乐、视频、图书等的BT种子</li>
              <li>不得提供诱导、介绍他人犯罪方法的内容（包括传播自杀情绪等）</li>
              <li>不得散播木马或病毒</li>
              <li>不得发送垃圾邮件</li>
              <li>不得发布关于架设私服以及与私服有关的内容</li>
              <li>不得发布架设外挂以及与外挂有关的内容</li>
              <li>不得发布架设博彩和赌博等一切相关的内容</li>
              <li>不得进行一切黑客活动，如在对其他站点进行CC攻击等</li>
       </ul>
    </p>

    <h3>其它</h3>
    <p>
    <ul>
        <li>本站仅限个人学术研究使用。不得多人共用账号。一经发现账号将会被删除。</li>
        <li>超过14天未签到的账户，本站有权在不通知用户的情况下进行删除。</li>
        <li>任何有滥用行为的用户，本站有权在不通知用户的情况下进行删除。（包括但不限于SPAM，CC攻击等）</li>
        <li>任何通过本站邀请码进行获利的用户，本站有权在不通知用户的情况下进行删除，并清除使用此邀请码注册的新账户。</li>
        <li>本站不提供任何客户端方面的支持。我们将尽可能保证所有服务器在所有监控节点均可正常使用，客户端问题须由客户自行解决。</li>
        
        <li>TOS更新时用户需要遵守最新TOS。最后更新时间：<code>2015.10.24</code></li>
    </ul>
    </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" style="color:black;">Close</button>
      </div>
    </div>
  </div>
</div>

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

        function showCode(){
            $('#Code').modal('toggle');
        }

        function showTos(){
            $('#tos').modal('toggle');
        }
</script>
</body>
</html>
