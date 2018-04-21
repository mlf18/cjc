@extends('template.main')
@section('content')
<section>
<br />
  <div class="container">
    <header class="section-header">
      <center><h4>FORMULIR PENDAFTARAN *) <br />
      CALL PAPER PADA SEMINAR REGIONAL PEMBANGUNAN SEKTOR STRATEGIS BERBASIS PENGEMBANGAN WILAYAH GUNA MENDUKUNG DAYA SAING JAWA TENGAH</center></h4>
    </header> <br />
    <p align="left">Kepada Yth <br />
    Panitia Penyelenggara Seminar dan Call Paper</p>
  </div>
  <br />
  <div class="container">

  {!! Form::open(['url'=>'pemakalahs','class'=>'form-horizontal','method'=>'post',"enctype"=>"multipart/form-data"]) !!}
  <input type="hidden" name="lingkup" value="regional">
    <div class="form-gorup">
      {!! Form::label('name', 'Nama Lengkap dan Gelar', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('name', null, ['class'=>'form-control']) !!}
        {!! $errors->has('judul')?$errors->first('judul'):'' !!}
      </div>
    </div> <br />
    <div class="form-gorup">
      <div class="col-md-12">
      {!! Form::label('kategori', 'Jenis Kepesertaan', ['class'=>'control-label']) !!} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       {!! Form::radio('jenis','pemakalah', true); !!} Pemakalah
        {!! Form::radio('jenis','peserta', false); !!} Peserta Aktif
      </div>
    </div> <br />
    <div class="form-gorup" style="margin-bottom: 14px;">
      {!! Form::label('berita', 'Topik Makalah', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::select('kategori', array('1' => 'Penanggulangan Kemiskinan', '2' => 'Penguatan Daya Saing Ekonomi', '3' => 'Kualitas Hidup dan daya saing SDM', '4' => 'Pengelolaan SDA, LH dan Penanggulangan', '5' => 'Ketahanan Pangan dan Energi', '6' => 'Kesenjangan Wilayah', '7' => 'Tata Kelola Pemerintah', '8' => 'Pariwisata dan ekonomi kreatif'),null,['class'=>'control-label col-md-12 dis']); !!}
      </div>
    </div>
    <div class="form-gorup" style="margin-bottom: 14px;">
      {!! Form::label('judul', 'Judul Makalah', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::textArea('judul', null, ['class'=>'form-control dis']) !!}
        {!! $errors->has('berita')?$errors->first('berita'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('jabatan', 'Jabatan', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('jabatan', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('instansi', 'Instansi', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('instansi', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('alamat_instansi', 'Alamat Instansi', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('alamat_instansi', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div><div class="form-gorup">
      {!! Form::label('telp', 'Telp/Faxs', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('telp', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div><div class="form-gorup">
      {!! Form::label('hp', 'No Hp', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('hp', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('email', 'Alamat Email', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('email', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <br />
    <div class="col-lg-offset-4 col-lg-4">
    <h8>File Abstrak</h8>
        <input type="file" name="abstrak" class="dis"> <br />
    </div>
    <div class="form-gorup">
      <center><div class="col-md-offset-2 col-md-10">
        <input type="submit" value="Submit" class="btn btn-primary" id="submit" style="margin-top: 14px;">
      </div></center>
    </div>
  {!! Form::close() !!}
</div>
<br />
<br />

@stop
