@extends('template.main')
@section('content')

 <div class="content-wrapper">
	    <div class="container-fluid">
	      <!-- Breadcrumbs-->
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item">
	          <img src="/BizPage/img/speak.png" alt=""><p>Pengumuman Lolos Seleksi Abstrak Regional</p>
	        </li>
	      </ol>
		  <div class="row">
					<div class="col-12">
						<div class="card mb-3">
							<div class="card-header">&nbsp;</div>
							<div class="card-body">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
										<thead>
											<tr>
											  <th>Nama</th>
											  <th>judul</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
											  <th>Nama</th>
											  <th>judul</th>
											</tr>
										</tfoot>
										<tbody>
							
											{{-- @foreach ($profils as $p)
							                <tr>
							                  <td></td>
											  <td>{{ $p->nama }}</td>
							                  <td>{{ $p->judul }}</td>
							                  
							                  	<td>
							                  		@foreach ($p->proposals as $proposal)
							                  		{{ $proposal -> status }}
							                  		@endforeach
												</td>
												<td>
													<a href="{{url('admin/editprofil/'.$p->id)}}" class="btn btn-danger">Lihat</a>
											</tr>
											@endforeach
												 --}}
										</tbody>
								</table>
								<p>*) upload full paper dengan cara download template full paper <a href="">klik disini</a>, setelah itu di edit sesuai dengan format lalu disave dengan word 2003. Kemudian di upload Batas waktu penerimaan makalah lengkap tanggal 27 Juni 2018 <br />
	    <a href="">klik disini</a> untuk upload full paper </p>	
							</div>

						</div>
					</div>
				</div>			
	    </div>
	    <br />

@stop