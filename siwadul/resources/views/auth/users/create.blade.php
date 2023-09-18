@extends('layouts.auth')
<!-- Main Content -->
@section('content')
  <div class="main-content">
    <section class="section">
      <div class="section-header">
        <h1>User Management</h1>
      </div>

      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4>Buat User Baru</h4>
            </div>
            <div class="card-body p-4">
              <form method="POST" action="/users">
                @csrf
                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="username">User Name</label>
                    <input id="username" type="text" placeholder="Input Username berisi huruf dan angka" class="form-control @error('username') is-invalid @enderror"
                      name="username">
                    @error('username')
                      <div class="invalid-feedback">
                        {{ $message }}
                      </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-6">
                    <label for="name">Fullname</label>
                    <input id="name" type="text" placeholder="Input Nama Lengkap" class="form-control @error('name') is-invalid @enderror" name="name"
                      autofocus>
                    @error('name')
                      <div class="invalid-feedback">
                        {{ $message }}
                      </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-6">
                    <label for="nik">NIK</label>
                    <input id="nik" type="text" placeholder="Input nik" class="form-control @error('nik') is-invalid @enderror" name="nik"
                      autofocus>
                    @error('nik')
                      <div class="invalid-feedback">
                        {{ $message }}
                      </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-6">
                    <label for="nohp">No HP</label>
                    <input id="nohp" type="text" class="form-control @error('nohp') is-invalid @enderror"
                      name="nohp">
                    @error('nohp')
                      <div class="invalid-feedback">
                        {{ $message }}
                      </div>
                    @enderror
                  </div>
                </div>

                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email">
                    @error('email')
                      <div class="invalid-feedback">
                        {{ $message }}
                      </div>
                    @enderror
                  </div>
                  <div class="form-group col-md-6">
                    <label for="password">Password</label>
                    <input id="password" type="password" placeholder="Input Password Berisi huruf dan angka minimal 6 maksimal 20 huruf" class="form-control @error('password') is-invalid @enderror"
                      name="password">
                    @error('password')
                      <div class="invalid-feedback">
                        {{ $message }}
                      </div>
                    @enderror
                    <div class="form-check form-check-inline my-2">
                      <input type="checkbox" class="form-check-input" id="togglePassword">
                      <label for="togglePassword" class="form-check-label">Show Password</label>
                    </div>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="level">Level User</label>
                    <select name="level" id="level" class="form-control @error('level') is-invalid @enderror">
                      <option value="user">User</option>
                      <option value="admin">Admin</option>
                    </select>
                    @error('level')
                      <div class="invalid-feedback">
                        {{ $message }}
                      </div>
                    @enderror
                  </div>
                </div>
                <hr>
                <div class="form-group">
                  <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="agree" required>
                    <label class="custom-control-label" for="agree">I agree with the terms and conditions</label>
                  </div>
                </div>

                <div class="form-group text-center">
                  <button type="submit" class="btn btn-primary btn-lg rounded-pill" style="width: 200px;">
                    Register
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection

@section('scripts')
  <script>
    document.addEventListener('trix-file-accept', function(e) {
      e.preventDefault();
    })

    function previewImage() {
      const image = document.querySelector('#gambar');
      const imgPreview = document.querySelector('.img-preview');

      imgPreview.style.display = 'block';

      const oFReader = new FileReader();
      oFReader.readAsDataURL(image.files[0]);
      oFReader.onload = function(e) {
        imgPreview.src = e.target.result;
      }
    }
  </script>
@endsection
