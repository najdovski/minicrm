<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Company;
use App\Employee;
use Auth;

class CompaniesController extends Controller
{
    /**
     * Passes all the companies index view, ordered by "created_at" field and paginated by 10 items
    */
    public function index()
    {
        $companies = Company::orderBy('created_at', 'DESC')->paginate(10);
        return view('index', compact('companies'));
    }

    /**
     * Opens a create form to add a new company, but it's only accessible for authenticated users who have admin permissions
    */
    public function create()
    {   
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            return view('company.create');
        }
        else {
                
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
                'name' => 'required',
                'email' => 'email',
                'logo' => 'image | dimensions:min_width=100,min_height=100'
            ]);

            if ($request->hasFile('logo')){
                $logoName = $request->logo->store('logos', ['disk' => 'logos_upload']);
            }

            $company = new Company();
            $company->name = $request->input('name');
            $company->email = $request->input('email');
            $company->website = $request->input('website');
            if (isset($logoName)){ $company->logo = $logoName;}

            $company->save();

            session()->flash('message', 'The company was added successfully');
            return redirect()->route('admin.index');
        } else {
                session()->flash('error', 'You need admin permissions to perform this operation!');
                return redirect()->route('home');
        }
    }

    /**
     * Passes all the data for a single company to the company.show view. It's acessible by anyone
     */
    public function show(Company $company)
    {
        $employees = Employee::where('company_id', '=', $company->id)->orderBy('created_at', 'DESC')->get();
        return view('company.show', compact('company', 'employees'));
    }

    /**
     * Opens an edit form to edit a single company. It's accessible by the admins only
    */
    public function edit(Company $company)
    {
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            return view('company.edit', compact('company'));
        } else {
        $employees = Employee::where('company_id', '=', $company->id)->orderBy('created_at', 'DESC')->get();
        return view('company.show', compact('company', 'employees'));            
        }
    }

    /**
     * Updates the new values from the input fields into DB. It's accessible by the admins only
    */    
    public function update(Request $request, Company $company)
    {
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            $this->validate($request, [
                'name' => 'required',
                'email' => 'email',
                'logo' => 'image | dimensions:min_width=100,min_height=100'
            ]);

            if ($request->hasFile('logo')){
                $logoName = $request->logo->store('logos', ['disk' => 'logos_upload']);
            }

            $company->name = $request->input('name');
            $company->email = $request->input('email');
            $company->website = $request->input('website');
            if (isset($logoName)){ $company->logo = $logoName;}

            $company->save();

            session()->flash('message', 'The company was edited successfully');
            return back();

        } else {
            session()->flash('error', 'You need admin permissions to perform this operation!');
            return redirect()->route('home');
        }            
    }

    /**
     * Removes a single company from the DB with all it's employees. Admin accessible only
     */
    public function destroy(Company $company)
    {
        if(!(Auth::guest()) && auth()->user()->admin == TRUE){
            $company->delete();
            session()->flash('message', 'Company removed successfully!');
            return redirect()->route('admin.index');
        } else {
            session()->flash('error', 'You need admin permissions to perform this operation!');
            return redirect()->route('home');
        }
    }
}
