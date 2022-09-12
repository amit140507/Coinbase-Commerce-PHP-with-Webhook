<?php

include_once "config.php";
//TO INSERT DATA IN DATABASE.

$secret = "YOUR_SHARED_SECRET";

$payload = file_get_contents("php://input");
$hash = hash_hmac('sha256', $payload, $secret);
$webhookSignature = $_SERVER['HTTP_X_CC_WEBHOOK_SIGNATURE'];
if (hash_equals($webhookSignature, $hash)) {
    $jsonString = json_decode($payload, true);

    $event_id = $jsonString['event']['id'];
    $event_type = $jsonString['event']['type'];
    $data_id = $jsonString['event']['data']['id'];
    $data_code = $jsonString['event']['data']['code'];
    $localamount = $jsonString['event']['data']['pricing']['local']['amount'];
    $localcurrency = $jsonString['event']['data']['pricing']['local']['currency'];
    $customer_name = $jsonString['event']['data']['metadata']['customer_name'];
    $customer_email = $jsonString['event']['data']['metadata']['customer_email'];
    $created_at = $jsonString['event']['created_at'];
    $created_1 = str_replace("T", " ", "$created_at");
    $created_timestamp = str_replace("Z", "", "$created_1");

    if ($event_type == 'charge:created') {

        $query = "INSERT into charge_created VALUES (null,'$event_id','$event_type','$data_id','$data_code','$localamount','$localcurrency','$customer_name','$customer_email','$created_timestamp')";
        $result = mysqli_query($connectionlink, $query);
    }

    if ($event_type == 'charge:confirmed') {
        $query = "INSERT into payment_success VALUES (null,'$event_id','$event_type','$data_id','$data_code','$localamount','$localcurrency','$customer_name','$customer_email',''$created_timestamp')";
        $result = mysqli_query($connectionlink, $query);
    }
    if ($event_type == 'charge:failed') {
        $failedstatus = $jsonString['event']['data']['timeline'][1]["status"];
        // echo "$failedstatus";
        if ($failedstatus == 'CANCELED') {
            $query = "INSERT into payment_failed VALUES (null,'$event_id','$event_type','$data_id','$data_code','$localamount','$localcurrency','$customer_name','$customer_email','$created_timestamp','$failedstatus')";
            $result = mysqli_query($connectionlink, $query);
        }
        if ($failedstatus == 'EXPIRED') {
            $query = "INSERT into payment_failed VALUES (null,'$event_id','$event_type','$data_id','$data_code','$localamount','$localcurrency','$customer_name','$customer_email','$created_timestamp','$failedstatus')";
            $result = mysqli_query($connectionlink, $query);
        }
    }
    if ($event_type == 'charge:pending') {
       //do something
        echo "pending";
    }
}
