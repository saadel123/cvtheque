<?php

namespace App\Http\Controllers;

use App\Models\Experience;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use App\Models\Cv;
use App\Models\Experiences;
use App\Http\Requests\cvRequest;
use Illuminate\Support\Facades\Auth;
use Image;
//use GuzzleHttp\Middleware;
//use Illuminate\Support\Facades\Auth as FacadesAuth;
//use Symfony\Component\Console\Input\Input;

class CvController extends Controller
{
    //middlwear mkaykhlikch tconnecta ila mkntich dayer login dyalek
    public function __construct()
    {
        $this->Middleware('auth');
        return redirect('auth')->with('danger', 'svp connecter pour consulter les cv!!');
    }
    //lister les cvs
    public function index()
    {
        if (Auth::user()->is_admin) {
            $listcvs = Cv::all();
        } else {
            $listcvs = Auth::user()->cvs;
        }
        //hadi katjiblik cv bel id dyyal user limconnectui $listcvs= Cv::where('user_id',Auth::user()->id)->get();
        //hadi katjibiha ga3 les cv $listcvs = Cv::all();
        return view('cv.index', ['listcvs' => $listcvs]); //feblast $listcvs kandiro [] bacj tban no data found
    }
    //Afficher le formilaire de la creation des cvs
    public function create()
    {
        return view('cv.create');
    }

    //Enregistre un cv
    public function store(cvRequest $request)
    {
        $this->validate($request, [
            'pic' => 'required|image|mimes:jpg,jpeg,png,gif,svg|max:4096',
        ]);
        $cv = new Cv();
        $cv->titre = $request->input('titre');
        $cv->presentation = $request->input('presentation');
        $cv->user_id = Auth::user()->id;

        $image = $request->file('pic');
        $input['pic'] = time() . '.' . $image->getClientOriginalExtension();
        $imgFile = Image::make($image->getRealPath());
        /************Get the image size and resize it from it dimesnions*********** */
        $height = Image::make($request->file('pic')->getRealPath())->height();
        $width = Image::make($request->file('pic')->getRealPath())->width();

        /*too small size*/
        if ($width <= 300) {
            $newwidth = $width * 4;
            $newheight = $height * 4;
        } elseif ($width >= 400 && $width <= 900) {
            $newwidth = $width * 1.6;
            $newheight = $height * 1.6;
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
        })->save(public_path('storage/images/' . $input['pic']));
        $cv->pic = 'images/' . $input['pic'];
        $cv->save();
        return redirect()->route('cvs.show', ['cv' => $cv->id])->with('success', 'Le cv a ete bien enregistrer !!');
    }
    //premeter de recuperer un cv puis de le mettre dans un le formilaire
    public function edit($id)
    {
        $cv = Cv::findOrFail($id); //kadig l 404 lmkanch error
        $this->authorize('update', $cv);
        return view('cv.edit', ['cv' => $cv]);
    }

    //permet de modiffier un cv
    public function update(cvRequest $request, $id)
    {

        $cv = Cv::find($id);
        $cv->titre = $request->input('titre');
        $cv->presentation = $request->input('presentation');
        if ($request->hasFile('pic')) {
            $cv->pic = $request->pic->store('images', 'public');
        }
        $cv->save();
        return redirect('cvs')->with('success', 'cv updated successfully');
    }

    //permet de supprimer un cv
    public function destroy(Request $request, $id)
    {
        $cv = Cv::find($id);
        $this->authorize('delete', $cv);
        $cv->delete();
        return redirect('cvs');
    }

    public function show($id)
    {
        return view('cv.show', ['id' => $id]);
    }

    public function getExperiences($id)
    {
        $cv = Cv::find($id);
        return $cv->experiences;
    }
}
