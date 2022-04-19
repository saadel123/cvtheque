@extends('layouts.master')

@section('content')
    <div class="container text-white">
        <div class="text-center">
            <h1>Liste des cv</h1>
            <a href="{{ url('cvs/create') }}" class="btn btn-success">Ajouter cv</a>
        </div>
        <br>
        <div class="row">
            @forelse ($listcvs as $cv)
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="{{ asset('storage/' . $cv->pic) }}" class="img-thumbnail" alt="{{ $cv->titre }}">
                        <div class="caption">
                            <h3>{{ $cv->titre }}</h3>
                            <p> {{ $cv->presentation }} </p>
                            <p>Ecrire par:{{ $cv->user->name }}</p>
                            <form action="{{ /*url('cvs/'. $cv->id)*/ route('cvs.destroy', ['cv' => $cv->id]) }}"
                                method="POST">
                                @csrf
                                @method('DELETE')
                                <a href="{{ url('cvs/' . $cv->id) }}" class="btn btn-primary">Details</a>
                                <a href="{{ /*url('cvs/'. $cv->id . '/edit') */ route('cvs.edit', ['cv' => $cv->id]) }}"
                                    class="btn btn-light">Editer</a></td>
                                @can('delete', $cv)
                                    <button type="submit" onclick="confirm('are you sure?')"
                                        class="btn btn-danger">Supprimer</button>
                                @endcan
                            </form>
                            <br>
                        </div>
                    </div>
                </div>
            @empty
                <h1>No data found</h1>
            @endforelse
        </div>
    </div>
@endsection
