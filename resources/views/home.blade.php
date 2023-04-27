@extends('layouts.master')

@section('title', 'Home')
 
@section('content')
    


<div class="home_section">

@if($entrepreneurs->count() <= 0)

    @include('home.empty_entrepreneur')

@else

    @component('components.titlefic')
        @slot('title')
        <div class="container">
          <div class="row">
          
            <div class="col-md-10 mb-2">
            {{ __('List of entrepreneurships') }}
            </div>

            <div class="col-md-2">
              <div class="d-grid gap-2">
                <a href="{{ URL::route('entrepreneur'); }}" class="btn btn-primary btn-xs roundedbutton">{{ __('Create Entrepreneurship') }}</a>
              </div>
            </div>

          </div>
        </div>
        @endslot
    @endcomponent


    <div class="container">

  
      <div class="row">
      @foreach ($entrepreneurs as $item)

          <div class="col-md-3 mb-5">
            <div class="card">
              
              @if($item->industrySector->name == "Pastelería")
                <img src="{{ url('/img/pastel.png') }}" class="card-img-top" alt="{{ $item->name }}">   
              @elseif($item->industrySector->name == "Minimarket")
                <img src="{{ url('/img/minimarket.png') }}" class="card-img-top" alt="{{ $item->name }}">  
              @elseif($item->industrySector->name == "Electrónica")
                <img src="{{ url('/img/electronica.png') }}" class="card-img-top" alt="{{ $item->name }}">  
              @else
              <img src="{{ url('/img/youngentrepreneur.png') }}" class="card-img-top" alt="{{ $item->name }}">  
              @endif
              
              
              
              
              <div class="card-body">
                
                <h5 class="card-title">{{ $item->name }}</h5>
                <p class="card-text">
                <span class="badge bg-primary">{{ $item->commune->name }}</span>  
                 - <span class="badge rounded-pill bg-success">{{ $item->industrySector->name }}</span></p>

                <div class="d-grid gap-2">
                  <a href="{{ url('/entrepreneur') }}/{{$item->id}}" class="btn btn-primary btn-xs">Ver documentación</a>
                </div>

              </div>
            </div>
          </div>

      @endforeach


      
      
      </div>
  </div>

@endif

</div>

@endsection
