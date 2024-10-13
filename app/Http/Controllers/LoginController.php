<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Auth;
use Hash;

class LoginController extends Controller
{
    // Display home page
    public function index()
    {
        return view('home.index');
    }

    // Display admin home page
    public function home()
    {
        return view('admin.adminhome');
    }

    // Fetch all users
    public function getusers()
    {
        $users = User::all();
        return response()->json($users);
    }

    // Fetch user by id
    public function userbyid($id)
    {
        $userbyid = User::find($id);

        if ($userbyid) {
            return response()->json([
                'success' => true,
                'message' => 'User retrieved successfully.',
                'data' => $userbyid
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'User not found.',
            ], 404);
        }
    }

    // Login function
    public function login(Request $request)
    {
        try {
            // Validate the request input
            $validated = $request->validate([
                'email' => 'required|string|email',
                'password' => 'required|string',
            ]);

            // Check if the user exists with the provided email
            $user = User::where('email', $request->input('email'))->first();

            // Verify user existence and password
            if ($user && Hash::check($request->input('password'), $user->password)) {
                // Log in the user
                Auth::login($user);

                return response()->json([
                    'success' => true,
                    'message' => 'Login successful',
                    'data' => $user  // Include user details
                ], 200);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Invalid credentials'
                ], 401);
            }
        } catch (\Illuminate\Validation\ValidationException $e) {
            // Handle validation errors
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            // Handle general exceptions
            return response()->json([
                'success' => false,
                'message' => 'An error occurred during login',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // Register function
    public function register(Request $request)
    {
        try {
            // Validate the request input
            $validated = $request->validate([
                'name' => 'required|string',
                'email' => 'required|string|email|unique:users,email',
                'password' => 'required|string|min:6',
            ]);

            // Create a new user instance
            $register = new User();
            $register->name = $request->input('name');
            $register->email = $request->input('email');
            $register->password = Hash::make($request->input('password'));
            $register->save();

            return response()->json([
                'success' => true,
                'message' => 'Registered successfully',
                'data' => $register  // Include user details
            ], 200);
        } catch (\Illuminate\Validation\ValidationException $e) {
            // Handle validation errors
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            // Handle any other exceptions
            return response()->json([
                'success' => false,
                'message' => 'An unexpected error occurred during registration',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
