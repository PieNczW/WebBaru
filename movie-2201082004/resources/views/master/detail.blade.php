@extends('layout.template')

@section('titleNav', $movie['judul'])

@section('title',  $movie['judul'])

@section('main-body')
<div class="container">
    <div class="card m-3" style="max-width: 100%;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="/images/{{$movie['foto_sampul']}}" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h1 class="card-title mb-4">{{$movie['judul']}}</h1>
                    <p class="card-text">{{$movie['sinopsis']}}</p>
                    <p class="card-text">Tahun : {{$movie['tahun']}}</p>
                    <p class="card-text">Pemain : {{implode(', ',$movie['pemain'])}}</p>
                    <a href="/" class="btn btn-success">kembali</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
