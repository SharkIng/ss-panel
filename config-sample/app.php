<?php

/***
 * config app information
 */

return [
    /**
     * 站点设置
     */
    'key' => "key",  // Key 请修改此值确保安全
    'appName'    => 'ss-panel3', //站点名称
    'baseUrl' => '/',       // 站点地址
    'timeZone' => 'PRC',    // RPC 天朝时间  UTC 格林时间
    'pwdMethod' => 'md5',   // 密码加密，旧版ss-panel请使用md5   可选 md5,sha256
    'salt' => '',               // 密码加密用，从旧版升级请留空
    'theme'    => 'materialize',
    'authDriver' => 'redis', // support cookie,// @TODO file session cookie2

    // 邮件
    'mailDriver' => 'mailgun' ,// mailgun or smtp

    // 用户签到设置
    'checkinTime' => '22',  // 签到间隔时间 单位小时
    'checkinMin' => '93',   // 签到最少流量 单位MB
    'checkinMax' => '97',   // 签到最多流量

    //
    'defaultTraffic' => 5, // 用户初始流量 单位GB

    // 注册后获得的邀请码数量
    'inviteNum' => 5,

    // Stripe Secret Key
    'stripeKey' => '',
    'stripePubKey' => '', 

    'version'  => '3.0.0 Beta',
];