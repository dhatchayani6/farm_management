<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        html,
        body {
            font-family: sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        header {
            background-color: #366639;
            color: white;
            padding: 0.5em 1em;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        main {
            padding: 2em 1em;
            max-width: 1200px;
            margin: auto;
        }

        #insurance-options {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5em;
            justify-content: center;
            align-items: center;
            position: relative;
            top: 145px;
        }

        .insurance-link {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 1.5em;
            width: calc(33.333% - 2em);
            text-align: center;
            text-decoration: none;
            color: #0288d1;
            font-weight: bold;
            box-sizing: border-box;
            transition: transform 0.3s ease, box-shadow 0.3s ease, background-color 0.3s ease;
        }

        @media (max-width: 992px) {
            .insurance-link {
                width: calc(50% - 2em);
            }
        }

        @media (max-width: 768px) {
            .insurance-link {
                width: 100%;
            }
        }

        .insurance-link:hover {
            background-color: #ffffff;
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .insurance-section {
            display: none;
            padding: 1.5em;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: white;
            margin-top: 2em;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .insurance-section.active {
            display: block;
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

        h2 {
            color: #0288d1;
        }

        p {
            line-height: 1.6;
        }

        li {
            list-style-type: none;
        }

        #insurance-options a {
            text-decoration: none;
        }

        nav {
            background-color: #92E341;
        }

        .btn {
            border: 1px solid white;
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
    <main>
        <section id="insurance-options">
            <a href="https://tnhorticulture.tn.gov.in/Pmfby" class="insurance-link" target="_self">Crop Insurance</a>
            <a href="https://www.hdfcergo.com/commercial-insurance/cattle-insurance-policy" class="insurance-link"
                target="_self">Cattle Insurance</a>
            <a href="https://agritech.tnau.ac.in/animal_husbandry/major%20acti_ah%20insurance.html"
                class="insurance-link" target="_self">Livestock Insurance</a>
            <a href="http://www.agritech.tnau.ac.in/crop_insurance/crop_wbcis.html" class="insurance-link"
                target="_self">Weather Insurance</a>
            <a href="https://nationalinsurance.nic.co.in/en/pradhan-mantri-fasal-bima-yojana-pmfby#:~:text=Same%20can%20be%20downloaded%20from,PMFBY)%20%E2%80%93%20Elaborated%20here%20under."
                class="insurance-link">Health Insurance for Farmers</a>

            <a href="https://www.aicofindia.com/AICEng/Pages/Sericulture.aspx" class="insurance-link">Sericulture
                Insurance</a>
            <a href="https://htminsurance.ca/" class="insurance-link">Farmers’ Accident Insurance Scheme</a>
            <a href="https://agriinsurance.com/Agri-Insurance-Types/agri-machinery-insurance.html"
                class="insurance-link">Farm Machinery Insurance</a>
            <a href="https://nationalinsurance.nic.co.in/en/rural-insurance/poultry-insurance-scheme"
                class="insurance-link">Poultry Insurance</a>
        </section>

        <section id="livestock-insurance" class="insurance-section">
            <h2>Livestock Insurance</h2>
            <p>Details about livestock insurance can be added here.</p>
        </section>

        <section id="property-insurance" class="insurance-section">
            <h2>Farm Property Insurance</h2>
            <p>Details about farm property insurance can be added here.</p>
        </section>

        <section id="liability-insurance" class="insurance-section">
            <h2>Farm Liability Insurance</h2>
            <p>Details about farm liability insurance can be added here.</p>
        </section>

        <section id="vehicle-insurance" class="insurance-section">
            <h2>Farm Vehicle Insurance</h2>
            <p>Details about farm vehicle insurance can be added here.</p>
        </section>
    </main>


    <footer>
        <p>© 2024 Farm Management App. All rights reserved.</p>
    </footer>
    <script>
        function showSection(sectionId) {
            const sections = document.querySelectorAll('.insurance-section');
            sections.forEach(section => {
                if (section.id === sectionId) {
                    section.classList.add('active');
                } else {
                    section.classList.remove('active');
                }
            });
        }
    </script>
</body>

</html>