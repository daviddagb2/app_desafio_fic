@extends('layouts.master')

@section('title', 'GetStarted')
 
@section('content')


@component('components.titlefic')
    @slot('title')
        {{ __('Get started') }}
    @endslot
@endcomponent

<div class="getstarted_section">

    <div class="formgetstarted customform shadow-sm p-4 mb-5 bg-body rounded">
        <form method="POST" action="/entrepreneur">
            @csrf
            <x-gs-form-input :type="'text'" 
                        :message="__('Enter the name of your business')"  
                        :name="'name'"
                        :label="__('Entrepreneurship')"
                        :error="$errors->first('name')" 
                        :value="old('name')" />

            <x-gs-form-input :type="'text'" 
                        :message="__('Enter you phone')" 
                        :name="'phone'"
                        :label="__('Phone')"
                        :error="$errors->first('phone')"
                        :value="old('phone')" />

            <x-gs-form-input :type="'text'" 
                        :message="__('Enter you address')" 
                        :name="'address'"
                        :label="__('Address')"
                        :error="$errors->first('address')"
                        :value="old('address')" />

            <div class="mb-3">
                {{ old('industry_sector_id') }}
                <label for="selectIndustrySector" class="form-label">{{ __('What is the business sector?') }}</label>
                <select class="form-select {{ empty($errors->first('industry_sector_id')) ? '' : ' is-invalid' }}" id="selectIndustrySector" name="industry_sector_id">
                    <option selected disabled>{{ __('Select an Industry sector') }}</option>
                    @foreach ($industries as $com)
                        <option value="{{ $com->id }}"
                            @if(old('industry_sector_id') == $com->id)
                                selected
                            @endif 
                            >{{$com->name}}</option>
                    @endforeach
                </select>
                @if($errors->first('industry_sector_id') !== null)
                    <div id="validation_selectIndustrySector_Feedback" class="invalid-feedback">
                        {{ $errors->first('industry_sector_id') }}
                    </div>
                @endif
            </div>

            <div class="mb-3">
                <label for="selectComuna" class="form-label">{{ __('What is the commune in which it is located?') }}</label>
                <select class="form-select  {{ empty($errors->first('commune_id')) ? '' : ' is-invalid' }}" id="selectComuna" name="commune_id">
                    <option selected disabled>{{ __('Select a commune') }}</option>
                    @foreach ($communes as $com)
                        <option value="{{ $com->id }}" 
                            @if(old('commune_id') == $com->id)
                                selected
                            @endif 
                            >{{$com->name}}</option>
                        
                        >{{$com->name}}</option>
                    @endforeach
                </select>
                @if($errors->first('commune_id') !== null)
                    <div id="validation_selectComuna_Feedback" class="invalid-feedback">
                        {{ $errors->first('commune_id') }}
                    </div>
                @endif
            </div>        

            <div class="d-grid gap-2">
            <button type="submit" class="btn btn-outline-primary btn-lg">
                {{ __('Submit') }}
            </button>
            </div>
            
        </form>

    </div>

</div>


@endsection
