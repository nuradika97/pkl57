<!-- Page Content -->
<div id="page-wrapper">
	<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Analisis Real Time</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

    <div class="row">
        <div class="col-lg-6 col-lg-push-3">
            <div class="panel panel-default">

                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="input-group col-lg-12">
                                <div class="form-group col-lg-12">
                                    <center><h3><span class="nama">Variabel Analisis</span></h3></center>
                                    <br/>
                                    <select class="form-control" id="select_variabel">
        								<option selected disabled value="">Pilih Variabel</option>
                                    </select>
                                </div>
                                <br>
                                <br>
                                <div class="form-group col-lg-12">
                                    <button class="btn btn-default btn-lg btn-block" type="button" id="btn_analisis">Analyze</button>
                                </div>
                            </div>
                        </div>
						<!-- /.col-lg-12 -->
                    </div>
					<!-- /.row -->
                </div>
				<!-- /.panel-body -->
            </div>
			<!-- /.panel -->
		</div>




        <div id="boxplot" class="col-lg-12" style="display: none">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Deteksi Outlier
                </div>
                <!-- /.panel-heading -->
                
                <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div id="myDiv"></div>
                    </div>
                    <div id="statdes" class="col-lg-6" style="display: none">
                        <br/>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Statistik Deskriptif
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <?php $this->load->view('5numbsum'); ?>
                            <!-- /.panel-body -->
                            </div>
            <!-- /.panel -->
                            
                    </div>
                    <br/>
                    </div>
                </div>
                </div>
            <!-- /.panel -->
        </div>
        </div>

        <!-- /.col-lg-4 -->
		<div id="grafik" class="col-lg-12" style="display: none;">
			<div class="panel panel-default">
                <div class="panel-heading">
                    Grafik
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
					<div id="chart_rt" style="height: 500px;"></div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-8 -->
		
		<div id="tabel_outlier" class="col-lg-12" style="display: none;">
			<div class="panel panel-default">
                <div class="panel-heading">
                    Tabel Mahasiswa
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
					<table width="100%" class="col-lg-6" id="tabel_analysis_rt">
		                	<thead>
		                		<tr>
		               				<th>Nama Mahasiswa</th>
		               				<th>Nama Kortim</th>
		               				<th>Variabel</th>
		               			</tr>
		               		</thead>
		           	</table>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		
    </div>

    <!-- /.row -->
</div>
<!-- /#page-wrapper -->
