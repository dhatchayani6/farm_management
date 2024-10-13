<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Farmsetup;
use App\Models\Income;
use App\Models\Expense;

class FinanceController extends Controller
{

    public function show_finance()
    {
        return view('admin.finance');
    }


    // FinanceController.php
    public function getfarmitems()
    {
        $farmitems = Farmsetup::all();
        return response()->json($farmitems);
    }

    public function getFinance()
    {
        $farmItems = Farmsetup::select('id', 'name_of_product')->get();

        // Return the items as a JSON response
        return response()->json(['farmItems' => $farmItems]);
    }

    public function addIncome(Request $request)
    {
        try {
            $validated = $request->validate([
                'source_of_income' => 'required|string',
                'farm_income_belong' => 'required|string',
                'income_amount' => 'required|numeric',
                'income_date' => 'required|date',
            ]);

            $income = new Income();
            $income->source_of_income = $request->input('source_of_income');
            $income->farm_income_belong = $request->input('farm_income_belong');
            $income->income_amount = $request->input('income_amount');
            $income->income_date = $request->input('income_date');
            $income->save();

            return response()->json([
                'success' => true,
                'message' => 'Income added successfully',
                'data' => [
                    'income' => $income
                ]
            ]);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'An unexpected error occurred while adding income',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function addExpense(Request $request)
    {
        try {
            $validated = $request->validate([
                'type_expenses' => 'required|string',
                'farm_expense_belongs' => 'required|string',
                'expense_amount_spend' => 'required|numeric',
                'expense_date' => 'required|date',
            ]);

            $expense = new Expense();
            $expense->type_expenses = $request->input('type_expenses');
            $expense->farm_expense_belongs = $request->input('farm_expense_belongs');
            $expense->expense_amount_spend = $request->input('expense_amount_spend');
            $expense->expense_date = $request->input('expense_date');
            $expense->save();

            return response()->json([
                'success' => true,
                'message' => 'Expense added successfully',
                'data' => [
                    'expense' => $expense
                ]
            ]);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'An unexpected error occurred while adding expense',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function addSetup(Request $request)
    {
        try {
            $validated = $request->validate([
                'product_name' => 'required|string',
                'quantity'=>'required|integer'
            ]);

            $farmItem = new Farmsetup();
            $farmItem->name_of_product = $request->input('product_name');
            $farmItem->quantity = $request->input('quantity'); 
            $farmItem->save();

            return response()->json([
                'success' => true,
                'message' => 'Product added successfully',
                'data' => [
                    'product' => $farmItem
                ]
            ]);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'An unexpected error occurred while adding product',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function getAnalytics(Request $request)
{
    try {
        // Get the date from request or default to today's date
        $date = $request->input('date', date('Y-m-d'));

        // Fetch today's income using Eloquent
        $todayIncome = Income::whereDate('income_date', $date)
            ->sum('income_amount');

        // Fetch today's expenses using Eloquent
        $todayExpenses = Expense::whereDate('expense_date', $date)
            ->sum('expense_amount_spend');

        // Calculate net amount
        $netAmount = $todayIncome - $todayExpenses;

        // Return JSON response with success message
        return response()->json([
            'status' => 'success',
            'message' => 'Analytics data retrieved successfully',
            'totalIncome' => $todayIncome,
            'totalExpenses' => $todayExpenses,
            'netAmount' => $netAmount,
        ]);
    } catch (\Exception $e) {
        // Handle any exceptions
        return response()->json([
            'status' => 'error',
            'message' => 'An error occurred while fetching analytics',
            'errorDetails' => $e->getMessage()
        ], 500);
    }
}

public function fetchFinancialHistory()
{
    $income = Income::all(); // Fetch all income records
    $expenses = Expense::all(); // Fetch all expense records

    $history = [];
    
    foreach ($income as $item) {
        $history[] = [
            'income_date' => $item->income_date,
            'type' => 'Income',
            'income_amount' => $item->income_amount,
            // 'description' => $item->description,
        ];
    }

    foreach ($expenses as $item) {
        $history[] = [
            'expense_date' => $item->expense_date,
            'type' => 'Expense',
            'expense_amount_spend' => $item->expense_amount_spend,
        ];
    }

    return response()->json(['success' => true, 'data' => $history]);
}



}
