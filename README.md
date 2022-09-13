# Test Coinbase Commerce with Webhook on Localhost.

## To create charge

On This page, https://beta.commerce.coinbase.com/settings/security Click on **New Api Key** Button and copy the API key and paste in charge_create.php file.

![3](https://user-images.githubusercontent.com/100019842/189998315-29f62093-f607-4efd-8bec-c150aaa6f249.png)

## Use Webhook to Insert data in database or Send Emails.
 Visit this page, https://beta.commerce.coinbase.com/settings/notifications and Click on **Show Shared Secret** Button.
 
 ![4](https://user-images.githubusercontent.com/100019842/189998398-98144ece-db50-4a75-8e40-2e8068589201.png)

 Copy Shared Secret and Paste in webhook.php file.
 
Open cmd in your current folder and paste this command:
``` 
php -S localhost:8080 webhook.php
```
![1](https://user-images.githubusercontent.com/100019842/189998575-a42a6aba-28a1-40ec-b249-e8f1d2c59868.png)


To make your server externally accessible, you can install ngrok and run this command in cmd:
```
ngrok http 8080
```

The output should be something similar to:

```
Session Status                online 
Session Expires               1 hour, 57 minutes   
Terms of Service              https://ngrok.com/tos   
Version                       3.0.7                    
Region                        India (in)               
Latency                       41ms                    
Web Interface                 http://127.0.0.1:4040   
Forwarding                    https://e2c4-49-43-98-88.in.ngrok.io -> http://localhost:8080 
Connections                   ttl     opn     rt1     rt5     p50     p90                                                                              
```

![2](https://user-images.githubusercontent.com/100019842/189998648-95317e92-ea5a-4f53-b2ea-785074a53612.png)

Open this link written in front of Web Interface (in my case it is  http://127.0.0.1:4040 ). This is where you can see webhook's working.

![5](https://user-images.githubusercontent.com/100019842/189998741-def8252c-c005-4010-821b-6a8f82f04c5b.png)


Visit This page, https://beta.commerce.coinbase.com/settings/notifications Click on **Add an Endpoint** Button and paste the **ngrok forwarding URL/webhook.php** (Example : http://e2c4-49-43-98-88.in.ngrok.io/webhook.php)

![6](https://user-images.githubusercontent.com/100019842/189998793-180747a4-8fae-4808-bd80-09314a80b30f.png)

![7](https://user-images.githubusercontent.com/100019842/189998831-9c06120f-e2f0-4a0c-b1b3-e24ace4c8562.png)

## Testing Time

Run create_charge.php file.

![8](https://user-images.githubusercontent.com/100019842/189998886-7ecb793d-b511-4968-b852-8cb55a6855d5.png)

visit ngrok web interface, you're going to see a new request there as charge:created.

![9](https://user-images.githubusercontent.com/100019842/189998973-2497d902-481d-49f8-ba98-637c85a0c14f.png)

Now check your table charge_created in your database. 

![10](https://user-images.githubusercontent.com/100019842/189999042-5a3c3f6e-6996-4747-ae54-6c8ff1a955f4.png)

Click on 'Cancel Payment' button 

![11](https://user-images.githubusercontent.com/100019842/189999098-757dbc5e-e9c1-40f9-a893-d174bac2dab2.png)

visit ngrok web interface, you're going to see a new request there as charge:failed.

![12](https://user-images.githubusercontent.com/100019842/189999214-c07dc7e0-b267-487e-96a1-75c0b3fe84f1.png)

![13](https://user-images.githubusercontent.com/100019842/189999226-57faa37c-2344-4365-9fe9-15c75f91ccfc.png)

Now check your table payment_failed in your database. 

![14](https://user-images.githubusercontent.com/100019842/189999235-e4eab7ad-7896-4d50-b099-24c12f711918.png)
