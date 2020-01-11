@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-2">
        <a href="{{ route('company.create') }}" class="btn btn-dark btn-block"><i class="fas fa-plus mr-2 red"></i> Add Company</a>
        <a href="{{ route('employee.create') }}" class="btn btn-dark btn-block"><i class="fas fa-user-plus mr-2 red"></i> Add Employee</a>
    </div>
    <div class="col-md-10">
        <h5 class="text-center text-uppercase font-weight-bold red">List of all companies ({{ count($companies) }})</h5>
        <hr>
        <table class="table" id="companies">
            <thead class="thead-dark">
                <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Website</th>
                <th scope="col">Email</th>
                <th scope="col">Published</th>
                <th scope="col">Edit</th>
                <th scope="col">Remove</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($companies as $company)
                    <tr>
                        <th scope="row">{{ $company->id }}</th>
                        <td class="font-weight-bold"><a href="{{ route('company.show', $company->id) }}" class="red">{{ $company->name }}</a></td>
                        <td>{{ $company->website }}</td>
                        <td>{{ $company->email }}</td>
                        <td>{{ $company->created_at->diffForHumans() }}</td>
                        <td class="text-center"><a href="{{ route('company.edit', $company->id) }}"><i class="far fa-lg fa-edit text-primary"></i></a></td>
                        <td class="text-center">
                            <form id="deleteCompany{{$company->id}}" action="{{route('company.destroy', $company->id)}}" method="POST" style="display:none">
                                {{csrf_field()}}
                                {{method_field('DELETE')}}
                            </form>
                            <a href="" onclick="if (confirm('Are you sure?')){event.preventDefault(); document.getElementById('deleteCompany{{$company->id}}').submit();} else { event.preventDefault();}"><i class="far fa-lg fa-trash-alt text-danger"></i></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <hr>


        <h5 class="text-center text-uppercase font-weight-bold red mt-5">List of all employees ({{ count($employees) }})</h5>
        <hr>
        <table class="table" id="employees">
            <thead class="thead-dark">
                <tr>
                <th scope="col">#</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Company</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">Edit</th>
                <th scope="col">Remove</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($employees as $employee)
                    <tr>
                        <th scope="row">{{ $employee->id }}</th>
                        <td class="font-weight-bold"> {{ $employee->first_name }} </td>
                        <td>{{ $employee->last_name }}</td>
                        <td class="font-weight-bold"><a href="{{ route('company.show', $employee->company->id) }}" class="red"> {{ $employee->company->name }} </a></td>
                        <td>
                            @if ($employee->email != NULL)
                                {{ $employee->email }}
                            @else
                                N/A
                            @endif
                        </td>
                        <td>
                            @if ($employee->phone != NULL)
                                {{ $employee->phone }}
                            @else
                                N/A
                            @endif
                        </td>
                        <td class="text-center"><a href="{{ route('employee.edit', $employee->id) }}"><i class="far fa-lg fa-edit text-primary"></i></a></td>
                        <td class="text-center">
                            <form id="deleteEmployee{{$employee->id}}" action="{{route('employee.destroy', $employee->id)}}" method="POST" style="display:none">
                                {{csrf_field()}}
                                {{method_field('DELETE')}}
                            </form>
                            <a href="" onclick="if (confirm('Are you sure?')){event.preventDefault(); document.getElementById('deleteEmployee{{$employee->id}}').submit();} else { event.preventDefault();}"><i class="far fa-lg fa-trash-alt text-danger"></i></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>



    </div>
</div>
{{-- DataTable triggering --}}
<script>$(document).ready(function () {
    $.noConflict();
        var table = $('#companies').DataTable({
        "order": [[ 0, "desc" ]]
        });
        var table = $('#employees').DataTable({
            "order": [[ 0, "desc" ]]
        });
    });
</script>
@endsection