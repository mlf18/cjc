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
          <center><h4 class="title">Seminar Regional 2018</h4></center>
        </div>
        <div class="col-md-4">
          <center><h4 class="title"><a href="#">&nbsp;</a></h4></center>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
        <p>Seminar Regional Tahun 2018<br /> <br />
Dengan Tema : Pembangunan Sektor Strategis Berbasis Pengembangan Wilayah Guna Mendukung Daya
Saing Jawa Tengah<br />
Seminar Regional dikhususkan untuk para peneliti/akademisi/masyarakat ilmiah yang melaksanakan
kegiatan riset di wilayah Jawa Tengah guna mendapatkan masukan rekomendasi yang sesuai dengan
kebutuhan pembangunan daerah Provinsi Jawa Tengah. <br /> 
Seminar regional mengundang para penaliti, praktisi dan pemerhati dari lembaga pemerintah, swasta,
perguruan tinggi, lembaga penelitian, LSM dan lembaga lain untuk mempresentasikan hasil-hasil
penelitian yang lokasi pelaksanaannya di Jawa Tengah dengan topik:<br /> 
<ol type="1">
	<li>Penanggulangan kemiskinan</li>
	<li>Penguatan Daya Saing Ekonomi</li>
	<li>Kualitas hidup dan daya saing SDM</li>
	<li>Pengelolaan SDA, LH dan Penanggulangan Bencana</li>
	<li>Ketahanan pangan dan energi</li>
	<li>Kesenjangan wilayah</li>
	<li>Tata kelola pemerintahan</li>
	<li>Pariwisata dan ekonomi kreatif</li>
</ol>
<br />
Tanggal Penting :<br /><br />
7 Mei 2018 Batas akhir pendaftaran dan penerimaan abstrak
<br /><br />
30 Mei 2018 Pengumuman hasil seleksi abstrak yang dapat dipresentasikan:
<br /><br />
27 Juni 2018 Batas waktu penerimaan makalah lengkap
<br /><br />
25-26 Juli 2018 Pelaksanaan Seminar
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
                      <div class="form-group"> Daftar Seminar Regional 2018
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
<br />
<br />
<section id="team">
      <div class="container">
        <div class="section-header wow fadeInUp">
          <h3>Kerjasama</h3>
          <p>Berikut ini mereka yang sedang bekerjasama dengan pihak kita</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6 wow fadeInUp">
            <div class="member">
              <img src="/BizPage/img/team-1.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Walter White</h4>
                  <span>Chief Executive Officer</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="member">
              <img src="/BizPage/img/team-2.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Sarah Jhonson</h4>
                  <span>Product Manager</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="member">
              <img src="/BizPage/img/team-3.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>William Anderson</h4>
                  <span>CTO</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="member">
              <img src="/BizPage/img/team-4.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Amanda Jepson</h4>
                  <span>Accountant</span>
                  <div class="social">
                    <a href=""><i class="fa fa-twitter"></i></a>
                    <a href=""><i class="fa fa-facebook"></i></a>
                    <a href=""><i class="fa fa-google-plus"></i></a>
                    <a href=""><i class="fa fa-linkedin"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section>
    <br />
@stop