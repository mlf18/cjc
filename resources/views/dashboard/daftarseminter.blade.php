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

  {!! Form::open(['url'=>'pemakalahs','class'=>'form-horizontal','method'=>'post','file'=>'true']) !!}
  <input type="hidden" name="lingkup" value="internasional">
    <div class="form-gorup">
      {!! Form::label('judul', 'Nama Lengkap dan Gelar', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('judul', null, ['class'=>'form-control']) !!}
        {!! $errors->has('judul')?$errors->first('judul'):'' !!}
      </div>
    </div> <br />
    <div class="form-gorup">
      <div class="col-md-12">
      {!! Form::label('kategori', 'Jenis Kepesertaan', ['class'=>'control-label']) !!} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       {!! Form::radio('name', 'value', true); !!} Pemakalah
        {!! Form::radio('name', 'value', true); !!} Peserta Aktif
      </div>
    </div> <br />
    <div class="form-gorup" style="margin-bottom: 14px;">
      {!! Form::label('berita', 'Topik Makalah', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::select('size', array('A' => 'Penanggulangan Kemiskinan', 'B' => 'Penguatan Daya Saing Ekonomi', 'C' => 'Kualitas Hidup dan daya saing SDM', 'D' => 'Pengelolaan SDA, LH dan Penanggulangan', 'E' => 'Ketahanan Pangan dan Energi', 'F' => 'Kesenjangan Wilayah', 'G' => 'Tata Kelola Pemerintah', 'H' => 'Pariwisata dan ekonomi kreatif')); !!}
      </div>
    </div>
    <div class="form-gorup" style="margin-bottom: 14px;">
      {!! Form::label('berita', 'Judul Makalah', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::textArea('berita', null, ['class'=>'form-control']) !!}
        {!! $errors->has('berita')?$errors->first('berita'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('kategori', 'Jabatan', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('kategori', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('kategori', 'Instansi', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('kategori', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('kategori', 'Alamat Instansi', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('kategori', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div><div class="form-gorup">
      {!! Form::label('kategori', 'Telp/Faxs', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('kategori', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div><div class="form-gorup">
      {!! Form::label('kategori', 'No Hp', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('kategori', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <div class="form-gorup">
      {!! Form::label('kategori', 'Alamat Email', ['class'=>'control-label col-md-12']) !!}
      <div class="col-md-12">
        {!! Form::text('kategori', null, ['class'=>'form-control']) !!}
        {!! $errors->has('kategori')?$errors->first('kategori'):'' !!}
      </div>
    </div>
    <br />
    <div class="col-lg-offset-4 col-lg-4">
    <h8>File Abstrak</h8>
      <form action="" enctype="multipart/form-data" method="post">
        <input type="file" name="image"> <br />
      </form>
    </div>
    <div class="form-gorup">
      <center><div class="col-md-offset-2 col-md-10">
        <input type="submit" value="Submit" class="btn btn-primary" style="margin-top: 14px;">
      </div></center>
    </div>
  {!! Form::close() !!}
</div>
<br />
<br />

@stop
