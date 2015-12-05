<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{$config["appName"]}</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="/assets/public/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="//code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
<!--     <link href="/assets/public/css/AdminLTE.min.css" rel="stylesheet" type="text/css" /> -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="/assets/public/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- jQuery 2.1.3 -->
    <script src="/assets/public/js/jquery.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div id="container">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color: rgba(255,255, 255, 0.85);box-shadow: 5px 10px 15px 5px rgba(0,0,0,.1);">
        <div class="container">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="/user"><h3>{$config["appName"]}<h3></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a  href="/user" data-toggle="tooltip" data-placement="auto" title="总控">
                                <span class="glyphicon glyphicon-cloud" style="font-size: 25px;"></span>
                            </a>
                        </li>
                        <li>
                            <a  href="/user/node" data-toggle="tooltip" data-placement="auto" title="节点">
                                <span class="glyphicon glyphicon-tasks"  style="font-size: 25px;"></a>
                            </a>
                        </li>
                        <li>
                            <a href="/user/invite" data-toggle="tooltip" data-placement="auto" title="邀请">
                                <span class="glyphicon glyphicon-envelope"  style="font-size: 25px;"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="tooltip" data-placement="auto" title="支付">
                                <span class="glyphicon glyphicon-shopping-cart"  style="font-size: 25px;"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="tooltip" data-placement="auto" title="客服">
                                <span class="glyphicon glyphicon-send"  style="font-size: 25px;"></span>
                            </a>
                        </li>
                       <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <div class="panel panel-default" style="width: 300px; border: none; box-shadow: none;">
                                    <div class="panel panel-heading" style="box-align: center; border: none; box-shadow: none;">
                                        <img src="{$user->gravatar}" class="img-circle" style="margin-left: 95px;" alt="User Image" />
                                    </div>
                                    <div class="panel panel-body">
                                        <p style="text-align: center;"><span class="hidden-xs">{$user->name}</span></p>
                                        <p style="text-align: center;">{$user->email}</p>
                                        <p style="text-align: center;"><small>加入时间：{$user->t}</small></p>
                                        </br>
                                        <div class="pull-left">
                                            <a href="/user/profile" class="btn btn-default btn-flat">个人信息</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="/user/edit" class="btn btn-default btn-flat">编辑资料</a>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </li>
<!--                         <li>
                            <a href="/user/edit" data-toggle="tooltip" data-placement="auto" title="管理">
                                <span class="glyphicon glyphicon-cog"  style="font-size: 25px;"></span>
                            </a>-->
                        <li>
                            <a href="/user/logout" data-toggle="tooltip" data-placement="auto" title="登出">
                                <span class="glyphicon glyphicon-off"  style="font-size: 25px;"></span>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>

<div id="header"></div>




