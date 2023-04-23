@props(['type' => 'text', 'message' => '.', 'name' => 'name', 'label' => '', 'error', 'value' ])

<div class="mb-3">
    <label for="{{ $name }}" class="form-label">{{ $label }}</label>
    <input type="{{$type}}" class="form-control {{ empty($error) ? '' : ' is-invalid' }}" id="{{ $name }}" name="{{ $name }}" aria-describedby="{{ $name . '_help' }}" value="{{ $value }}">
    <div id="{{ $name . '_help' }}" class="form-text" >{{ $message }}</div>
    
    @if(isset($error))
        <div id="validation_{{ $name }}_Feedback" class="invalid-feedback">
            {{ $error }}
        </div>
    @endif
</div>