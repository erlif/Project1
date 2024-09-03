<?php

    // Set kode merchant anda 
    $merchantCode = "DS20042"; 
    // Set merchant key anda 
    $apiKey = "7cc9a5871d632c074319fbb5ef4bb60e";
    // catatan: environtment untuk sandbox dan passport berbeda 

    $datetime = "2025-01-25 16:23:08";  
    $paymentAmount = 10000;
    $signature = hash('sha256',$merchantCode . $paymentAmount . $datetime . $apiKey);

    $params = array(
        'merchantcode' => $merchantCode,
        'amount' => $paymentAmount,
        'datetime' => $datetime,
        'signature' => $signature
    );

    $params_string = json_encode($params);

    $url = 'https://sandbox.duitku.com/webapi/api/merchant/paymentmethod/getpaymentmethod'; 

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $url); 
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");                                                                     
    curl_setopt($ch, CURLOPT_POSTFIELDS, $params_string);                                                                  
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);                                                                      
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
        'Content-Type: application/json',                                                                                
        'Content-Length: ' . strlen($params_string))                                                                       
    );   
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

    //execute post
    $request = curl_exec($ch);
    $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

    if($httpCode == 200)
    {
        $results = json_decode($request, true);
        print_r($results, false);
    }
    else{
        $request = json_decode($request);
        $error_message = "Server Error " . $httpCode ." ". $request->Message;
        echo $error_message;
    }
?>
