<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Livestock;

class LivestockController extends Controller
{

    public function show_livestock()
    {
        return view('admin.livestock');
    }


    public function add(Request $request)
    {
        try {
            $rules = [
                'name' => 'required|string|max:255',
                'birthdate' => 'required|date',
                'color' => 'required|string',
                'feeding_time' => 'required',
                'gender' => 'required|in:male,female',
                'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                'vaccinated' => 'required|in:yes,no',
                'prescription' => 'nullable|string',
            ];

            if ($request->input('vaccinated') === 'yes') {
                $rules['vaccinated_date'] = 'required|date';
            }

            // Validate the request data
            $validatedData = $request->validate($rules);

            // Create a new Livestock instance
            $livestock = new Livestock();
            $livestock->name = $validatedData['name'];
            $livestock->birthdate = $validatedData['birthdate'];
            $livestock->color = $validatedData['color'];
            $livestock->feeding_time = $validatedData['feeding_time'];
            $livestock->gender = $validatedData['gender'];
            $livestock->vaccinated = $validatedData['vaccinated'];

            if ($validatedData['vaccinated'] === 'yes') {
                $livestock->vaccinated_date = $validatedData['vaccinated_date'];
            }

            // Handle prescription data
            if ($request->has('prescription')) {
                $livestock->prescription = $validatedData['prescription'];
            }

            // Handle image file upload
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $image->move(public_path('livestock_animal_images'), $imageName);
                $livestock->image = 'livestock_animal_images/' . $imageName;
            }

            // Save the Livestock instance to the database
            $livestock->save();

            return response()->json(['status' => 200, 'message' => 'Livestock added successfully', compact('livestock')]);
        } catch (\Illuminate\Validation\ValidationException $e) {
            // Handle validation errors
            return response()->json([
                'status' => 422,
                'message' => 'Validation failed',
                'data' => $livestock,
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json([
                'status' => 500,
                'message' => 'An error occurred while adding livestock',
                'data' => $livestock,
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function show()
    {
        $animals = Livestock::all();
        return response()->json(['animals' => $animals]);
    }



    public function edit($id)
    {
        try {
            $livestock = Livestock::findOrFail($id);
            return response()->json($livestock);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json(['error' => 'Livestock not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred'], 500);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            // Validate the request data
            $request->validate([
                'name' => 'required|string|max:255',
                'birthdate' => 'required|string',
                'color' => 'required|string',
                'vaccinated' => 'required|string|in:yes,no',
                'vaccinated_date' => 'nullable|string',
                'feeding_time' => 'nullable|date_format:H:i',
                'gender' => 'required|string|in:male,female',
                'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
                'doctor_name' => 'nullable|string',
                'prescription' => 'nullable|string',
            ]);

            // Find the livestock by ID or throw a 404 error
            $livestock = Livestock::findOrFail($id);

            // Update the livestock details
            $livestock->name = $request->name;
            $livestock->birthdate = $request->birthdate;
            $livestock->color = $request->color;
            $livestock->vaccinated = $request->vaccinated;
            $livestock->vaccinated_date = $request->vaccinated_date;
            $livestock->feeding_time = $request->feeding_time;
            $livestock->gender = $request->gender;
            $livestock->doctor_name = $request->doctor_name;
            $livestock->prescription = $request->prescription;

            // Handle the image upload
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $imageName = time() . '.' . $image->getClientOriginalExtension();

                // Save the image in the 'public/images' folder
                $imagePath = 'images/' . $imageName;
                $image->move(public_path('images'), $imageName);

                // Update the image path in the database
                $livestock->image = $imagePath;
            }

            // Save the updated livestock record
            $livestock->save();

            // Return a success response with the updated data, including the image URL
            return response()->json([
                'success' => true,
                'message' => 'Livestock updated successfully',
                'data' => [
                    'livestock' => $livestock,
                    'image_url' => asset($livestock->image),
                ]
            ]);

        } catch (\Illuminate\Validation\ValidationException $e) {
            // Validation error response
            return response()->json([
                'error' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            // Livestock not found error response
            return response()->json(['error' => 'Livestock not found'], 404);
        } catch (\Exception $e) {
            // Generic error response
            return response()->json(['error' => 'An unexpected error occurred', 'message' => $e->getMessage()], 500);
        }
    }




    public function getDoctorInfo($id)
    {
        try {
            $animal = Livestock::findOrFail($id);
            return response()->json(['message' => 'Fetched successfully', 'data' => $animal]);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json(['error' => 'Livestock not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred'], 500);
        }
    }

    public function save_doctor_info(Request $request, $id)
{
    try {
        // Fetch the livestock record based on the ID
        $livestock = Livestock::findOrFail($id);

        // Validate the incoming request data
        $validatedData = $request->validate([
            'doctor_name' => 'nullable|string|max:255',
            'prescription' => 'nullable|string',
            'report_date' => 'nullable|date', // Add validation for report date
        ]);

        // Update the livestock record with new data if provided
        if ($request->has('doctor_name')) {
            $livestock->doctor_name = $validatedData['doctor_name'];
        }

        if ($request->has('prescription')) {
            $livestock->prescription = $validatedData['prescription'];
        }

        if ($request->has('report_date')) {
            $livestock->report_date = $validatedData['report_date']; // Assuming you have this field in your model
        }

        // Save changes to the database
        $livestock->save();

        // Return the updated data as JSON
        return response()->json([
            'doctor_name' => $livestock->doctor_name,
            'prescription' => $livestock->prescription,
            'report_date' => $livestock->report_date, // Include report date in response
        ]);
    } catch (\Illuminate\Validation\ValidationException $e) {
        return response()->json([
            'error' => 'Validation failed',
            'errors' => $e->errors(),
        ], 422);
    } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
        return response()->json(['error' => 'Livestock not found'], 404);
    } catch (\Exception $e) {
        return response()->json(['error' => 'An unexpected error occurred'], 500);
    }
}


    public function showReport($id)
    {
        try {
            // Find the report by ID
            $report = Livestock::findOrFail($id);

            if ($report->prescription) {
                return response()->json([
                    'doctor_name'=>$report->doctor_name,
                    'prescription' => $report->prescription,
                    'report_date'=>$report->report_date,
                    'message' => 'Doctor report fetched successfully'
                ]);
            } else {
                return response()->json([
                    'message' => 'Prescription is not available for this report.'
                ]);
            }
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return response()->json(['error' => 'Report not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred'], 500);
        }
    }

    public function destroy($id)
    {
        $animal = Livestock::find($id); // Replace with your model name
    
        if ($animal) {
            $animal->delete();
            return response()->json(['success' => true]);
        }
    
        return response()->json(['success' => false, 'message' => 'Animal not found.'], 404);
    }
    

}
