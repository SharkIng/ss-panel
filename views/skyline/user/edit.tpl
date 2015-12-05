{include file='user/main.tpl'}

<div class="container" style="margin-top: 50px;">
        <!-- Content Header (Page header) -->
        <div class="page-header">
            <h1>
                信息更新
                <small>Profile Update</small>
            </h1>
        </div>

        <!-- Main content -->
            <div class="row">
                <!-- left column -->
                <div class="col-md-6">
                    <!-- general form elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 style="display: inline;">网站登录密码修改</h3></div>
                            <div class="panel-body">

                            <div id="msg-error" class="alert alert-warning alert-dismissable" style="display:none">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <h4><i class="icon fa fa-warning"></i> 出错了!</h4>
                                <p id="msg-error-p"></p>
                            </div>

                            <div id="msg-success" class="alert alert-info alert-dismissable" style="display:none">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <h4><i class="icon fa fa-info"></i> Ok!</h4>
                                <p id="msg-success-p"></p>
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="当前密码(必填)" id="oldpwd">
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="新密码" id="pwd">
                            </div>

                            <div class="form-group">
                                <input type="password" placeholder="确认密码" class="form-control" id="repwd">
                            </div>

                            <p>
                                <button type="submit" id="pwd-update" class="btn btn-primary">修改</button>
                            </p>
                        </div><!-- /.box-body -->

                    </div><!-- /.box -->
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 style="display: inline;">Shadowsocks 链接密码修改</h3></div>
                            <div class="panel-body">

                            <div id="ss-msg-success" class="alert alert-info alert-dismissable" style="display:none" >
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <h4><i class="icon fa fa-info"></i> 修改成功!</h4>
                                <p id="ss-msg-success-p"></p>
                            </div>



                            <div class="form-group">
                                <input type="text" id="sspwd" placeholder="输入新密码" class="form-control"  >
                            </div>

                            <p>
                                <button type="submit" id="ss-pwd-update" class="btn btn-primary"  >修改 </button>
                            </p>

                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div><!-- /.col (right) -->

            </div>
</div><!-- /.content-wrapper -->

    <script>
        $("#msg-success").hide();
        $("#msg-error").hide();
        $("#ss-msg-success").hide();
    </script>

    <script>
        $(document).ready(function(){
            $("#pwd-update").click(function(){
                $.ajax({
                    type:"POST",
                    url:"password",
                    dataType:"json",
                    data:{
                        oldpwd: $("#oldpwd").val(),
                        pwd: $("#pwd").val(),
                        repwd: $("#repwd").val()
                    },
                    success:function(data){
                        if(data.ret){
                            $("#msg-error").hide();
                            $("#msg-success").show();
                            $("#msg-success-p").html(data.msg);
                            window.setTimeout("location.href='/auth/login'", 2000);
                        }else{
                            $("#msg-error").show();
                            $("#msg-error-p").html(data.msg);
                        }
                    },
                    error:function(jqXHR){
                        alert("发生错误："+jqXHR.status);
                    }
                })
            })
        })
    </script>

    <script>
        $(document).ready(function(){
            $("#ss-pwd-update").click(function(){
                $.ajax({
                    type:"POST",
                    url:"sspwd",
                    dataType:"json",
                    data:{
                        sspwd: $("#sspwd").val()
                    },
                    success:function(data){
                        if(data.ret){
                            $("#ss-msg-success").show();
                            $("#ss-msg-success-p").html(data.msg);
                        }else{
                            $("#ss-msg-error").show();
                            $("#ss-msg-error-p").html(data.msg);
                        }
                    },
                    error:function(jqXHR){
                        alert("发生错误："+jqXHR.status);
                    }
                })
            })
        })
    </script>

{include file='user/footer.tpl'}