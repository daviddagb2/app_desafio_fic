

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
                    @include('profile.partials.update-password-form')
                </div>

            </div>

            <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg mb-4">
                <div class="max-w-xl">
                   
                </div>
            </div>

            <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg mb-4">
                <div class="max-w-xl">
                    
                </div>
            </div>

            <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg mb-4">
                <div class="max-w-xl">
                    @include('profile.partials.delete-user-form')
                </div>
            </div>
        </div>
    </div>


@endsection
