# How To Test Coinbase Commerce with Webhook on Localhost.

## To create charge

On This page https://beta.commerce.coinbase.com/settings/security Click on 'New Api Key' Button and copy the API key and paste in charge_create.php file.

=> webhook.php  --> use webhook to insert data in database.
On This page https://beta.commerce.coinbase.com/settings/notifications click on Add an Endpoint and paste the ngrok URL+webhook.php (example : https://c0b1-223-178-209-142.in.ngrok.io/webhook.php)
click on Show Shared Secret Button and copy Shared Secret. Paste Shared Secret in webhook.php.


first Run this command in your current folder
open cmd and paste this command
php -S localhost:8080 webhook.php
To make your server externally accessible, you can install ngrok and run this command in cmd:
ngrok http 8080

Open this link written in front of Web Interface (in my case it is  http://127.0.0.1:4040 ). This is where you can see webhook working.

The output should be something similar to:

Session Status                online
Session Expires               7 hours, 59 minutes
Version                       2.2.8
Region                        United States (us)
Web Interface                 http://127.0.0.1:4040
Forwarding                    http://cbfcdae9.ngrok.io -> localhost:3000
Forwarding                    https://cbfcdae9.ngrok.io -> localhost:3000

Copy the "https" link (in this case https://cbfcdae9.ngrok.io) to your clipboard and then login to your Coinbase Commerce dashboard and paste it into the Webhook section of your settings page. Also remember to copy your shared secret from the Webhook settings into your Webhook.php configuration. Send test request.


