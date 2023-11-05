@extends('layout.template')


@section('title', 'Daftar Movie')

@section('main-body')
<div class="container mt-5 mb-3">
    <div class="row row-cols-1 row-cols-md-2 g-4">
        <?php foreach ($movieData as $key => $value) : ?>
            <div class="card m-2 p-3" style="max-width: 48%;">
                <div class="row g-0">
                    <div class="col-4">
                        <img src="/images/{{$value['foto_sampul']}}" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h3 class="card-title">{{$value['judul']}}</h3>
                            <p class="card-text">{{$value['sinopsis']}}</p>
                            <a href="/detail/{{$value['id']}}" class="btn btn-success">Lihat Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
    </div>
</div>
@endsection

