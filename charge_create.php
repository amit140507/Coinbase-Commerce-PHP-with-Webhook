<?php

$key = 'YOUR_API_KEY';
$curl = curl_init();

//META DATA
$name = "amit";
$surname = "singh";
$amount = "10";
$email = "abc@abc.com";

curl_setopt_array($curl, [
    CURLOPT_URL => "https://api.commerce.coinbase.com/charges",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_SSL_VERIFYPEER => false,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "POST",
    CURLOPT_POSTFIELDS => "{\"local_price\":{\"amount\":$amount,\"currency\":\"USD\"},\"metadata\":{\"customer_email\":\"$email\",\"customer_name\":\"$name $surname\"},\"logo_url\":\"\",\"name\":\"Coinbase Payment\",\"description\":\"Test Payment\",\"pricing_type\":\"fixed_price\",\"redirect_url\":\"https://simpleseogroup.co/allyearcooling/thank-you/\",\"cancel_url\":\"https://simpleseogroup.co/allyearcooling/\"}",
    CURLOPT_HTTPHEADER => [
        "Accept: application/json",
        "Content-Type: application/json",
        "X-CC-Api-Key:$key",
        "X-CC-Version: 2018-03-22"
    ],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
    echo "cURL Error #:" . $err;
} else {
    $array = (json_decode($response, true));
    $redirect = $array['data']['hosted_url'];
    
    header("location:$redirect");
}
