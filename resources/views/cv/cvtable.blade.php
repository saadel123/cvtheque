@extends('layouts.master')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="text-center">
                    <h1>Liste des cv</h1>
                    <a href="{{ url('cvs/create') }}" class="btn btn-success">Ajouter cv</a>
                </div>
                <br>
                <table class="table table-dark">
                    <tr>
                        <th scope="col">Owner</th>
                        <th scope="col">title</th>
                        <th scope="col">presentation</th>
                        <th scope="col">Date de creatione</th>
                        <th scope="col">Action</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                    @foreach ($listcvs as $cv)
                        <tr>
                            <td>{{ $cv->id }}:{{ $cv->user->name }}</td>
                            <td>{{ $cv->titre }}</td>
                            <td>{{ $cv->presentation }}</td>
                            <td>{{ $cv->created_at }}</td>
                            <td><a href="" class="btn btn-success">Details</a></td>
                            <td><a href="{{ url('cvs/' . $cv->id . '/edit') }}" class="btn btn-light">Editer</a></td>
                            <td>
                                <form action="{{ url('cvs/' . $cv->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Supprimer</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>

@endsection
