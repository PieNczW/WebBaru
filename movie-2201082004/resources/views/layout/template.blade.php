<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
    <title>@yield('title', 'Movie')</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-success" data-bs-theme="dark">
        <div class="container">
          <a class="navbar-brand" href="#">tiMovie @yield('titleNav')</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="\">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Watchlist</a>
              </li>
            </ul>
            <form class="d-flex">
              <input class="form-control me-2 bg-dark" type="search" placeholder="Search" aria-label="Search">
            </form>
          </div>
        </div>
    </nav>

    <!-- body -->
    @yield('main-body')

    <footer class="bg-success p-3">
        <div class="position-relative py-3">
            <div class="position-absolute top-50 start-50 translate-middle text-light">
                Copyright &copy;{{date('Y')}} by farrell aydin mhasood | 2201082004
            </div>
        </div>
    </footer>
    <script src="/js/bootstrap.min.js"></script>
</body>
</html>
