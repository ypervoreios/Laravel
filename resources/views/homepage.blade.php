<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laravel assesment</title>
    @vite('resources/css/app.css')
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
</head>
<html>

<body class="bg-light text-dark font-sans text-center px-8 py-12 min-vh-100 d-flex flex-column">

    <header class="bg-white" >
    <nav>
      
    </nav>
    </header>
    <div class="flex-grow-1 justify-content-center align-items-center full-height">
        <main class="container">

            <h1 class="h1 display-5 fw-bold text-danger">Welcome to my Laravel assesment</h1>
            <p class="my-2">You have to be Logged in to continue...</p>
            <a href="/users" class="btn btn-primary">Login</a>

        </main>
    </div>
</body>
<footer class="bg-secondary text-white py-3 mt-5 shadow-sm">
    <div class="container text-center">
        <small>
            Developed by <strong>Akis Chorinos</strong> &mdash; PHP Developer Assessment &copy; {{ date('Y') }}
        </small>
    </div>
</footer>
</html>
