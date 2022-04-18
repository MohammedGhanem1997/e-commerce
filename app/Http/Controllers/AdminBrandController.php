<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Catalog;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class AdminBrandController extends Controller
{
    public function __construct ()
    {
        $this->middleware('auth:admin');
    }

    /**
     * @return View
     */
    public function list()
    {
        $brands = Brand::all();
        return view('admin.admin.pages.brand.index', ['brands' => $brands]);
    }

    /**
     * @param int $id
     * @param Request $request
     * @return RedirectResponse
     */
    public function delete(int $id, Request $request): RedirectResponse
    {
        if (!$request->id || ($request->id != $id)) {
            return back()->withErrors('Server Error... Please try again.'); //ToDo create error
        }

        /** @var Brand $brand */
        $brand = Brand::find($request->id);

        if (!$brand instanceof Brand) {
            return back()->withErrors('Server Error... Brand not found');
        }




        $brand->delete();

        return redirect()->back()->with('message', 'Brand '.$brand->name.' was deleted!');
    }

    /**
     * @param int|null $id
     * @return View
     */
    public function showEditForm(int $id=null): View
    {
        $brand = null;
        if ($id) {
            $brand = Brand::findOrFail($id);
        }

        return view(
            'admin.admin.pages.brand.create',
            ['brand'=> $brand,]
        );
    }

    /**
     * @param Request $request
     * @return RedirectResponse|Redirector
     * @throws ValidationException
     */
    public function update(Request $request): RedirectResponse|Redirector
    {
        $this->validate($request, [
            'name' => 'required | min:3 | max:30',
            'image' => 'required | image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        $id = (int)$request->get('id');
        if ($id) {
            $brand = Brand::findOrFail($id);
            $message = 'Brand '. $request->get('name') .' was changed!';
        } else {
            $brand = new Brand();
            $message = 'Brand '. $request->get('name') .' was added!';
        }

        $brand->name = $request->get('name');


        if ($request->hasFile('image')) {
            /** @var UploadedFile $image */
            $image = $request->file('image');
            $imageName = 'cat_' . time() . '.' . $image->getClientOriginalExtension();
            $imageDestinationPath = public_path('images/Brand/');
            $image->move($imageDestinationPath, $imageName);
            $brand->image = 'images/Brand/'.$imageName;
        }
        //todo image resize

        $brand->save();

        return redirect(url('admin/brands'))->with('message', $message);
    }
}
