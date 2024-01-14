@extends('guest.layouts.template')

@section('content')
@include('guest.layouts.hero-section-2')
<!-- HOME -->
<section class="site-section" id="next-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 mb-4">
        <div class="block__87154">
          <blockquote>
            <p>&ldquo;Bekerja dalam bidang pertanian memberikan saya kesempatan untuk terlibat langsung dalam siklus kehidupan tanaman, dari penanaman hingga panen. Saya merasa bangga dan bersemangat melihat hasil jerih payah kami, dan ini memberikan arti yang lebih dalam dalam pekerjaan saya.&rdquo;</p>
          </blockquote>
          <div class="block__91147 d-flex align-items-center">
            <figure class="mr-4"><img src="{{ asset ('user/images/person_1.jpg')}}" alt="Image" class="img-fluid"></figure>
            <div>
              <h3>Sarah</h3>
             
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-4">
        <div class="block__87154">
          <blockquote>
            <p>&ldquo;Menjalani kehidupan sebagai nelayan membutuhkan ketekunan dan keterampilan khusus. Setiap hari di laut adalah petualangan baru, dan saya merasa terpanggil untuk menjaga keseimbangan ekosistem laut sambil mencari nafkah. Mengelilingi diri saya dengan lautan biru dan langit yang luas memberi saya rasa kedamaian dan kebebasan yang sulit dijelaskan.&rdquo;</p>
          </blockquote>
          <div class="block__91147 d-flex align-items-center">
            <figure class="mr-4"><img src="{{asset('user/images/person_3.jpg')}}" alt="Image" class="img-fluid"></figure>
            <div>
              <h3>Daniel</h3>
              
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-4">
        <div class="block__87154">
          <blockquote>
            <p>&ldquo;Pertanian bukan hanya pekerjaan bagi saya; ini adalah panggilan dan gaya hidup. Selama satu dekade, saya telah terlibat dalam berbagai aspek pertanian, mulai dari penanaman hingga panen, dari manajemen tanaman hingga pemeliharaan peralatan. Mempelajari berbagai metode pertanian dan teknologi modern telah memperkaya pengetahuan saya dan meningkatkan efisiensi operasional di lahan saya.&rdquo;</p>
          </blockquote>
          <div class="block__91147 d-flex align-items-center">
            <figure class="mr-4"><img src="{{ asset('user/images/person_4.jpg')}}" alt="Image" class="img-fluid"></figure>
            <div>
              <h3>Arief</h3>
         
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-12 mb-4">
        <div class="block__87154 bg-primary">
          <blockquote>
            <p class="text-white">&ldquo;Satu hal yang telah saya pelajari selama bertahun-tahun adalah pentingnya adaptasi terhadap perubahan iklim dan pasar. Memahami tren dan teknologi terbaru dalam pertanian menjadi kunci keberhasilan, dan saya terus berupaya untuk meningkatkan dan mengembangkan metode pertanian yang berkelanjutan.&rdquo;</p>
          </blockquote>
          <div class="block__91147 d-flex align-items-center">
            <figure class="mr-4"><img src="{{ asset ('user/images/person_4.jpg')}}" alt="Image" class="img-fluid"></figure>
            <div>
              <h3 class="text-white">Arief</h3>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>
@endsection