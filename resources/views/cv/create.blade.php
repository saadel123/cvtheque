@extends('layouts.master')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="{{ route('cvs.store') }}" method="post" enctype="multipart/form-data">
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
