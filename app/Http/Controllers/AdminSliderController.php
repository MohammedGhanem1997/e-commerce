<?php

namespace App\Http\Controllers;

use App\Catalog;
use App\Slider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class AdminSliderController extends Controller
{

    public function list()
    {
        $sliders = Slider::all();

        return view('admin.admin.pages.slider.index', ['sliders' => $sliders]);
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

        /** @var Slider $slider */
        $slider = Slider::find($request->id);

        if (!$slider instanceof Catalog) {
            return back()->withErrors('Server Error... Category not found');
        }




        $slider->delete();

        return redirect()->back()->with('message', 'Slider '.$slider->title.' was deleted!');
    }


    public function showEditForm(int $id=null)
    {
        $slider = null;
        if ($id) {
            $slider = Slider::findOrFail($id);
        }

        return view('admin.admin.pages.slider.create',['slider'=> $slider] );
    }

    public function update(Request $request): RedirectResponse|Redirector
    {
        $this->validate($request, [
            'title' => 'required | min:3 | max:30',
            'description' => 'required | max:99',
            'image' => 'required | image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
        $id = (int)$request->get('id');
        if ($id) {
            $slider = Slider::findOrFail($id);
            $message = 'Slider '. $request->get('title') .' was changed!';
        } else {
            $slider = new Slider;
            $message = 'Slider '. $request->get('title') .' was added!';
        }

        $slider->title = $request->get('title');
        $slider->link = $request->get('link');
        $slider->description = $request->get('description');


        if ($request->hasFile('image')) {
            /** @var UploadedFile $image */
            $image = $request->file('image');
            $imageName = 'cat_' . time() . '.' . $image->getClientOriginalExtension();
            $imageDestinationPath = public_path('images/Slider/');
            $image->move($imageDestinationPath, $imageName);
            $slider->image = 'images/Slider/'.$imageName;
        }
        //todo image resize

        $slider->save();

        return redirect(url('admin/sliders'))->with('message', $message);
    }
}
