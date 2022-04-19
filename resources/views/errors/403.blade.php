@extends('layouts.master')

@section('content')
    <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offest-2 text-center">
                    <h1 class="tt-title">Cette page est non sutoriser</h1>
                    <p><a href="{{ url('cvs') }}" class="btn btn-primary">Retour</a></p>                 
                </div>
        </div>
    </div>
@endsection
