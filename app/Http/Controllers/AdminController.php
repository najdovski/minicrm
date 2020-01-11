<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Company;
use App\Employee;

class AdminController extends Controller
{
    /**
     * Because of the middleware, all of the methods that belong to this class, are only accessible to the authenticated users
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Passes all the companies and employees to the admin.index view, ordered by "created_at" field
    */
    public function index()
    {
        $companies = Company::orderBy('created_at', 'DESC')->get();
        $employees = Employee::orderBy('created_at', 'DESC')->get();
        return view('admin.index', compact('companies', 'employees'));
    }
}
