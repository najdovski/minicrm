@extends('layouts.app')
@section('content')

<div class="row justify-content-center">
    <div class="col-8">
        <h5 class="text-uppercase font-weight-bold text-center mb-3 red">Add New Employee</h5>
        <hr>
        @foreach ($errors->all() as $error)
                <div class="alert alert-danger">{{$error}}</div>
        @endforeach
        <form action="{{ route('employee.store') }}" method="POST">
        @csrf
        <input type="text" class="form-control" placeholder="First Name" name="first_name" value="{{ old('first_name') }}" required>
            <input type="text" class="form-control my-2" placeholder="Last Name" name="last_name" value="{{ old('last_name') }}" required>
                <select id="select-state" class="js-example-basic-single form-control" placeholder="Select a company..." name="company">
                    <option value="">Select a company...</option>
                    @foreach ($companies as $company)
                        <option value="{{ $company->id }}">{{ $company->name }}</option>
                    @endforeach
                </select>
            <input type="email" class="form-control mt-2" placeholder="Email" name="email" value="{{ old('email') }}">       
            <input type="text" class="form-control mt-2" placeholder="Phone" name="phone" value="{{ old('phone') }}">       
            <input type="submit" class="btn btn-block btn-success mt-2" value="Save">
        </form>
    </div>
</div>

{{-- Selection with a search box (Select2 JS library) --}}
<script>
    $('.js-example-basic-single').select2();
</script>

@endsection