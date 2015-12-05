{include file='user/main.tpl'}

<div class="container" style="margin-top: 50px;">
    <div class="page-header">
        <h1>
            节点列表
            <small>Node List</small>
        </h1>
    </div>

    <!-- Main content -->
        <!-- START PROGRESS BARS -->
        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-hourglass"  style="font-size: 20px;"></span>
                        <h3 style="display: inline;">                        
                            Config file
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-info alert-dismissable">
                            <h4>注意!</h4>
                            <p>配置文件以及二维码请勿泄露！</p>
                        </div>

                    <code>
                        {$json}
                    </code>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-qrcode"  style="font-size: 20px;"></span>
                        <h3 style="display: inline;">                        
                            二维码地址
                        </h3>
                    </div>
                    <div class="panel-body">
                        <p style="text-align: center;">{$ssqr}</p>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->

            </div><!-- /.col (right) -->

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-qrcode"  style="font-size: 20px;"></span>
                        <h3 style="display: inline;">                        
                            二维码
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div align="center">
                            <div id="qrcode"></div>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col (right) -->


            <script src=" /assets/public/js/jQuery.min.js') "></script>
            <script src=" /assets/public/js/jquery.qrcode.min.js "></script>
            <script>
                jQuery('#qrcode').qrcode("{$ssqr}");
            </script>

        </div><!-- /.row -->
        <!-- END PROGRESS BARS -->
</div><!-- /.content-wrapper -->
{include file='user/footer.tpl'}