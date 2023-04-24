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
    <h2 class="display-5 fw-bold titleconfig">{{ __('We have detected that you have not yet configured your entrepreneur profile')}}</h2>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">
        {{  __('You haven't set up your entrepreneur profile yet! Complete your information to have access to all the tools and resources we offer.') }}
      </p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <a href="{{ URL::route('getstarted'); }}" class="btn btn-primary btn-lg px-4 gap-3">{{ __('Complete profile') }}</a>
      </div>
    </div>
</div>

@else

<div class="px-4 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="{{ url('/img/entrepreneur.png') }}" alt="" width="150" height="150">
    <h2 class="display-5 fw-bold titleconfig">{{ __('Hi')}} {{ $profile->name }}</h2>
    <h2 class="display-5 fw-bold titleconfig">{{ __('Welcome to your Entrepreneur profile') }}</h2>
    <div class="col-lg-6 mx-auto">
        <p class="lead mb-4">
        {{ __('To start your business, the following elements are required') }}
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
                  <div class="step-title">{{ __('Establish a company') }}</div>
                  <div class="step-description">
                  {{ __('To set up your company go to the following link') }}: <a href="https://www.registrodeempresasysociedades.cl/" target="_blank"> https://www.registrodeempresasysociedades.cl/</a>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="step">
                  <div class="step-number">2</div>
                  <div class="step-title">{{ __('Formalize Before the SII') }}</div>
                  <div class="step-description">
                  {{ __('Create your user account on the SII portal and enter the requested information') }}. <a href="https://homer.sii.cl/" target="_blank"> https://homer.sii.cl/ </a>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="step">
                  <div class="step-number">3</div>
                  <div class="step-title">{{ __('Present the information of the municipality') }}</div>
                  <div class="step-description">{{ __('You must go to the municipality of your commune and present the requested documentation.')}}</div>
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
