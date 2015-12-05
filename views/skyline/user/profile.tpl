{include file='user/main.tpl'}

<div class="container" style="margin-top: 50px;">
    <div class="page-header">
        <h1>
            个人资料
            <small>Profile</small>
        </h1>
    </div>

    <!-- Main content -->
    <!-- Main content -->
    <div class="panel panel-default">
        <div class="panel-heading"><h3 style="display: inline;">用户信息</h3></div>
            <div class="panel-body">
                        <p>用户名：{$user->user_name}</p>
                        <p>邮箱：{$user->email}</p>
                        <div class="row" style="padding-left: 20px;">
                            <p><a class="btn btn-danger btn-sm" href="kill">删除我的账户</a>&nbsp;<a class="btn btn-primary btn-sm" href="/user/edit">编辑我的账户</a></p>
                            <p></p>
                        </div>
            </div><!-- /.box -->
    </div>
</div><!-- /.content-wrapper -->
{include file='user/footer.tpl'}