

<div class="formgetstarted customform shadow-sm p-4 mb-5 bg-body rounded">

<div class="row">
    <div class="col">
        <div class="px-1 mb-1 text-center">
           <div class="entrepreneur-frame"></div>
            <div class="col-lg-12 mx-auto pt-3">
                <p class="lead mb-4">
                {{ __('To start your business, the following elements are required') }}
                </p>
            </div>
        </div>
    </div>
</div>

<div class="card my-4">
  <div class="card-header">
    1. {{ __('Establish a company') }}
  </div>
  <div class="card-body">
    {{ __('To set up your company go to the following link') }}: <a href="https://www.registrodeempresasysociedades.cl/" target="_blank"> https://www.registrodeempresasysociedades.cl/</a>
  </div>
</div>



<div class="card my-4">
  <div class="card-header">
   2. {{ __('Formalize Before the SII') }}
  </div>
  <div class="card-body">
  {{ __('Create your user account on the SII portal and enter the requested information') }}. <a href="https://homer.sii.cl/" target="_blank"> https://homer.sii.cl/ </a>
  </div>
</div>



<div class="card my-4">
  <div class="card-header">
   3. {{ __('Present the information of the municipality') }}
  </div>
  <div class="card-body">
  {{ __('You must go to the municipality of your commune and present the following documents')}}: <br/>

    <ol class="list-group-numbered pt-3">
        @foreach ($documentList as $doc)
            <li class="list-group-item">{{ $doc->document->name }}</li>
        @endforeach
    </ol>

  </div>
</div>



</div>




</div>