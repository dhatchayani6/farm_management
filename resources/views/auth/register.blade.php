<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FARM ASSIST - Register</title>
    <link rel="icon" type="image/png" href="images/farm-logo.svg">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
            background-image: url('images/image.png');
            background-repeat: no-repeat;
            background-size: cover;
        }

        .video-bg {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            z-index: -1;
            object-fit: cover;
            opacity: 0.7;
        }

        .container {
            animation: fadeIn 1s ease-in-out;
            position: relative;
            z-index: 1;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .form-icon-container {
            position: relative;
        }

        .form-icon {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #6c757d;
        }

        .logo {
            width: 150px;
            height: auto;
        }

        .form-wrapper {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 16px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            padding: 20px;
        }

        .form-control {
            padding-left: 30px !important;
        }
    </style>
</head>

<body>


    <div class="container">
        <div class="row justify-content-center py-5">
            <div class="col-sm-10 col-md-8 col-lg-5 col-xl-5 col-xxl-3 form-wrapper">
                
                <div class="text-center mb-4">
                    <h3 class="text-1000">Register</h3>
                    <p class="text-700">Create your farmer account</p>
                </div>

                <form method="POST" action="{{ route('register') }}">
                    @csrf

                    <!-- Name -->
                    <div class="mb-3 text-start">
                        <label class="form-label" for="name">Name</label>
                        <div class="form-icon-container">
                            <input class="form-control form-icon-input" id="name" type="text" name="name"
                                value="{{ old('name') }}" required autofocus autocomplete="name" placeholder="enter your name" />
                            <span class="fas fa-user text-900 fs--1 form-icon"></span>
                        </div>
                        @if ($errors->has('name'))
                            <div class="text-danger mt-1">{{ $errors->first('name') }}</div>
                        @endif
                    </div>

                    <!-- Email Address -->
                    <div class="mb-3 text-start">
                        <label class="form-label" for="email">Email address</label>
                        <div class="form-icon-container">
                            <input class="form-control form-icon-input" id="email" type="email" name="email"
                                value="{{ old('email') }}" required autofocus autocomplete="email" placeholder="enter your email" />
                            <span class="fas fa-envelope text-900 fs--1 form-icon"></span>
                        </div>
                        @if ($errors->has('email'))
                            <div class="text-danger mt-1">{{ $errors->first('email') }}</div>
                        @endif
                    </div>

                    <!-- Password -->
                    <div class="mb-3 text-start">
                        <label class="form-label" for="password">Password</label>
                        <div class="form-icon-container">
                            <input class="form-control form-icon-input" id="password" type="password" name="password"
                                required autocomplete="new-password" placeholder="enter your password" />
                            <span class="fas fa-key text-900 fs--1 form-icon"></span>
                        </div>
                        @if ($errors->has('password'))
                            <div class="text-danger mt-1">{{ $errors->first('password') }}</div>
                        @endif
                    </div>

                    <!-- Confirm Password -->
                    <div class="mb-3 text-start">
                        <label class="form-label" for="password_confirmation">Confirm Password</label>
                        <div class="form-icon-container">
                            <input class="form-control form-icon-input" id="password_confirmation" type="password"
                                name="password_confirmation" required autocomplete="new-password" placeholder="confirm-password"/>
                            <span class="fas fa-key text-900 fs--1 form-icon"></span>
                        </div>
                        @if ($errors->has('password_confirmation'))
                            <div class="text-danger mt-1">{{ $errors->first('password_confirmation') }}</div>
                        @endif
                    </div>

                    <button class="btn btn-primary w-100 mb-3" type="submit">Register</button>
                </form>

                <div class="text-center mt-3"><a class="fs--1 fw-bold" href="{{ route('login') }}">Already
                        registered?</a></div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>