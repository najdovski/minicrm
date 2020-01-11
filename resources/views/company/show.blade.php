@extends('layouts.app')
@section('content')

<div class="row justify-content-center">

    <div class="col-2">
        <img src="
        @if ($company->logo)
            {{ asset($company->logo) }}
        @else
            {{ asset('/logos/nologo.jpg') }}
        @endif
        " class="mw-100 rounded shadow">
        @auth
        <div class="text-center mt-2">
            <a href="{{ route('company.edit', $company->id) }}" class="btn btn-primary btn-block btn-sm">Edit</a>
            <form id="deleteCompany{{$company->id}}" action="{{route('company.destroy', $company->id)}}" method="POST" style="display:none">
                {{csrf_field()}}
                {{method_field('DELETE')}}
            </form>
            <a href="" onclick="if (confirm('Are you sure?')){event.preventDefault(); document.getElementById('deleteCompany{{$company->id}}').submit();} else { event.preventDefault();}" class="btn btn-danger btn-block btn-sm mt-1">Remove</a>
        </div>
        @endauth
    </div>

    <div class="col-10">
        <h3 class="text-uppercase font-weight-bold red">{{ $company->name }}</h3>
        <hr>
        <h5>Website: <a href="https://{{ $company->website }}" target="_blank"> <strong>{{ $company->website }}</strong> </a></h5>
        <h5>Email: <strong>{{ $company->email }}</strong></h5>
        <p class="mt-4 text-secondary">Published {{ $company->created_at->diffForHumans() }}</p>
    </div>
    
    <div class="col-2"></div>
    <div class="col-10 mt-5">
        @auth
            <span class="float-right"><a href="{{ route('employee.create') }}"><i class="fas fa-lg fa-user-plus text-success"></i></a></span>
        @endauth
        <h5 class="text-uppercase font-weight-bold text-center mb-3 red">List of Employees ({{ count($company->employee) }})</h5>
        <hr>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                    <th scope="col">#</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    @auth
                    <th scope="col"></th>
                    <th scope="col"></th>
                    @endauth
                    </tr>
                </thead>
                <tbody>
                    @foreach ($employees as $employee)
                        <tr>
                        <th scope="row">{{ $employee->id }}</th>
                        <td>{{ $employee->first_name }}</td>
                        <td>{{ $employee->last_name }}</td>
                        <td>
                            @if (($employee->email) != NULL)
                                {{ $employee->email }}
                            @else
                                N/A
                            @endif
                        </td>
                        <td>
                            @if (($employee->phone) != NULL)
                                {{ $employee->phone }}
                            @else
                                N/A
                            @endif
                        </td>
                        @auth
                        <td class="text-center"><a href="{{ route('employee.edit', $employee->id) }}"><i class="fas fa-lg fa-user-edit text-primary"></i></a></td>
                            <form id="deleteEmployee{{$employee->id}}" action="{{route('employee.destroy', $employee->id)}}" method="POST" style="display:none">
                                {{csrf_field()}}
                                {{method_field('DELETE')}}
                            </form>                        
                        <td class="text-center"><a href="" onclick="if (confirm('Are you sure?')){event.preventDefault(); document.getElementById('deleteEmployee{{$employee->id}}').submit();} else { event.preventDefault();}"><i class="fas fa-lg fa-user-times text-danger"></i></a></td>
                        @endauth
                        </tr>
                    @endforeach
                </tbody>
            </table>
    </div>
</div>
@endsection