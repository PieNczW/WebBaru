@extends('guest.layouts.template')

@section('content')
@include('guest.layouts.hero-section-2')
<section class="site-section pb-0">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6 mb-5 mb-lg-0">
        <a data-fancybox data-ratio="2" href="https://www.youtube.com/watch?v=IxF55qB4CuQ" class="block__96788">
          <span class="play-icon"><span class="icon-play"></span></span>
          <img src="/user/images/perikanan.jpg" alt="Image" class="img-fluid img-shadow">
        </a>
      </div>
      <div class="col-lg-5 ml-auto">
        <h2 class="section-title mb-3">Perikanan</h2>
        <p class="lead">Pekerjaan sebagai nelayan membutuhkan dedikasi terhadap pekerjaan fisik yang keras, keterampilan teknis dalam penangkapan ikan, dan kesadaran terhadap keberlanjutan sumber daya laut. Nelayan yang sukses tidak hanya membawa pulang hasil tangkapan yang melimpah tetapi juga berkontribusi pada pelestarian ekosistem laut dan kesejahteraan komunitas pesisir.
        </p>
      </div>
    </div>
  </div>
</section>

<section class="site-section pt-0">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6 mb-5 mb-lg-0 order-md-2">
        <a data-fancybox data-ratio="2" href="https://www.youtube.com/watch?v=7kx7_KPFbtw" class="block__96788">
          <span class="play-icon"><span class="icon-play"></span></span>
          <img src="{{ asset ('/user/images/padi.jpg')}}" alt="Image" class="img-fluid img-shadow">
        </a>
      </div>
      <div class="col-lg-5 mr-auto order-md-1  mb-5 mb-lg-0">
        <h2 class="section-title mb-3">Pertanian</h2>
        <p class="lead">Pekerjaan sebagai petani membutuhkan dedikasi terhadap tanah, pemahaman mendalam tentang proses pertanian, dan kemampuan untuk beradaptasi dengan perubahan kondisi cuaca dan pasar. Petani yang sukses tidak hanya menghasilkan hasil panen yang berkualitas tetapi juga berperan dalam memastikan ketahanan pangan dan keberlanjutan ekosistem pertanian.</p>
      </div>
    </div>
  </div>
</section>


<section class="site-section">
  <div class="container">
    <div class="row mb-5">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">Tentang Saya</h2>
      </div>
    </div>

    <div class="row align-items-center block__69944">

    
      <div class="col-md-6 order-md-2 ml-md-auto">
        <img src="user/images/person_5.jpg" alt="Image" class="img-fluid mb-4 rounded">
      </div>

      <div class="col-md-6">
        <h3>Farrell Aydin Mhasood</h3>
        <p class="text-muted">Web Designer</p>
        <p></p>
        <div class="social mt-4">
          <a href="#"><span class="icon-facebook"></span></a>
          <a href="#"><span class="icon-twitter"></span></a>
          <a href="https://www.instagram.com/farrellaydin/"><span class="icon-instagram"></span></a>
          <a href="#"><span class="icon-linkedin"></span></a>
        </div>
      </div>
    </div>
</section>

@endsection