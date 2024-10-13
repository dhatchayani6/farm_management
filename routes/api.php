<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CropactivitiesController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LivestockController;
use App\Http\Controllers\InsuranceController;
use App\Http\Controllers\AgricultureController;
use App\Http\Controllers\FinanceController;
use App\Http\Controllers\WeatherController;
use App\Http\Controllers\CropController;
use App\Http\Controllers\MarketpriceController;
use App\Http\Controllers\CropdataController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/',[LoginController::class,'index']);

//display the homepage here
Route::get('/homepage',[LoginController::class,'home'])->name('homepage');


//weather part
Route::get('/show_weather_page',[WeatherController::class,'show_weather_page'])->name('show_weather_page');

//crop part
Route::get('/showcrop',[CropController::class,'showcrop'])->name('showcrop');

Route::get('/cropactivities',[CropactivitiesController::class,'getcropactivity'])->name('cropactivities');
// Route::get('/getcropactivities/{crop}', [CropactivitiesController::class, 'getCropActivities']);
Route::get('/getcropactivities/{crop}', [CropactivitiesController::class, 'getCropActivities']);

//insurance part
Route::get('/insurance',[InsuranceController::class,'show_insurance'])->name('show_insurance');

//livestock part
Route::get('/livestock',[LivestockController::class,'show_livestock'])->name('show_livestock');

Route::get('/show_livestock',[LivestockController::class,'show']);//show livestock
Route::post('/add_cattel',[LivestockController::class,'add'])->name('add_livestock');//add livestock
Route::post('/update/{id}', [LivestockController::class, 'updateReport']);

//agriculture practice
Route::get('/agriculture_practice',[AgricultureController::class,'agriculture']);

//marketprice
Route::get('/market_price',[MarketpriceController::class,'market_price'])->name('market_price');

Route::get('/show_finance', [FinanceController::class, 'show_finance'])->name('show_finance_page');
Route::get('/get_finance', [FinanceController::class, 'getFinance']);
Route::post('/add_income', [FinanceController::class, 'addIncome']);
Route::post('/add_expense', [FinanceController::class, 'addExpense']);
Route::post('/add_product', [FinanceController::class, 'addSetup'])->name('add_product');
Route::get('/get_analytics', [FinanceController::class, 'getAnalytics']);
Route::get('/get_income_items', [FinanceController::class, 'getIncomeItems']);



// Route to fetch all crops
Route::get('/getcropactivities', [CropController::class, 'getCrops']);

// Route to fetch activities for a selected crop
Route::get('/getcrop/{cropName}', [CropController::class, 'getActivitiesForCrop']);

// Route to fetch activity schedule based on selections
// Route::get('/activity-schedule/{cropName}/{soilType}/{plantingType}', [CropController::class, 'getActivitySchedule']);

Route::get('/report/{id}', [LivestockController::class, 'showReport']);


Route::get('/login/{id}',[LoginController::class,'userbyid']);



Route::get('/getbycrop/{crop}',[CropdataController::class,'getsoiltype']);
Route::get('/getplanting/{crop}',[CropdataController::class,'getplanting']);





// api fro android
Route::post('/login',[LoginController::class,'login']);
Route::post('/register',[LoginController::class,'register']);
Route::post('/add_income', [FinanceController::class, 'addIncome']);
Route::post('/add_expense', [FinanceController::class, 'addExpense']);
Route::post('/add_product', [FinanceController::class, 'addSetup'])->name('add_product');
Route::get('/get_analytics', [FinanceController::class, 'getAnalytics']);
Route::get('/get_income_items', [FinanceController::class, 'getIncomeItems']);
Route::get('/getcrop/{cropName}', [CropController::class, 'getActivitiesForCrop']);
Route::get('/getcrop/{cropName}', [CropController::class, 'getActivitiesForCrop']);
Route::get('/getactivityschedule/{cropName}/{soilType}/{plantingType}', [CropController::class, 'getActivitySchedule']);
Route::get('/getbycrop/{crop}',[CropdataController::class,'getsoiltype']);
Route::get('/getplanting/{crop}',[CropdataController::class,'getplanting']);
Route::get('/marketpricesss{city}',[MarketpriceController::class,'getPrices']);
Route::get('/market-prices/{city}', [MarketpriceController::class, 'getPrices']);




