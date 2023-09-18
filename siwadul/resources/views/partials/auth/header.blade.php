<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>{{ env('APP_NAME') }}</title>

  <link rel="stylesheet" href="{{ asset('assets/plugins/bootstrap4/css/bootstrap.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/template/css/style.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/template/css/components.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome/css/all.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/plugins/toastr/toastr.min.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/plugins/trix-editor/trix.css') }}">
  <link rel="stylesheet" href="{{ asset('assets/plugins/datatables/datatables.min.css') }}">

  <style>
    trix-toolbar [data-trix-button-group="file-tools"] {
      display: none;
    }
      /* Add your custom styles here */
      .floating-info {
        position: fixed;
        bottom: 20px;
        right: 20px;
        z-index: 1000; /* Ensure it's above other elements */
        width: 600px;
      }
  </style>
</head>
@include('partials.auth.topbar')
@include('partials.auth.sidebar')
