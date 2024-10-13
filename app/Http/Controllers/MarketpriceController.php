<?php

namespace App\Http\Controllers;

use App\Models\marketprice;
use Illuminate\Http\Request;

class MarketpriceController extends Controller
{
    public function market_price(){
        return view('admin.marketprice');
    }

    public function getPrices(Request $request)
    {
        $city = $request->input('city');
    
        // Fetch data from the database
        $fruits = marketprice::where('city', $city)->get();
        $vegetables = marketprice::where('city', $city)->get();
    
        return response()->json([
            'fruits' => $fruits,
            'vegetables' => $vegetables,
        ]);
    }
}

