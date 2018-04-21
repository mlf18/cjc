<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePemakalahsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pemakalahs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama',255);
            $table->integer('kategori_id')->unsigned()->nullable();
            $table->foreign('kategori_id')
              ->references('id')->on('kategoris')
              ->onDelete('cascade');
            $table->string('judul',255);
            $table->string('jenis',255);
            $table->string('lingkup',255);
            $table->string('jabatan',255);
            $table->string('instansi',255);
            $table->string('alamat_instansi',255);
            $table->string('telp_faxs',255);
            $table->string('hp',255);
            $table->string('email',255);
            $table->string('abstrak',255);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pemakalahs');
    }
}
