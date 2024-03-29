<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnUserId extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('cvs', function (Blueprint $table) {
            
            $table->foreignId('user_id')->constrained()->after('id');
            /*
            hado kano fel version l9dima dyal laravel
            //$table->integer('user_id')->unsigned()->after('id');
            //$table->foreignId(column:'user_id')->references('id')->on('users');   
            */
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('cvs', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
            $table->dropColumn('user_id'); 
        });
    }
}
