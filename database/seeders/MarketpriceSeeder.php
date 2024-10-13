<?php

namespace Database\Seeders;

use App\Models\marketprice;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Storage;
class MarketpriceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
{
    try {
        // Read the JSON file from the storage
        $json = Storage::disk('local')->get('/json/market-price.json');
        if ($json === false) {
            throw new \Exception('Failed to read JSON file');
        }

        // Decode the JSON
        $data = json_decode($json, true);
        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new \Exception('Error decoding JSON: ' . json_last_error_msg());
        }

        // Loop through fruitPrices and insert data
        foreach ($data['fruitPrices'] as $city => $fruits) {
            foreach ($fruits as $fruit) {
                marketprice::updateOrCreate(
                    [
                        'crop' => $fruit['name'], // Assuming 'crop' corresponds to the fruit name
                        'activity' => 'Fruit Price', // You can modify this based on your needs
                        'city' => $city // Add city if needed
                    ],
                    [
                        'kg' => $fruit['kg'],
                        'pricecolumn' => $fruit['price']
                    ]
                );
            }
        }

        // Loop through vegetablePrices and insert data
        foreach ($data['vegetablePrices'] as $city => $vegetables) {
            foreach ($vegetables as $vegetable) {
                marketprice::updateOrCreate(
                    [
                        'crop' => $vegetable['name'], // Assuming 'crop' corresponds to the vegetable name
                        'activity' => 'Vegetable Price', // You can modify this based on your needs
                        'city' => $city // Add city if needed
                    ],
                    [
                        'kg' => $vegetable['kg'],
                        'pricecolumn' => $vegetable['price']
                    ]
                );
            }
        }

    } catch (\Exception $e) {
        // Handle or log the exception
        echo 'Error: ' . $e->getMessage();
    }
}

}