<?php
require 'vendor/autoload.php';

use GuzzleHttp\Client;
use Symfony\Component\Dotenv\Dotenv;

$dotenv = new Dotenv();
$dotenv->load(__DIR__.'/.env');

$params = [
    "api_key" => $_ENV['REAL_ESTATE_API_KEY'],
    "page[number]" => 1,
    "page[size]" => 100
];

$client = new Client([
    'base_uri' => 'https://trial.craig.mtcserver15.com/api/properties',
    'timeout'  => 5.0,
]);

$response = $client->request('GET', '', ['query' => $params]);
$contents = $response->getBody()->getContents();
$json = json_decode($contents);

print_r($json);