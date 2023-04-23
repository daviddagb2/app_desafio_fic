@extends('layouts.master')

@section('title', 'GetStarted')
 
@section('content')


@component('components.titlefic')
    @slot('title')
        {{ __('Get started') }}
    @endslot
@endcomponent

<div class="getstarted_section">

    <div class="formgetstarted">
        <form method="POST" action="/getstarted">
            @csrf
            <x-gs-form-input :type="'text'" 
                        :message="'Ingrese el nombre de su emprendimiento'" 
                        :name="'name'"
                        :label="'Emprendimiento'"
                        :error="$errors->first('name')" 
                        :value="old('name')" />

            <x-gs-form-input :type="'text'" 
                        :message="'Ingrese el teléfono'" 
                        :name="'phone'"
                        :label="'Teléfono'"
                        :error="$errors->first('phone')"
                        :value="old('phone')" />

            <x-gs-form-input :type="'text'" 
                        :message="'Ingrese la dirección'" 
                        :name="'address'"
                        :label="'Dirección'"
                        :error="$errors->first('address')"
                        :value="old('address')" />

            <div class="mb-3">
                {{ old('industry_sector_id') }}
                <label for="selectIndustrySector" class="form-label">Cuál es el rubro del emprendimiento</label>
                <select class="form-select {{ empty($errors->first('industry_sector_id')) ? '' : ' is-invalid' }}" id="selectIndustrySector" name="industry_sector_id">
                    <option selected disabled>selecciona un rubro</option>
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
                <label for="selectComuna" class="form-label">¿Cuál es la comuna en la que se emplaza?</label>
                <select class="form-select  {{ empty($errors->first('commune_id')) ? '' : ' is-invalid' }}" id="selectComuna" name="commune_id">
                    <option selected disabled>selecciona una comuna</option>
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
