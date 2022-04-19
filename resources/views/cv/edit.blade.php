@extends('layouts.master')

@section('content')
    <div class="container text-white">
        @if (count($errors))
            <div class="alert alert-danger" role="alert">
                <ul>
                    @foreach ($errors->all() as $msg)
                        <li>{{ $msg }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="row">
            <div class="col-md-12">
                <form action="{{ route('cvs.update',['cv'=>$cv->id ]) }}" method="post" enctype="multipart/form-data">
                    @method('PUT')
                    <!--or try this one{{ method_field('PUT') }}-->
                    <!--<input type="hidden" name="_methode" value="PUT">-->
                    @csrf
                    @include('cv.formcv')
                    <br>
                    <div class="form-group">
                        <input type="submit" class="form-control btn btn-primary" value="Enregistre">
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
