<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" style="border-bottom: 0px;">Selamat datang, <span class="nama"><b><?php echo ucwords($this->session->nama);?>!</b></span></h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- row -->
        <div class="row">

          <div class="col-lg-12">
            <div class="panel panel-default">
              <div class="panel-heading">Peta Progress Listing dan Pencacahan</div>
			  <div class="panel-body">
			  
				<div class="col-lg-6 z-depth-2">
				<br class="visible-xs"/>
				<h3><center><b><span class="nama">Provinsi Bengkulu</span><b></center></h3>
				<center><h5><span class="namakab" ><br></span></h5></center>
				<div id="map"></div>
				  <table class="table table-bordered" id="tabel_listing">
					<thead>
					  <tr>
						<th>Kabupaten / Kota</th>
						<th>Unit Terlisting</th>
						<th>Progress Cacah</th>
					  </tr>

					</thead>
					<tbody>
					</tbody>
				  </table>
				  <br>
				</div>
				<div class="col-lg-6">
				<center><h3><b><span class="namakabterpilih">Kota Bengkulu</span></h3></b></center>
				<center><h5><span class="namakec"><br></span></h5></center>
				<div id="map2"></div>
				<table class="table table-bordered" id="tabel_listing2">
					<thead>
					  <tr>
						<th>Kecamatan</th>
						<th>Unit Terlisting</th>
						
					  </tr>
					</thead>
					<tbody>
					</tbody>
				  </table>
				<br>
				</div>
			  </div>	 
			</div>
          </div>



		  <div class="col-lg-4">
			<div class="panel panel-default">
              <div class="panel-heading">Sisa Hari Listing</div>
              <!-- /.panel-heading -->
              <div class="panel-body">
			 
	              <span id="countDown"></span>
	                  <ul id="example2">
	                    <li><span class="days">00</span><p class="days_text" style="color: #1DE9B6">Hari</p></li>
	                    <li class="seperator">:</li>
	                    <li><span class="hours">00</span><p class="hours_text" style="color: #1DE9B6">Jam</p></li>
	                    <li class="seperator">:</li>
	                    <li><span class="minutes">00</span><p class="minutes_text" style="color: #1DE9B6">Menit</p></li>
	                    <li class="seperator">:</li>
	                    <li><span class="seconds">00</span><p class="seconds_text" style="color: #1DE9B6">Detik</p></li>
	                  </ul>
	              
				</div>
            </div>
		  </div>

          <div class="col-lg-4">
            <div class="panel panel-default">
              <div class="panel-heading">
				  <div class="row">
    					<div class="col-xs-9">
    						Progress Pencacahan
    					</div>
    					<div class="col-xs-3">
    						<a class="pull-right" data-toggle="tooltip" data-placement="top" title="Lihat Detail" href="<?php echo base_url('pkl/progres_cacah')?>"><i class="fa fa-external-link" style="color: white"></i></a>
    					</div>
    				</div>
			  </div>
              <!-- /.panel-heading -->
              <div class="panel-body">
                <div class="row">
                  <div class="col-lg-2"></div>
                  <div class="col-lg-8" id="progress_bar"></div>
                  <div class="col-lg-2"></div>
                </div>
              </div>
            </div>
          </div>

		  
		  <div class="col-lg-4">
			<div class="panel panel-default">
              <div class="panel-heading">Sisa Hari Pencacahan</div>
              <!-- /.panel-heading -->
              <div class="panel-body">
			 
	              <span id="countDown"></span>
	                  <ul id="example">
	                    <li><span class="days">00</span><p class="days_text" style="color: #1DE9B6">Hari</p></li>
	                    <li class="seperator">:</li>
	                    <li><span class="hours">00</span><p class="hours_text" style="color: #1DE9B6">Jam</p></li>
	                    <li class="seperator">:</li>
	                    <li><span class="minutes">00</span><p class="minutes_text" style="color: #1DE9B6">Menit</p></li>
	                    <li class="seperator">:</li>
	                    <li><span class="seconds">00</span><p class="seconds_text" style="color: #1DE9B6">Detik</p></li>
	                  </ul>
	              
				</div>
            </div>
		  </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
