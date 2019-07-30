<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
        'webhook' => [
            'secret' => env('STRIPE_WEBHOOK_SECRET'),
            'tolerance' => env('STRIPE_WEBHOOK_TOLERANCE', 300),
        ],
    ],
    //social login services
    'facebook' => [
      'client_id' => '147238062044135',
      'client_secret' => '616d4979826bde1ac337baeeeae345af',
      'redirect' => 'http://localhost:8000/callback/facebook',
    ],

    'github' => [
      'client_id' => '84b696e3dd9ab714bb84',
      'client_secret' => 'bf648fe293a7fa90b37073ea314e3fa766718600',
      'redirect' => 'http://localhost:8000/callback/github',
    ],

    'google' => [
      'client_id' => '354200111230-4us4ab5mg5jup1ftk11j27gp1jgfaoem.apps.googleusercontent.com',
      'client_secret' => 'mXW7iBDp4ZdvnI4F8ZvGKgvg',
      'redirect' => 'http://localhost:8000/callback/google',
    ],

    'twitter' => [
      'client_id' => 'z82bueMpxBTwLSglzFFXvGB8U',
      'client_secret' => 'XJS52OVN1Jhijx7s0R2aMNhj0ND3ws0uJqPRPi4s41CkeNPzRF',
      'redirect' => 'http://127.0.0.1:8000/callback/twitter',
    ],
];
