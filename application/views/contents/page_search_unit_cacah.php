<!-- Page Content -->
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Pencarian Unit Cacah</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
    	<div class="col-lg-12">
            <div class="panel panel-default">
            	<div class="panel-heading">
					<div class="row">
						<div class="col-sm-9">
							<h5>Tabel Informasi Unit Cacah</h5>
						</div>
						<div class="col-sm-3">
							<button class="btn btn-link pull-right" id="reload" data-toggle="tooltip" data-placement="top" title="Muat Ulang Tabel"><i class="fa fa-refresh" style="color: white"></i></button>
							<button class="btn btn-link pull-right" id="clear_all" data-toggle="tooltip" data-placement="top" title="Bersihkan Peta"><i class="fa fa-times" style="color: white"></i></button>
						</div>
					</div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                	<div class="panel panel-default">
						<div id="gmap" style="width: 100%; height: 400px;"></div>
					</div>
                    <div class="tab-content">
						<br>
                        	<table width="100%" class="table table-striped table-bordered table-hover" id="tabel_unit_cacah">
	                		<thead>
	                			<tr>
									<th style="vertical-align: middle" rowspan="2">Akurasi</th>
									<th style="vertical-align: middle" rowspan="2">Latitude</th>
									<th style="vertical-align: middle" rowspan="2">Longitude</th>
									<th style="vertical-align: middle" rowspan="2">Wilayah</th>
	                				<th style="vertical-align: middle" rowspan="2">NIM</th>
	                				<th style="vertical-align: middle" rowspan="2">Nama KRT</th>
                                    <th style="vertical-align: middle" rowspan="2">Alamat</th>
                                    <th colspan="3" class="text-center">ART</th>
									<th style="vertical-align: middle" rowspan="2">Tracking</th>
								</tr>
								<tr>
	                				<th>Balita</th>
									<th>3-24</th>
									<th>Total</th>
	                			</tr>
	                		</thead>
	                	</table>
                    </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</div>
<!-- /.wrapper -->
