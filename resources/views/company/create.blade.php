@extends('layouts.app')
@section('content')

<div class="row justify-content-center">
    <div class="col-8">
        <h5 class="text-uppercase font-weight-bold text-center mb-3 red">Add New Company</h5>
        <hr>
        @foreach ($errors->all() as $error)
                <div class="alert alert-danger">{{$error}}</div>
        @endforeach
        <form action="{{ route('company.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <input type="text" class="form-control" placeholder="Company Name" name="name" value="{{ old('name') }}" required>
            <input type="email" class="form-control mt-2" placeholder="Company Email Address" name="email" value="{{ old('email') }}">
            <input type="text" class="form-control mt-2" placeholder="Company Website" name="website" value="{{ old('website') }}">       
            <div class="form-group custom-file mt-2">
                <input type="file" class="custom-file-input" id="customFile" name="logo" value="{{ old('logo') }}">
                <label class="custom-file-label" for="customFile">Choose logo (min 100x100px)</label>
            </div>
            <input type="submit" class="btn btn-block btn-success mt-2" value="Save">
        </form>
    </div>
</div>

{{-- Custom File Upload triggering (JS library) --}}
<script>
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>
@endsection