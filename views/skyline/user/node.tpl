{include file='user/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="container" style="margin-top: 50px;">
    <!-- Content Header (Page header) -->
    <div class="page-header">
        <h1>
            节点列表
            <small>Node List</small>
        </h1>
    </div>

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-tasks"  style="font-size: 20px;"></span>
                        <h3 style="display:inline;">节点</h3>
                    </div><!-- /.box-header -->
                    <div class="panel-body">
                        <div class="alert alert-info alert-dismissable">
                            <h4>注意!</h4>
                            <p>请勿在任何地方公开节点地址！</p>
                        </div> 


                        {foreach $nodes as $node}
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-md-10" style="">
                                         <i class="fa fa-angle-right"></i> {$node->name}
                                    </div>
                                    <div class="col-md-2 pull-right">
                                        <a   href="./node/{$node->id}">
                                                查看配置文件/二维码
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="panel-body">
                                <div class="tab-pane active" id="tab_1-1">
                                    <p> <a class="label label-primary margin" href="#">地址:</a> <code>{$node->server}</code> </p>
                                    <p>
                                        <a class="label label-success margin" href="#">{$node->status}</a>
                                        <a class="label label-info margin" href="#">{$node->method}</a>
                                    </p>
                                    <p style="padding-left: 10px;"> {$node->info}</p>
                                </div><!-- /.tab-pane -->
                            </div><!-- /.tab-content -->

                        </div><!-- nav-tabs-custom -->
                        {/foreach}


                    </div><!-- /.box-body -->

                </div><!-- /.box -->
            </div><!-- /.col (left) -->

        </div><!-- /.row -->
        <!-- END PROGRESS BARS -->
</div><!-- /.content-wrapper -->


{include file='user/footer.tpl'}