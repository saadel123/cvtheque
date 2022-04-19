<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Image;

class ImageFileController extends Controller
{
    public function index()
    {
        return view('welcome');
    }

    public function imageFileUpload(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|image|mimes:jpg,jpeg,png,gif,svg|max:4096',
        ]);
        $image = $request->file('file');
        $input['file'] = time() . '.' . $image->getClientOriginalExtension();
        $imgFile = Image::make($image->getRealPath());

        /************Get the image size and resize it from it dimesnions*********** */
        $height = Image::make($request->file('file')->getRealPath())->height();
        $width = Image::make($request->file('file')->getRealPath())->width();

        /*too small size*/
        if ($width <= 300) {
            $newwidth = $width * 3;
            $newheight = $height * 3;
        } elseif ($width >= 600 && $width <= 900) {
            $newwidth = $width * 1.5;
            $newheight = $height * 1.5;
        } elseif ($width >= 1000 && $width <= 2000) {
            /*medium size*/
            $newwidth =  $width / 2;
            $newheight = $height / 2;
        } elseif ($width > 2000) {
            $newwidth =  $width / 4;
            $newheight = $height / 4;
        } else {
            $newwidth = $width;
            $newheight = $height;
        }
        /* resize the image to suit the mentioned dimensions */

        $imgFile->resize($newwidth,  $newheight);

        /******************************************************************************* */
        $imgFile->text('directbusiness.ma', 20, 40, function ($font) {
            $font->file(public_path('/fonts/OpenSans-Semibold.ttf'));
            $font->size(39);
            $font->color('#ffffff');
            $font->align('left');
            $font->valign('center');
        });
        $imgFile->save(public_path('storage/images/' . $input['file']));
        //view('welcome')
        //back()
        return back()
            ->with('success', 'File successfully uploaded.')
            ->with('height', $newheight)
            ->with('width', $newwidth)
            ->with('fileName', $input['file']);
    }
}
