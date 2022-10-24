install xampp 3.3.0 (PHP v8.1.10)
install nodejs v16.14.0
install Composer version 2.4.2 (download Composer-Setup.exe)
or Command-line installation

########### Website ############
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


########### Inventory System ############
php artisan make:model Supplier -m
php artisan make:controller Pos/SupplierController


php artisan make:model Customer -m
php artisan make:controller Pos/CustomerController

Laravel Image Intervention
#to install
composer require intervention/image
#to config
config/app.php (add 2 lines, please follow doc.)
#to publish 
php artisan vendor:publish --provider="Intervention\Image\ImageServiceProviderLaravelRecent"

php artisan make:model Unit -m
php artisan make:controller Pos/UnitController

php artisan make:model Product -m
php artisan make:controller Pos/ProductController

#BelongsTo
#Model Product
    public function supplier() {
        return $this->belongsTo(Supplier::class,'supplier_id','id');
    } 
#View Access    
<td>{{$item['supplier']['name']}}</td>

php artisan make:model Purchase -m
php artisan make:controller Pos/PurchaseController

php artisan make:controller Pos/DefaultController

#get-category # the first query complex

class DefaultController extends Controller
{
    public function GetCategory(Request $request){
        $supplier_id = $request->supplier_id;


        $allCategory = Product::with(['category'])->select('category_id')->where('supplier_id',$supplier_id)->groupBy('category_id')->get();

        return response()->json($allCategory);

    } // End method
}

#Add script
handlebars.js
notify cdn

#add select2

#add Invoice
php artisan make:controller Pos/InvoiceController

php artisan make:model Invoice -m
php artisan make:model InvoiceDetail -m
php artisan make:model Payment -m
php artisan make:model PaymentDetail -m

Relationship
belongsTo M-1
hasMany 1-M