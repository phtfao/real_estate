<?php
require 'vendor/autoload.php';

use GuzzleHttp\Client;

$params = [
    "api_key" => getenv('REAL_ESTATE_API_KEY', 'REAL_ESTATE_API_KEY'),
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