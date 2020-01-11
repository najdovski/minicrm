@extends('layouts.app')
@section('content')

<div class="row">
    @foreach ($companies as $company)
        <div class="col-6 col-md-12 col-xl-6">
        <div class="card mb-3 border-0 rounded shadow">
            <div class="row no-gutters">
                <div class="col-md-4 d-flex flex-wrap align-items-center">
                <a href="{{ route('company.show', $company->id) }}"> <img src="
                    @if ($company->logo)
                        {{ asset($company->logo) }}
                    @else
                        {{ asset('/logos/nologo.jpg') }}
                    @endif
                    " class="card-img" style="max-width:165px"> </a>
                </div>
                <div class="col-md-8">
                <div class="card-body">
                    <a href="{{ route('company.show', $company->id) }}" class="red"> <h5 class="card-title"> <strong>{{ $company->name }}</strong></h5> </a>
                    Website: <a href="https://{{ $company->website }}" target="_blank"> <strong>{{ $company->website }}</strong> </a>
                    <br>
                    Email: <strong>{{ $company->email }}</strong>
                    <br>
                    Employees: <strong>{{ count($company->employee) }}</strong>
                    <br>
                    <br>
                    <small class="text-muted float-right">Published {{ $company->created_at->diffForHumans() }}</small>
                </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach

</div>
<style>
    li > .page-link > .active{
        background:red;
        display:none;
    }
</style>

{{-- Pagination links --}}
<div class="row justify-content-center">
    <div class="col-1">
        {{$companies->links()}}
    </div>
</div>
@endsection