<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>{$config["appName"]}</title>
    <meta name="description" content="Do whatever you want on the Internet without limitation. " />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <link rel="stylesheet" href="/assets/skyline/css/styles.css" />
  </head>
  <body>
    <nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#first"><i class="ion-earth"></i> {$config["appName"]} </a>
            </div>
<!--             <div class="navbar-collapse collapse" id="bs-navbar">
                <ul class="nav navbar-nav">
                    <li>
                        <a class="page-scroll" href="#one">Intro</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#two">Highlights</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#three">Gallery</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#four">Features</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#last">Contact</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" data-toggle="modal" title="A free Bootstrap video landing theme" href="#aboutModal">About</a>
                    </li>
                </ul>
            </div> -->
        </div>
    </nav>

    <header id="first">
        <div class="header-content">
            <div class="inner">
                <h1 class="cursive">翱翔全球，放飞视野</h1>
                <h4>在这里你能享受到不一样的互联网体验...</h4>
                <hr>
                <!-- <a href="#video-background" id="toggleVideo" data-toggle="collapse" class="btn btn-primary btn-xl">Toggle Video</a> &nbsp;  -->
                <a href="/auth/login" class="btn btn-primary btn-xl page-scroll">迅速启航</a>
            </div>
        </div>
        <video autoplay="" loop="" class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s" poster="https://s3-us-west-2.amazonaws.com/coverr/poster/Traffic-blurred2.jpg" id="video-background">
            <!-- https://s3-us-west-2.amazonaws.com/coverr/mp4/Traffic-blurred2.mp4 -->
            <source src="https://copy.com/web/users/user-2154040/copy/Movies/bg.mp4" type="video/mp4">Your browser does not support the video tag. I suggest you upgrade your browser.
        </video>
    </header>

<!--     <footer id="footer">
        <div class="container-fluid">
            <br/>
            <h5 class="pull-right"> © 2015 TwoVPN Inc. </h5>
        </div>
    </footer> -->

    <!--scripts loaded here from cdn for performance -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    <script src="/assets/skyline/js/scripts.js"></script>
  </body>
</html>