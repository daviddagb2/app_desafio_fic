@extends('layouts.master')

@section('title', 'GetStarted')
 
@section('content')


@component('components.titlefic')
    @slot('title')
        {{ __('Profile') }}
    @endslot
@endcomponent


@include('profile.partials.update-profile-information-form')


@endsection
