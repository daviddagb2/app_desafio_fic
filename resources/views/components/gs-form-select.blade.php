@props(['message' => '', 'name' => 'name', 'label' => '', 'options', 'selected' ])

<div class="mb-3">
    <label for="{{ $name }}" class="form-label">{{ $label }}</label>
    <select class="form-select" aria-label="Default select example">
            <option selected>Selecciona un elemento</option>
            @foreach($options as $el => $val)
                <option value="{{ $el }}">{{ $val }}</option>
            @endforeach 
    </select>
</div>