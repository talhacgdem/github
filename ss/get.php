<?php


// https://api.github.com/search/repositories?q=stars:>1&sort=stars


$dir                   = dirname(__FILE__);
$config['cookie_file'] = $dir . '/cookies/' . md5($_SERVER['REMOTE_ADDR']) . '.txt';






$curl = curl_init();


curl_setopt($curl,CURLOPT_URL,"https://api.github.com/search/repositories?q=stars:>1&sort=stars");
curl_setopt($curl,CURLOPT_RETURNTRANSFER,true);

$agent = 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)';
curl_setopt($curl, CURLOPT_USERAGENT, $agent);

$output=json_decode(curl_exec($curl));
curl_close($curl);


echo count($output->items);

//foreach ($output->items as $item) {
//    print_r($item);
//    echo "<hr>";
//}
