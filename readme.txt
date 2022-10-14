install xampp 3.3.0 (PHP v8.1.10)
install nodejs v16.14.0
install Composer version 2.4.2 (download Composer-Setup.exe)
or Command-line installation

cd Project1
composer create-project laravel/laravel basic
cd basic
#start
php artisan serve

open http://localhost:8000/
Browser show Laravel v9.34.0 (PHP v8.1.10)

#create controller
php  artisan make:controller Demo/DemoController

Upcube template

name route and url route

#create middleware
php artisan make:middleware EnsureTokenIsValid


vscode extension
laravel blade snippets

#breeze authentication
composer require laravel/breeze --dev
php artisan breeze:install
npm install
npm run dev

create mysql database named website
php artisan migrate

breeze done!
login & register done!

login with username
add username to Auth/RegisteredUserController
add username to Models/User

email->username in App/Http/Requests/Auth/LoginRequest.php
1. authenticate function
2. rule function

route list
php artisan r:l

implements MustVerifyEmail in App\Models\user

register and verify email done!!
mailtrap.io

php artisan cache:clear
php artisan optimize

clear route !important
php artisan route:cache

toastr notification

before backup please run 3 command below
php artisan config:clear
php artisan cache:clear
php artisan view:clear
