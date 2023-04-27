@extends('layouts.master')

@section('title', 'GetStarted')
 
@section('content')

@component('components.titlefic')
        @slot('title')
        <div class="container">
          <div class="row">
          
            <div class="col-md-9">
            {{ $entrepreneur->name }} - {{ __('Edit') }}
            </div>

           

          </div>
        </div>
        @endslot
    @endcomponent


<div class="getstarted_section">


<div class="container">
        
        <div class="row">
            <div class="col">
            @include('home.edit_form')
            </div>
        </div>
    </div>
</div>

@endsection
