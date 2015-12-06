<?php

namespace App\Services;

use App\Services\Config;
use Stripe;

class StripePayment
{

    public static function charge($token,$email,$amount){
        $key = Config::get('stripeKey');
        
        Stripe\Stripe::setApiKey($key);

        $customer = Stripe\Customer::create(array(
            'email' => $email,
            'card'  => $token
        ));

        $charge = Stripe\Charge::create(array(
            'customer' => $customer->id,
            'amount'   => $amount,
            'currency' => 'USD'
        ));

        return $charge;
    }
}