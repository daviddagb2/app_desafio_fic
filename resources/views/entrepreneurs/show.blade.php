@extends('layouts.master')

@section('title', 'GetStarted')
 
@section('content')

@component('components.titlefic')
        @slot('title')
        <div class="container">
          <div class="row">
          
            <div class="col-md-10 mb-2">
            {{ $entrepreneur->name }} - {{ __('Welcome to your Entrepreneur profile') }}
            </div>

            <div class="col-md-2">
              <div class="d-grid gap-2">
                <a href="{{ url('entrepreneuredit' , [ 'id' => $entrepreneur->id ]) }}" class="btn btn-primary btn-xs roundedbutton">{{ __('Edit Entrepreneurship') }}</a>
              </div>
            </div>

          </div>
        </div>
        @endslot
    @endcomponent


<div class="getstarted_section">


<div class="container">
        
        <div class="row">
            <div class="col">
            @include('home.requirements')
            </div>
        </div>
    </div>
</div>

@endsection
