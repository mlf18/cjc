@extends('template.main')
@section('content')
	<section>
  <div class="container">
    <header class="section-header">
      <h3>Central Java Conference</h3>
    </header>
    <div class="row">
        <div class="col-md-4">
          <center><h4 class="title"><a href="#">&nbsp;</a></h4></center>
        </div>
        <div class="col-md-4">
          <div class="img">
            <img src="/BizPage/img/1.jpg" alt="" class="img-fluid">
          </div>
          <center><h4 class="title"><a href="#">Seminar Nasional 2018</a></h4></center>
        </div>
        <div class="col-md-4">
          <center><h4 class="title"><a href="#">&nbsp;</a></h4></center>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
        <p>Seminar Nasional Tahun 2018<br /> <br />
Dengan Tema : Pemerataan Pembangunan Untuk Pertumbuhan Berkualitas<br /><br />
Sarana dan Target Peserta<br />
Seminar Nasional mengundang partisipasi para peneliti/akademisi/masyarakat ilmiah dari seluruh
Indonesia sebagai upaya memperbandingkan hasil terbaik pembangunan di berbagai daerah di
Indonesia.<br /><br />
Seminar nasional mengundang para peneliti, praktisi dan pemerhati dari lembaga pemerintah, swasta,
perguruan tinggi, lembaga penelitian, LSM dan lembaga lain untuk mempresentasikan hasil-hasil
penelitian yang lokasi pelaksanaannya di seluruh Indonesia dengan topik sesuai prioritas pembangunan
nasional 2019 meliputi:<br /> 
<ol type="1">
	<li>Pembangunan Manusia melalui Pengurangan Kemiskinan dan Peningkatan Pelayanan Dasar</li>
	<li>Pengurangan Kesenjangan antarwilayah melalui Penguatan Konektivitas dan Kemaritiman</li>
	<li>Peningkatan Nilai Tambah Ekonomi melalui Pertanian, Industri, dan Jasa Produktif</li>
	<li>Pemantapan Ketahanan Energi, Pangan, dan Sumber Daya Air</li>
	<li>Stabilitas Keamanan Nasional dan Kesuksesan Pemilu</li>
</ol>
<br /> Tanggal Penting : <br /> 
16 Juni 2018 Batas akhir pendaftaran dan penerimaan abstrak<br />

2 Juli 2018 Pengumuman hasil seleksi abstrak yang dapat dipresentasikan<br />

10 Agustus 2018 Batas waktu penerimaan makalah lengkap <br />

15 September 2018 Pelaksanaan Seminar </p>
      </div>

    </div>
  </div>
</section>
<br />

<center>
	<div class="container">
	    <div class="row">
	        <div class="col-md-12">
	            <div class="panel panel-default">
	            <table border="1">
	                <div class="panel-heading">Pendaftaran</div>
	                <div class="panel-body">
	                    <div class="form-group"> Daftar Seminar Nasional 2018
	                       <div class="col-md-8 col-md-offset-4">
	                                <a class="btn btn-link" href="{{ url('daftar') }}"><button class="btn btn-primary">
	                                    Daftar
	                                </button></a>
	                       </div>
	                    </div>
	            	</div>
	            </table>
	          	</div>
	        </div>
	    </div>
	</div>
</center>
@stop