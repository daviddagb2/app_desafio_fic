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
          
            <div class="col-md-9">
            {{ __('List of entrepreneurships') }}
            </div>

            <div class="col-md-3">
              <div class="d-grid gap-2">
                <a href="{{ URL::route('entrepreneur'); }}" class="btn btn-primary btn-xs">{{ __('Create Entrepreneurship') }}</a>
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
              
              <img src="{{ url('/img/bakery.jpeg') }}" class="card-img-top" alt="{{ $item->name }}">   
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
