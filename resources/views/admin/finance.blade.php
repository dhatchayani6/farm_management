<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finance Page</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        html,
        body {
            font-family: sans-serif;
        }

        body {
            background-color: #f0f2f5;
            color: #333;
        }

        li {
            list-style-type: none;
        }

        .form-section {
            margin-bottom: 30px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            display: none;
        }

        .form-section.active {
            display: block;
        }

        .form-section h3 {
            font-size: 1.75rem;
            margin-bottom: 20px;
            color: #007bff;
        }

        .btn-group .btn {
            margin-right: 5px;
        }

        .btn-group .btn:last-child {
            margin-right: 0;
        }

        .btn-success,
        .btn-primary,
        .btn-info {
            border-radius: 5px;
            padding: 10px 20px;
        }

        .form-control {
            border-radius: 5px;
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.075);
            border-color: #ced4da;
        }

        .form-group label {
            font-weight: bold;
            color: #495057;
        }

        .btn {
            border-radius: 5px;
            padding: 10px 20px;
        }

        .alert {
            margin-top: 20px;
            border-radius: 5px;
        }

        nav {
            background-color: #92E341;
        }

        @media (max-width: 768px) {
            .btn-group {
                flex-direction: column;
                align-items: stretch;
            }

            .form-section h3 {
                font-size: 1.5rem;
            }

            .btn {
                padding: 8px 15px;
                font-size: 0.9rem;
            }
        }

        footer {
            background-color: #92E341;
            color: black;
            text-align: center;
            padding: 0.5em;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 2em;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        .form-section {
            display: none;
        }

        .form-section.active {
            display: block;
        }

        .nav-item.btn {
            border: 1px solid white;
        }



        .navbar-light .navbar-nav .nav-link {
            color: black;
        }

        .navbar-light .navbar-nav .nav-link:hover {
            color: black;
        }

        .btn.nav-link {
            border: 1px solid #fff;
        }

        .btn.nav-link:hover {
            background-color: #fff;
            color: black;
        }

        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            cursor: pointer;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <!-- Left-aligned brand -->
            <a class="navbar-brand" href="#">FARMING MANAGEMENT APP</a>

            <!-- Right-aligned content (Home, Agricultural Practices, Logout) -->
            <div class="d-flex ms-auto">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/homepage') }}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('agricultural_practice') }}">Agricultural Practices</a>
                    </li>

                    @if (Auth::check())
                        <li class="nav-item">
                            <form method="post" action="{{ route('logout') }}">
                                @csrf
                                <button class="btn nav-link">LOGOUT ({{ Auth::user()->name }})</button>
                            </form>
                        </li>
                    @endif
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid mt-5">
        <!-- Button Group to Toggle Sections -->
        <div class="btn-group d-flex flex-wrap" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-success flex-fill mb-2" onclick="showSection('income')">New
                Income</button>
            <button type="button" class="btn btn-primary flex-fill mb-2" onclick="showSection('expenses')">New
                Expenses</button>
            <button type="button" class="btn btn-info flex-fill mb-2" onclick="showSection('setup')">Farm Setup</button>
            <button type="button" class="btn btn-secondary flex-fill mb-2"
                onclick="showSection('analytics')">Analytics</button>
        </div>

        <!-- New Income Section -->
        <div id="income" class="form-section active">
            <h3>INCOME</h3>
            <form id="incomeForm">
                <div class="form-group">
                    <label for="incomeSource">From Which source did you get Income</label>
                    <select class="form-control" id="incomeSource" name="source_of_income"
                        onchange="fetchFarmItems('income')">
                        <option value="">Select source</option>
                        <option value="sale">Farm Item Sale</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="incomeItem">Select the farm item to which this income belongs</label>
                    <select class="form-control" id="incomeItem" name="farm_income_belong">
                        <option value="">Select farm item</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="incomeAmount">How much did you earn</label>
                    <input type="number" class="form-control" id="incomeAmount" name="income_amount"
                        placeholder="Enter amount">
                </div>
                <div class="form-group">
                    <label for="incomeDate">Date Of Income</label>
                    <input type="date" class="form-control" id="incomeDate" name="income_date">
                </div>
                <button type="button" class="btn btn-success" onclick="submitIncome()">Add Income</button>
            </form>
        </div>

        <!-- New Expenses Section -->
        <div id="expenses" class="form-section">
            <h3>EXPENSES</h3>
            <form id="expensesForm">
                <div class="form-group">
                    <label for="expenseType">What type of expense is this</label>
                    <select class="form-control" id="expenseType" name="type_expenses"
                        onchange="fetchFarmItems('expense')">
                        <option value="">Select type</option>
                        <option value="purchase">Purchase</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="expenseItem">Select the farm item to which this expense belongs</label>
                    <select class="form-control" id="expenseItem" name="farm_expense_belongs">
                        <option value="">Select farm item</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="expenseAmount">How much did you spend</label>
                    <input type="number" class="form-control" id="expenseAmount" name="expense_amount_spend"
                        placeholder="Enter amount">
                </div>
                <div class="form-group">
                    <label for="expenseDate">Date Of Expense</label>
                    <input type="date" class="form-control" id="expenseDate" name="expense_date">
                </div>
                <button type="button" class="btn btn-primary" onclick="submitExpense()">Add Expenses</button>
            </form>
        </div>

        <!-- Farm Setup Section -->
        <div id="setup" class="form-section">
            <h3>FARM SETUP</h3>
            <form id="setupForm">
                <div class="form-group">
                    <label for="productName">Product Name</label>
                    <input type="text" class="form-control" id="productName" name="product_name"
                        placeholder="Enter product name">
                </div>
                <div class="form-group">
                    <label for="productName">Quantity</label>
                    <input type="text" class="form-control" id="quantity" name="quantity" placeholder="Enter quantity">
                </div>
                <button type="button" class="btn btn-info" onclick="submitSetup()">Add Product</button>
            </form>
        </div>
        <!-- Analytics Section -->
        <div id="analytics" class="form-section">
            <h3>ANALYTICS</h3>
            <div id="analyticsContent">
                <div class="form-group">
                    <label for="analyticsDate">Select Date</label>
                    <input type="date" class="form-control" id="analyticsDate" name="analytics_date"
                        onchange="updateAnalytics()">
                </div>
                <p>Total Income: <span id="todayIncome">Rs.0.00</span></p>
                <p>Total Expenses: <span id="todayExpenses">Rs.0.00</span></p>
                <p>Net Amount: <span id="netAmount">Rs.0.00</span></p>
            </div>
            <div class="d-flex  mt-3">
                <button type="button" class="btn btn-info" onclick="updateAnalytics()" style="margin-right:10px">Update Analytics</button>
                <button type="button" class="btn btn-info" onclick="fetchFinancialHistory()">View Financial
                    History</button>
            </div>
            <div id="financial-history" class="row mt-4">
                <!-- Financial history cards will be appended here -->
            </div>
        </div>




    </div>

    <footer>
        <p>© 2024 Farm Management App. All rights reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            // Set today's date as default for the analytics date input
            const today = new Date().toISOString().split('T')[0];
            $('#analyticsDate').val(today);

            // Fetch farm items when changing the income source or expense type
            $('#incomeSource').on('change', function () {
                fetchFarmItems('income');
            });
            $('#expenseType').on('change', function () {
                fetchFarmItems('expense');
            });

            // Update analytics on page load with today's data
            updateAnalytics();
        });

        function showSection(sectionId) {
            $('.form-section').removeClass('active');
            $('#' + sectionId).addClass('active');
        }

        function submitIncome() {
            const data = $('#incomeForm').serialize();
            $.ajax({
                type: 'POST',
                url: '/add_income',
                data: data,
                dataType: 'json',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    alert('Income added successfully!');
                    $('#incomeForm')[0].reset();
                },
                error: function (error) {
                    alert('Failed to add income. Please try again.');
                    console.log('Error adding income:', error);
                }
            });
        }

        function submitExpense() {
            const data = $('#expensesForm').serialize();
            $.ajax({
                type: 'POST',
                url: '/add_expense',
                data: data,
                dataType: 'json',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    alert('Expense added successfully!');
                    $('#expensesForm')[0].reset();
                },
                error: function (error) {
                    console.log('Error adding expense:', error);
                }
            });
        }

        function submitSetup() {
            const data = $('#setupForm').serialize();
            $.ajax({
                type: 'POST',
                url: '/add_product',
                data: data,
                dataType: 'json',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    alert('Product added successfully!');
                    $('#setupForm')[0].reset();
                },
                error: function (error) {
                    console.log('Error adding product:', error);
                }
            });
        }

        function fetchFarmItems(section) {
            const source = section === 'income' ? $('#incomeSource').val() : $('#expenseType').val();
            const targetElement = section === 'income' ? '#incomeItem' : '#expenseItem';

            if (source === 'sale' || source === 'purchase') {
                fetchFarmItemsForSaleOrPurchase(source, targetElement);
            } else {
                $(targetElement).html('<option value="">Select farm item</option>');
            }
        }

        function fetchFarmItemsForSaleOrPurchase(source, targetElement) {
            $.ajax({
                url: '/get_farm_items', // Your endpoint for fetching farm items
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    let options = '<option value="">Select farm item</option>';
                    if (Array.isArray(data)) {
                        data.forEach(item => {
                            options += `<option value="${item.id}">${item.name_of_product}</option>`;
                        });
                    } else if (data && data.items && Array.isArray(data.items)) {
                        data.items.forEach(item => {
                            options += `<option value="${item.id}">${item.name_of_product}</option>`;
                        });
                    } else {
                        console.error('Unexpected data format:', data);
                    }
                    $(targetElement).html(options);
                },
                error: function (xhr, status, error) {
                    console.error(`Failed to fetch farm items for ${source}:`, error);
                }
            });
        }

        function updateAnalytics() {
            const selectedDate = $('#analyticsDate').val();
            const dateToFetch = selectedDate || new Date().toISOString().split('T')[0];

            $.ajax({
                type: 'GET',
                url: '/get_analytics',
                data: { date: dateToFetch },
                dataType: 'json',
                success: function (response) {
                    const totalIncome = parseFloat(response.totalIncome) || 0;
                    const totalExpenses = parseFloat(response.totalExpenses) || 0;
                    const netAmount = parseFloat(response.netAmount) || 0;

                    $('#todayIncome').text('Rs.' + totalIncome.toFixed(2));
                    $('#todayExpenses').text('Rs.' + totalExpenses.toFixed(2));
                    $('#netAmount').text('Rs.' + netAmount.toFixed(2));
                },
                error: function (error) {
                    console.log('Error fetching analytics data:', error);
                }
            });
        }
        // fetcing the values of incoema adn expenses
        function fetchFinancialHistory() {
            $.ajax({
                url: '{{ url('/fetch_financial_history') }}', // Update this with your actual route
                type: 'GET',
                success: function (response) {
                    if (response.success) {
                        displayFinancialHistory(response.data); // Call a function to display the data
                    } else {
                        alert('No financial history found.');
                    }
                },
                error: function (error) {
                    console.error('Error fetching financial history:', error);
                    alert('An error occurred while fetching financial history. Please try again.');
                }
            });
        }


        function displayFinancialHistory(data) {
            var historyContainer = $('#financial-history');
            historyContainer.empty();

            data.forEach(item => {
                var cardHtml = `
                
                <div class="col-lg-4 col-md-6 mb-4">
               
                    <div class="card">
                    
                        <div class="card-header">
                            ${item.type}
                        </div>
                        <div class="card-body">
            `;

                // Check for income
                if (item.income_amount) {
                    cardHtml += `
                    <h5 class="card-title">Income Date: ${item.income_date}</h5>
                    <p class="card-text">Income Amount: ${item.income_amount}</p>
                `;
                } else {
                    cardHtml += `
                    <h5 class="card-title">Income</h5>
                    <p class="card-text">No income on this date</p>
                `;
                }

                // Check for expenses
                if (item.expense_amount_spend) {
                    cardHtml += `
                    <h5 class="card-title">Expense Date: ${item.expense_date}</h5>
                    <p class="card-text">Expense Amount: ${item.expense_amount_spend}</p>
                `;
                } else {
                    cardHtml += `
                    <h5 class="card-title">Expense</h5>
                    <p class="card-text">No expenses on this date</p>
                `;
                }

                cardHtml += `
                        </div>
                    </div>
                </div>
            `;

                historyContainer.append(cardHtml);
            });
        }
    </script>

</body>

</html>