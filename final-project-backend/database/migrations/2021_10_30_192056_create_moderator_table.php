<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateModeratorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('moderator', function (Blueprint $table) {
            $table->id('m_id');
            $table->string('m_uname');
            $table->string('m_name');
            $table->string('m_password');
            $table->bigInteger('m_phone');
            $table->string('m_email');
            $table->date('m_dob');
            $table->string('m_gender');
            $table->string('m_address');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('moderator');
    }
}
