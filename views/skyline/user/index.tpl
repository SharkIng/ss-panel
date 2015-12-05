{include file='user/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="container" style="margin-top: 50px;">
    <!-- Content Header (Page header) -->
    <div class="page-header">
        <h1>
            用户中心
            <small>User Center</small>
        </h1>
    </div>

    <!-- Main content -->
    <div class="panel panel-default">
        <div class="panel-heading"><h3 style="display: inline;">公告&FAQ</h3></div>
            <div class="panel-body">
                <p>流量不会重置，可以通过签到获取流量。</p>
                <p>流量可以通过签到获取，基本每天可以用1G流量。</p>
            </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading"><h3 style="display: inline;">流量试用情况</h3></div>
            <div class="panel-body">
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: {$user->trafficUsagePercent()}%">
                            <span class="sr-only">Transfer</span>
                        </div>
                    </div>
                    <p> 总流量:{$user->enableTraffic()}</p>
                    <p> 已用流量：{$user->usedTraffic()}  </p>
                    <p> 剩余流量： {$user->unusedTraffic()} </p>
            </div><!-- /.box-body -->
    </div><!-- /.col (left) -->


    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 style="display: inline;">签到获取流量</h3>
                </div><!-- /.box-header -->
                <div class="panel-body">
                    {if $user->isAbleToCheckin() }
                    <p id="checkin-btn"> <button id="checkin" class="btn btn-success  btn-flat">签到</button></p>
                    {else}
                    <p><a class="btn btn-success btn-flat disabled" href="#">不能签到</a> </p>
                    {/if}
                    <p> 24小时内可以签到一次。</p>
                    <p id="checkin-msg" ></p>
                    <p>上次签到时间：<code>{$user->lastCheckInTime()}</code></p>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col (right) -->

        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 style="display: inline;">连接信息</h3>
                </div><!-- /.box-header -->
                <div class="panel-body">
                    <p> 端口：<code>{$user->port}</code> </p>
                    <p> 密码：{$user->passwd} </p>
                    <p> 最后使用时间：<code>{$user->lastSsTime()}</code> </p>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col (right) -->

    </div><!-- /.row -->
        <!-- END PROGRESS BARS -->
</div><!-- /.content -->

<script>
    $(document).ready(function(){
        $("#checkin").click(function(){
            $.ajax({
                type:"POST",
                url:"/user/checkin",
                dataType:"json",
                success:function(data){
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
                },
                error:function(jqXHR){
                    alert("发生错误："+jqXHR.status);
                }
            })
        })
    })
</script>


{include file='user/footer.tpl'}