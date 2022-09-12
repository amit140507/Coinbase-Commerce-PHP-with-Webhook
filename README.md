# How To Test Coinbase Commerce with Webhook on Localhost.

## To create charge

On This page, https://beta.commerce.coinbase.com/settings/security Click on **New Api Key** Button and copy the API key and paste in charge_create.php file.

## Use Webhook to Insert data in database or Send Emails.
 Visit this page, https://beta.commerce.coinbase.com/settings/notifications and Click on **Show Shared Secret** Button.
 Copy Shared Secret and Paste in webhook.php file.
 
Open cmd in your current folder and paste this command:
``` php -S localhost:8080 webhook.php ```

To make your server externally accessible, you can install ngrok and run this command in cmd:
``` ngrok http 8080```

The output should be something similar to:

```
Session Status                online
Session Expires               7 hours, 59 minutes
Version                       2.2.8
Region                        United States (us)
Web Interface                 http://127.0.0.1:4040
Forwarding                    http://cbfcdae9.ngrok.io -> localhost:3000
```
Open this link written in front of Web Interface (in my case it is  http://127.0.0.1:4040 ). This is where you can see webhook working.

Visit This page, https://beta.commerce.coinbase.com/settings/notifications Click on **Add an Endpoint** Button and paste the ngrok forwarding URL+webhook.php (Example : http://cbfcdae9.ngrok.io/webhook.php)

## Testing Time

Run create_charge.php file.
visit ngrok web interface, you're going to see a new request there as charge:created.
now check your table charge_created in your database. 
Click on 'Cancel Payment' button 
now check your table payment_failed in your database. 


