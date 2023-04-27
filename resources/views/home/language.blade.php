<form class="d-flex justify-content-end">
    <div class="custom-select custom-select-lg mb-3">
        <select id="slct" v-model="languageSelected" onchange="changeLanguage(this.value);" class="form-select form-select-lg" selected="es">
            <option value="es" @if(App::getLocale() == 'es') selected="selected" @endif>
               {{  __('Spanish') }}
            </option>
            <option value="en" @if(App::getLocale() == 'en') selected="selected" @endif>
                {{  __('English') }}
            </option>
        </select>
    </div>
</form>
