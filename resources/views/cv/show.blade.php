@extends('layouts.master')

@section('content')
    <div class="container-fluid bg-gray" id="accordion-style-1">
        <div class="container" id="app">
            <section>
                <div class="row">
                    <h1>@{{ message }}</h1>
                    <div class="col-18">
                        <h1 class="text-white mb-4 text-center">Formation professionnelle</h1>
                    </div>
                    <div class="col-16 mx-auto">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="accordion-button text-left" type="button" data-toggle="collapse"
                                            data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <i class="fa fa-angle-double-right mr-3"></i>Experince
                                        </button>
                                    </h5>
                                </div>

                                <div id="collapseOne" class="collapse show fade" aria-labelledby="headingOne"
                                    data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div>
                                            <label for="">Titre:</label>
                                            <input type="text" class="form-group" placeholder="le titre">
                                        </div>
                                        <div>
                                            <label for="">Body:</label>
                                            <input type="text" class="form-group" placeholder="le Contenu">
                                        </div>

                                        <ul class="list-group">
                                            <li class="list-group-item" v-for="experience in experiences">
                                                <div style="float: right">
                                                    <button class="btn btn-warning btn-sm">Editer</button>
                                                    <button class="btn btn-danger btn-sm">Supprimer</button>
                                                </div>
                                                <h3>@{{ experience.titre }}</h3>
                                                <p>enim eiusmod high life accusamus terry
                                                    richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard
                                                    dolor
                                                    brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
                                                    tempor, sunt
                                                    aliqua put a bird on it squid single-origin coffee nulla assumenda
                                                    shoreditch et.
                                                    Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                                    nesciunt sapiente
                                                    ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                                    craft beer
                                                    farm-to-table, raw denim aesthetic synth nesciunt you probably haven't
                                                    heard of them</p>
                                                <small>@{{ experience.debut }} - @{{ experience.fin }}</small>
                                            </li>


                                        </ul>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <button class="btn btn-success">
                                                    Ajouter
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="accordion-button text-left" type="button" data-toggle="collapse"
                                            data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                            <i class="fa fa-angle-double-right mr-3"></i>Formation
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse fade" aria-labelledby="headingTwo"
                                    data-parent="#accordionExample">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                        richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                        brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                        aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                        Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                        ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                        accusamus labore sustainable VHS.<br>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <button class="btn btn-success">
                                                    Ajouter
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="accordion-button text-left" type="button" data-toggle="collapse"
                                            data-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                                            <i class="fa fa-angle-double-right mr-3"></i>Portfolio
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse fade" aria-labelledby="headingThree"
                                    data-parent="#accordionExample">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                        richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                        brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                        aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                        Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                        ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                        accusamus labore sustainable VHS.<br>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <button class="btn btn-success">
                                                    Ajouter
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingFour">
                                    <h5 class="mb-0">
                                        <button class="accordion-button text-left" type="button" data-toggle="collapse"
                                            data-target="#collapseFour" aria-expanded="true" aria-controls="collapseOne">
                                            <i class="fa fa-angle-double-right mr-3"></i>Comptence
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseFour" class="collapse fade" aria-labelledby="headingFour"
                                    data-parent="#accordionExample">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
                                        richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
                                        brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                        aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                        Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente
                                        ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                                        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                        accusamus labore sustainable VHS.<br>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <button class="btn btn-success">
                                                    Ajouter
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
@endsection

@section('javascripts')
    <script src="{{ asset('js/vue.js') }}"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
        window.Laravel = {!! json_encode([
    'csrftoken' => csrf_token(),
    'idExperience' => $id,
    'url' => url('/'),
]) !!};
    </script>
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                message: 'je suis saad el ghanemy',
                experiences: []
            },
            methods: {
                getExperiences: function() {
                    axios.get(window.Laravel.url + '/getexperiences/' + window.Laravel.idExperience)
                        .then(response => {
                            this.experiences = response.data;
                        })
                        .catch(error => {
                            console.log('errors :', error)
                        })
                }

            },
            mounted: function() {
                this.getExperiences();
            }

        });
    </script>
@endsection
