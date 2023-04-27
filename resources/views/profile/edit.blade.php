

@extends('layouts.master')

@section('title', 'GetStarted')
 
@section('content')


@component('components.titlefic')
    @slot('title')
        {{ __('Profile') }}
    @endslot
@endcomponent


<div class="py-12">
        <div class="container">

            <div class="row">
                <div class="col">
                    @include('profile.components.update-profile-information-form')
                </div>
                
                <div class="col">
                    @include('profile.components.update-password-form')
                </div>

            </div>

            <div class="row">
                <div class="col">
                    @include('profile.components.delete-user-form')
                </div>
            </div>

        </div>
    </div>


@endsection
