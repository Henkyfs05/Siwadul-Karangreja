@extends('layouts.guest')
<!-- ======= Hero Section ======= -->
<br><br><br><br><br><br>
<main id="hero">
  <div class="container col-xxl-8 px-4 py-5">
    <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
      <div class="col-10 col-sm-8 col-lg-6 mx-auto">
        {{-- <img src="{{ asset('assets/template/img/AppLandingPage.png') }}" class="d-block mx-lg-auto img-fluid"
          alt="Landing Page Image"> --}}
          <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="{{ asset('assets/images/Kantordesa.jpg') }}" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Kantor Desa Karangreja</h5>
                  <p>Beralamat di Karangtengah Kidul, Karangreja, Kec. Cimanggu, Kabupaten Cilacap, Jawa Tengah 53256</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="{{ asset('assets/images/bentukdesa.png') }}" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5 class="text-black">Bentuk peta daerah di Desa Karangreja</h5>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
      </div>
      <div class="col-lg-6">
        <h1 class="display-6 fw-bold lh-1 mb-3">{{ env('APP_NAME') }}</h1>
        <p class="lead text-muted">Ajukan dan lacak status pengaduan barang dengan mudah dan cepat.
        </p>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <a href="/auth/login" class="btn btn-sm btn-primary btn-lg px-3 py-3 me-md-2 rounded-pill fw-bold shadow"><i
              class="fas fa-magnifying-glass me-2"></i>
            Cek Status Pengaduan</a>
        </div>
      </div>
    </div>
  </div>
</main>
