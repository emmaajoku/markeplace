<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\CPU\Helpers;
use Brian2694\Toastr\Facades\Toastr;
use function App\CPU\translate;

class EnvironmentSettingsController extends Controller
{
    public function environment_index()
    {
        return view('admin-views.business-settings.environment-index');
    }

    public function environment_setup(Request $request)
    {

        Toastr::success('Environment variables updated successfully!');
        return back();
    }
}
