<div class="px-4 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="{{ url('/img/man.png') }}" alt="" width="" height="350">
    <h2 class="display-5 fw-bold titleconfig">{{ __('We have detected that you have not configured any entrepreneurship')}}</h2>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">
        {{  __('Ready to take the first step on your path to success? Join our entrepreneurship line and turn your ideas into reality.') }}
      </p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <a href="{{ URL::route('entrepreneur'); }}" class="btn btn-primary btn-lg px-4 gap-3">{{ __('Create Entrepreneurship') }}</a>
      </div>
    </div>
</div>