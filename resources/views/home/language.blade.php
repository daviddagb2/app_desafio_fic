<form class="form-inline my-2 my-lg-0">
    <div class="custom-select custom-select-lg mb-3">
    <span style="color: white;">@lang("Language"):</span>

        <label class="custom-select custom-select-lg mb-3" for="slct"></label>
        <select id="slct" v-model="languageSelected" onchange="changeLanguage(this.value);" selected="es">
            <option value="es" @if(App::getLocale() == 'es') selected="selected" @endif>
                @lang("Spanish")
            </option>
            <option value="en" @if(App::getLocale() == 'en') selected="selected" @endif>
                @lang("English")
            </option>
        </select>
    </div>
</form>
