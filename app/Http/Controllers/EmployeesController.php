<?php

namespace App\Http\Controllers;

use App\Employee;
use App\Company;
use Illuminate\Http\Request;
use Auth;

class EmployeesController extends Controller
{
    public function index()
    {
        //
    }

    /**
     * Opens a create form to add a new employee. It's only accessible by the admins
    */    
    public function create()
    {   if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            $companies = Company::orderBy('created_at', 'DESC')->get();
            return view('employee.create', compact('companies'));
        } else {
                session()->flash('error', 'You need admin permissions to perform this operation!');
                return redirect()->route('home');            
        }
    }

    /**
     * Stores the input fields into DB, from the create form. It's accessible by the admins only
    */    
    public function store(Request $request)
    {
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            $this->validate($request, [
                'first_name' => 'required',
                'last_name' => 'required',
                'company' => 'required'
            ]);

            $employee = new Employee();
            $employee->first_name = $request->input('first_name');
            $employee->last_name = $request->input('last_name');
            $employee->company_id = $request->input('company');
            $employee->email = $request->input('email');
            $employee->phone = $request->input('phone');

            $employee->save();
            session()->flash('message', 'The employee was added successfully');
            return back();
            

        } else {
                session()->flash('error', 'You need admin permissions to perform this operation!');
                return redirect()->route('home');
        }
    }

    public function show(Employee $employee)
    {
        //
    }

    /**
     * Opens an edit form to edit a single employee. It's accessible for the admins only
    */    
    public function edit(Employee $employee)
    {
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            $companies = Company::orderBy('created_at', 'DESC')->get();
            return view('employee.edit', compact('employee', 'companies'));
        } else {
            session()->flash('error', 'You need admin permissions to perform this operation!');
            return redirect()->route('home');
        }            
    }

    /**
     * Updates the new values from the edit form into DB. It's accessible by the admins only
    */  
    public function update(Request $request, Employee $employee)
    {
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            $this->validate($request, [
                'first_name' => 'required',
                'last_name' => 'required',
                'company' => 'required'
            ]);

            $employee->first_name = $request->input('first_name');
            $employee->last_name = $request->input('last_name');
            $employee->company_id = $request->input('company');
            $employee->email = $request->input('email');
            $employee->phone = $request->input('phone');

            $employee->save();
            session()->flash('message', 'The employee was edited successfully');
            return back();
        } else {
            session()->flash('error', 'You need admin permissions to perform this operation!');
            return redirect()->route('home');
        }            
    }

    /**
     * Removes a single employee from the DB. Admin accessible only
     */
    public function destroy(Employee $employee)
    {
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            $employee->delete();
            session()->flash('message', 'Employee removed successfully!');
            return back();
        } else {
            session()->flash('error', 'You need admin permissions to perform this operation!');
            return redirect()->route('home');
        }
    }
}
