@extends('layouts.master')

@section('title', 'Home')
 
@section('content')
    
<div class="home_section">


@component('components.titlefic')
    @slot('title')
        {{ __('Dashboard') }}
    @endslot
@endcomponent


@if($profile == null)
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


@else



<div class="px-4 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="{{ url('/img/entrepreneur.png') }}" alt="" width="150" height="150">
    <h2 class="display-5 fw-bold titleconfig">Hola {{ $profile->name }}</h2>
    <h2 class="display-5 fw-bold titleconfig">Bienvenido a tu perfil Emprendedor</h2>
    <div class="col-lg-6 mx-auto">
        <p class="lead mb-4">
        Para poner en marcha tu negocio se requieren los siguients elementos:
        </p>
      </div>
  </div>

  <div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-8">
        <div class="card border-0 shadow">
          <div class="card-body p-5">
            <div class="row mb-5">
              <div class="col-md-4">
                <div class="step">
                  <div class="step-number">1</div>
                  <div class="step-title">Constituir una empresa</div>
                  <div class="step-description">
                  
                  Para constituir tu empresa entra al siguiente enlace: <a href="https://www.registrodeempresasysociedades.cl/" target="_blank"> https://www.registrodeempresasysociedades.cl/</a>

                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="step">
                  <div class="step-number">2</div>
                  <div class="step-title">Formalizar Ante el SII</div>
                  <div class="step-description">
                  Crea tu cuenta de usuario en el portal del SII e ingresa la información solicitada. <a href="https://homer.sii.cl/" target="_blank"> https://homer.sii.cl/ </a>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="step">
                  <div class="step-number">3</div>
                  <div class="step-title">Presentar la información del municipio</div>
                  <div class="step-description">Debes dirigirte al municipio de tu comuna y presenta la documentación solicitada.</div>
                </div>
              </div>
            </div>
            <div class="text-center">
              

            <h3>Para el rubro {{ $profile->industrySector->name }} en la comuna {{ $profile->commune->name }} se requieren los siguientes documentos:</h3>
            <ul class="list-group">

              @foreach ($documentList as $doc)
                <li class="list-group-item">{{ $doc->document->name }}</li>
              @endforeach
            </ul>

            </div>

            
          </div>
        </div>
      </div>
    </div>
  </div>

</div>


@endif

@endsection
