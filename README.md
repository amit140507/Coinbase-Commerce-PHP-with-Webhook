# Coinbase_Commerce_PHP
How To Test Coinbase Commerce with Webhook on Localhost.

=> charge_create.php  --> to create charge
On This page https://beta.commerce.coinbase.com/settings/security click on New Api Key Button and copy that API key and paste in charge_create.php.

=> webhook.php  --> use webhook to insert data in database.
On This page https://beta.commerce.coinbase.com/settings/notifications click on Add an Endpoint and paste the ngrok URL+webhook.php (example : https://c0b1-223-178-209-142.in.ngrok.io/webhook.php)
click on Show Shared Secret Button and copy Shared Secret. Paste Shared Secret in webhook.php.


first Run this command in your current folder
open cmd and paste this command
php -S localhost:8080 webhook.php
