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
Connections                   ttl     opn     rt1     rt5     p50     p90                                                                             0       0                                       0.00    0.00    0.00    0.00 
```
Open this link written in front of Web Interface (in my case it is  http://127.0.0.1:4040 ). This is where you can see webhook's working.

Visit This page, https://beta.commerce.coinbase.com/settings/notifications Click on **Add an Endpoint** Button and paste the **ngrok forwarding URL/webhook.php** (Example : http://e2c4-49-43-98-88.in.ngrok.io/webhook.php)

## Testing Time

Run create_charge.php file.
visit ngrok web interface, you're going to see a new request there as charge:created.
Now check your table charge_created in your database. 
Click on 'Cancel Payment' button 
Now check your table payment_failed in your database. 


