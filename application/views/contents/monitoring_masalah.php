<!-- DataTables CSS -->
<style type="text/css">
    td.details-control {
        background: url('<?php echo base_url('resources/images/details_open.png'); ?>') no-repeat center center;
        cursor: pointer;
    }
    tr.shown td.details-control {
        background: url('<?php echo base_url('resources/images/details_close.png'); ?>') no-repeat center center;
    }
    .dataTables_wrapper .dt-buttons {
      float:none;
      text-align:right;
      font-size: 15px;
      height: 25px;
    }
</style>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="row">
        <div class="col-sm-12">
            <h1 class="page-header">Monitoring Masalah Lapangan 
			<?php
			 if (($this->session->level) > 2){
				 $this->load->view('frames/tombolfaq');
			 }
			 ?>
			 </h1>
        </div>
    </div>

		<?=$this->session->flashdata('notif')?>
	
    <div class="row">
        <div class="col-sm-12">
            <div class ="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-sm-9">
                            <h5>List Pertanyaan</h5>
                        </div>
                        <div class="col-sm-3">
                            <button class="btn btn-link pull-right" data-toggle="tooltip" data-placement="top" title="Muat Ulang Tabel" id="reload"><i class="fa fa-refresh" style="color: white"></i></button>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="adv-table">
                    <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="table_monitoring">
                        <thead>
                            <tr>
                                <th>Pertanyaan</th>
                                <th>Jawaban</th>
								<th>Kategori</th>
                                <th>Waktu</th>
								
                            </tr>
                        </thead>
                    </table>
                    </div>
                </div>
                </div>
                </div>
        </div>
        <!-- /.row -->
</div>

	<!-- Modal Tambah -->
	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="tambah-data" class="modal fade">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	                <h4 class="modal-title">Tambah FAQ</h4>
	            </div>
	            <form class="form-horizontal" action="<?php echo base_url('server/insert_masalah')?>" method="post" enctype="multipart/form-data" role="form">
		            <div class="modal-body">
		                    <div class="form-group">
		                        <label class="col-lg-2 col-sm-2 control-label">Pertanyaan</label>
		                        <div class="col-lg-10">
		                            <textarea class="form-control" name="pertanyaan" placeholder="Tuliskan pertanyaan"></textarea>
		                        </div>
		                    </div>
		                    <div class="form-group">
		                        <label class="col-lg-2 col-sm-2 control-label">Jawaban</label>
		                        <div class="col-lg-10">
		                        	<textarea class="form-control" name="jawaban" placeholder="Masukkan jawaban"></textarea>
		                        </div>
		                    </div>
		                    <div class="form-group">
		                        <label class="col-lg-2 col-sm-2 control-label">Kategori</label>
		                        <div class="col-lg-10">
		                            <select name="kategori">
									  <option value="1">Listing</option>
									  <option value="2">Kuesioner</option>
									  <option value="5">Konsep dan definisi</option>
									  <option value="3">IT</option>
									  <option value="4">Administrasi</option>
									  <option value="6">Lainnya</option>
									</select>
		                        </div>
		                    </div>
		                </div>
		                <div class="modal-footer">
		                    <button class="btn btn-info" type="submit"> Simpan&nbsp;</button>
		                    <button type="button" class="btn btn-warning" data-dismiss="modal"> Batal</button>
		                </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
	
	<!-- END Modal Tambah -->
<!-- /#page-wrapper -->
