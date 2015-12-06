<?php

use Slim\App;
use App\Controllers;
use App\Middleware\Auth;
use App\Middleware\Guest;
use App\Middleware\Admin;

/***
 * The slim documents: http://www.slimframework.com/docs/objects/router.html
 */

$app = new App();

// Home
$app->get('/', 'App\Controllers\HomeController:home');
$app->get('/code', 'App\Controllers\HomeController:code');

// User Center
$app->group('/user', function () {
    $this->get('/', 'App\Controllers\UserController:home');
    $this->post('/checkin', 'App\Controllers\UserController:doCheckin');
    $this->get('/node', 'App\Controllers\UserController:node');
    $this->get('/node/{id}', 'App\Controllers\UserController:nodeInfo');
    $this->get('/profile', 'App\Controllers\UserController:profile');
    $this->get('/invite', 'App\Controllers\UserController:invite');
    $this->post('/invite', 'App\Controllers\UserController:doInvite');
    $this->get('/edit', 'App\Controllers\UserController:edit');
    $this->post('/password', 'App\Controllers\UserController:updatePassword');
    $this->post('/sspwd', 'App\Controllers\UserController:updateSsPwd');
    $this->get('/sys', 'App\Controllers\UserController:sys');
    $this->get('/test', 'App\Controllers\UserController:test');
    $this->get('/logout', 'App\Controllers\UserController:logout');
    $this->get('/donation', 'App\Controllers\UserController:donation');
    $this->post('/donation', 'App\Controllers\UserController:doDonation');
})->add(new Auth());

// Auth
$app->group('/auth', function () {
    $this->get('/login', 'App\Controllers\AuthController:login');
    $this->post('/login', 'App\Controllers\AuthController:loginHandle');
    $this->get('/register', 'App\Controllers\AuthController:register');
    $this->post('/register', 'App\Controllers\AuthController:registerHandle');
    $this->get('/logout', 'App\Controllers\AuthController:logout');
})->add(new Guest());

// Admin
$app->group('/admin', function () {
    $this->get('/', 'App\Controllers\AdminController:home');
    $this->get('/node', 'App\Controllers\AdminController:node');
    $this->get('/profile', 'App\Controllers\AdminController:profile');
    $this->get('/invite', 'App\Controllers\AdminController:invite');
    $this->get('/sys', 'App\Controllers\AdminController:sys');
    $this->get('/logout', 'App\Controllers\AdminController:logout');
})->add(new Admin());

// Run Slim Routes for App
$app->run();

