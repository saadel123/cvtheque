require('./bootstrap');


import Vue from 'vue';
import HelloVue from './components/Hello-Vue.vue';

const vue= new Veu({
    el: '#app',
    components:{
        'ExampleComponent': HelloVue,
    }
})

