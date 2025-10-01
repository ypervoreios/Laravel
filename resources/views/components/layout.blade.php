<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laravel assesment</title>
    {{-- <link rel="stylesheet" href="{{ asset('css/custom.css') }}"> --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<html>

<body class="bg-light text-dark font-sans min-vh-100 d-flex flex-column" style="font-family: 'Open Sans', sans-serif;">

    <header class="bg-white p-4 mb-4 shadow-sm">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid justify-content-md-evenly">
                <a class="btn btn-outline-success me-2" href="/">PHP Developer</a>
                <a class="btn btn-sm btn-outline-secondary" href="{{ Route('users.index') }}">Όλοι οι χρήστες</a>
                <a class="btn btn-sm btn-outline-secondary" href="{{ Route('users.create') }}">Δημιουργία χρήστη</a>
            </div>
        </nav>
    </header>
    <div class="d-flex justify-content-center align-items-center full-heigh flex-grow-1">
        <main class="container">
                {{ $slot }}
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous">
    </script>
</body>
<footer class="bg-secondary text-white py-3 mt-5 shadow-sm">
    <div class="container text-center">
        <small>
            Developed by <strong>Akis Chorinos</strong> &mdash; PHP Developer Assessment &copy; {{ date('Y') }}
        </small>
    </div>
</footer>

</html>
