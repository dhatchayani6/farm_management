<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Market Prices</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        html,
        body {
            font-family: 'Arial', sans-serif;
        }

        body {
            color: #fff;
            background-image: url('images/market-price.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            overflow: hidden;
        }

        header {
            background-color:#92E341;
            color: white;
            padding: 1.5rem;
            text-align: center;
            border-bottom: 4px solid #0056b3;
        }

        main {
            padding: 2rem 1rem;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
        }

        th,
        td {
            padding: 0.75rem;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: rgba(255, 255, 255, 0.8);
            color: #000;
        }

        footer {
            background-color:#92E341 ;
            color: white;
            text-align: center;
            padding: 1rem;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1);
        }

        nav {
            background-color: rgba(146, 227, 65, 0.8);
            backdrop-filter: blur(10px);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        li {
            list-style-type: none;
        }

        .btn {
            border: 1px solid white;
            transition: background-color 0.3s, color 0.3s;
        }

        .btn:hover {
            background-color: #ffff;
            color: black;
        }

        .navbar-light .navbar-nav .nav-link {
            color: black;
        }

        .navbar-light .navbar-nav .nav-link:hover {
            color: black;
        }

        td {
            color: #fff;
        }

        /* Custom styles for the select element */
        #city-select {
            border-radius: 0.5rem;
            padding: 0.5rem;
            background-color: rgba(255, 255, 255, 0.7);
            border: 1px solid #ddd;
        }

        .table-striped tbody tr:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .footer_copyright {
            margin: 0;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">FARMING MANAGEMENT APP</a>
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

    <main class="container">
        <div class="row">
            <div class="col-12 col-md-6">
                <h2 class="text-center">Select City</h2>
                <select id="city-select" class="form-control">
                    <option value="">Select City</option>
                    <option value="chennai">Chennai</option>
                    <option value="mumbai">Mumbai</option>
                    <option value="delhi">Delhi</option>
                    <option value="bangalore">Bangalore</option>
                    <option value="kolkata">Kolkata</option>
                    <option value="hyderabad">Hyderabad</option>
                </select>
            </div>
        </div>

        <div id="tables-container" class="d-none">
            <div class="row mt-4">
                <div class="col-12">
                    <h2 class="text-center">Fruit Prices</h2>
                    <div class="table-responsive">
                        <table id="fruit-prices-table" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Fruit</th>
                                    <th>kg</th>
                                    <th>Retail Price (INR)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Fruit data will be inserted here by JavaScript -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-12">
                    <h2 class="text-center">Vegetable Prices</h2>
                    <div class="table-responsive">
                        <table id="vegetable-prices-table" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Vegetable</th>
                                    <th>kg</th>
                                    <th>Retail Price (INR)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Vegetable data will be inserted here by JavaScript -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="footer">
        <p class="footer_copyright" style="text-align:center">
            © Copyright 2024. 
        </p>
    </footer>

    <script>
       document.getElementById('city-select').addEventListener('change', function () {
    const selectedCity = this.value;
    const fruitTableBody = document.querySelector('#fruit-prices-table tbody');
    const vegetableTableBody = document.querySelector('#vegetable-prices-table tbody');
    const tablesContainer = document.getElementById('tables-container');

    if (selectedCity) {
        fetch(`/api/market-prices?city=${selectedCity}`)
        .then(response => response.json())
            .then(data => {
                fruitTableBody.innerHTML = '';
                vegetableTableBody.innerHTML = '';

                data.fruits.forEach(fruit => {
                    const row = `<tr><td>${fruit.name}</td><td>${fruit.kg}</td><td>${fruit.price}</td></tr>`;
                    fruitTableBody.insertAdjacentHTML('beforeend', row);
                });

                data.vegetables.forEach(vegetable => {
                    const row = `<tr><td>${vegetable.name}</td><td>${vegetable.kg}</td><td>${vegetable.price}</td></tr>`;
                    vegetableTableBody.insertAdjacentHTML('beforeend', row);
                });

                tablesContainer.classList.remove('d-none');
            })
            .catch(error => {
                console.error('Error fetching data:', error);
                tablesContainer.classList.add('d-none');
            });
    } else {
        tablesContainer.classList.add('d-none');
    }
});

    </script>
</body>

</html>
