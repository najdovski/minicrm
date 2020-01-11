@extends('layouts.app')
@section('content')
<div class="row justify-content-center">
    <div class="col-8">
        <h5 class="text-uppercase font-weight-bold text-center mb-3 red">Edit Employee "{{ $employee->first_name }} {{ $employee->last_name }}"</h5>
        <hr>
        @foreach ($errors->all() as $error)
            <div class="alert alert-danger">{{$error}}</div>
        @endforeach
        <form action="{{ route('employee.update', $employee->id) }}" method="POST">
        @csrf
        {{method_field('PUT')}}
        <input type="text" class="form-control" placeholder="First Name" name="first_name" value="{{ $employee->first_name ?? old('first_name') }}" required>
            <input type="text" class="form-control my-2" placeholder="Last Name" name="last_name" value="{{ $employee->last_name ?? old('last_name') }}" required>
                <select id="select-state" class="js-example-basic-single form-control" placeholder="Select a company..." name="company">
                    @foreach ($companies as $company)
                        <option value="{{ $company->id }}"
                            @if ($employee->company->id == $company->id) selected @endif >{{ $company->name }}</option>
                    @endforeach
                </select>
            <input type="email" class="form-control mt-2" placeholder="Email" name="email" value="{{ $employee->email ?? old('email') }}">       
            <input type="text" class="form-control mt-2" placeholder="Phone" name="phone" value="{{ $employee->phone ?? old('phone') }}">       
            <input type="submit" class="btn btn-block btn-success mt-2" value="Save">
        </form>      
    </div>
</div>

{{-- Selection with a search box (Select2 JS library) --}}
<script>
    $('.js-example-basic-single').select2();
</script>
@endsection