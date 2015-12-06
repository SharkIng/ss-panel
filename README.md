## Talk about this version

### Added functions
* Stripe Payment/Donation. (Only for Skyline theme right now.)

### Added themes
* Skyline Theme.

### Working on. / To-Do
* Radius VPN intergration.
* Others?

### How two

#### How to use Stripe payment
1. You need edit/change the Stripe public key in ./public/assets/public/js/stripe.js
2. Add your Stripe secret key in ./config/app.php

* Submit issue if there is any errors or bugs.
* Payment will not return any message now. 
* Payment will not deal with any user database information YET. (I will add this once Orvice finish this entire project)

#### How to use Skyline theme
1. Change theme setting in ./config/app.php
2. Do whatever you need to modify this theme.
3. PLEASE, PLEASE, PLEASE! Download the movie or edit it in ./views/skyline/index.tpl

* This theme require a movie for index. 
* This theme is currently for my personal uses ONLY and may have multiple bugs.

* movie download: [Current Movie](https://copy.com/web/users/user-2154040/copy/Movies/bg.mp4) OR Change to your own movie.


### Thanks
1. This is a [SS-Panel](https://github.com/orvice/ss-panel) fork. Main function are implemented by [Orvice](https://github.com/orvice/ss-panel)
2. Skyline Theme is made of Inspiration/"Copied" from [VL](https://vnet.link).

----

# ss-panel

Let's talk about cat.  Base on [LightFish](https://github.com/OzCat/LightFish)

[![Join the chat at https://gitter.im/orvice/ss-panel](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/orvice/ss-panel?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[Releases](https://plus.google.com/communities/112308980947577664041) |[Follow on Trello](https://trello.com/b/dr62AtYI/ss-panel) | [Google+](https://plus.google.com/communities/112308980947577664041)

## About

v3未完成，请查看[v2](https://github.com/orvice/ss-panel/tree/v2)

Please visit [releases pages](https://github.com/orvice/ss-panel/releases) to download ss-panel.

[中文安装教程](https://github.com/orvice/ss-panel/wiki/v3-Install)

## Requirements

* PHP 5.5 or newer
* Web server with URL rewriting
* MySQL


## Install

### Step 0

```
git clone https://github.com/orvice/ss-panel.git
```

### Step 1

```
$ curl -sS https://getcomposer.org/installer | php
$ php composer.phar  install
```

### Step 2

```
cp config-sample config
```

Then edit config file under config dir.

### Step 3

Import the sql to you mysql database.

### Step 4

Nginx Config example:

if you download ss-panel on path /home/www/ss-panel


```
root /home/www/ss-panel/public;

location / {
    try_files $uri $uri/ /index.php$is_args$args;
}
    
``` 
