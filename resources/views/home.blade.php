@extends('layouts.master')

@section('title', 'Home')
 
@section('content')
    
<div class="home_section">


@component('components.titlefic')
    @slot('title')
        {{ __('Dashboard') }}
    @endslot
@endcomponent

<div class="px-4 py-5 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="{{ url('/img/entrepreneur.png') }}" alt="" width="150" height="150">
    <h2 class="display-5 fw-bold titleconfig">Hemos detectado que aun no configuras tu perfil de emprendedor</h2>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">
        ¡Aún no has configurado tu perfil de emprendedor! Completa tu información para tener acceso a todas las herramientas y recursos que ofrecemos.
      </p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <a href="{{ URL::route('getstarted'); }}" class="btn btn-primary btn-lg px-4 gap-3">Completar perfil</a>
      </div>
    </div>
</div>






</div>


@endsection
