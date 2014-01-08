<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
<!-- IF {PHP.is_adminwarnings} -->
						<div class="alert alert-warning">
							<h4>{PHP.L.Message}</h4>
							<p>{PHP.L.adm_nogd}</p>
						</div>
<!-- ENDIF -->
						<div class="block">
							<h5><i class="fa fa-floppy-o"></i> {PHP.L.PFS}</h5>
							<div class="wrapper">
							<div class="btn-group">
								<a title="{PHP.L.Configuration}" href="{ADMIN_PFS_URL_CONFIG}" class="btn btn-primary"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
								<a href="{ADMIN_PFS_URL_ALLPFS}" class="btn btn-primary"><i class="fa fa-files-o"></i> {PHP.L.adm_allpfs}</a>
								<a href="{ADMIN_PFS_URL_SFS}" class="btn btn-primary"><i class="fa fa-file-o"></i> {PHP.L.SFS}</a>
							</div>
							</div>
						</div>
						<div class="block">
							<h5><i class="fa fa-floppy-o"></i> {PHP.L.adm_gd}:</h5>
							<div class="wrapper">
								<table class="table table-striped">
<!-- BEGIN: PFS_ROW -->
									<tr>
										<td>{ADMIN_PFS_DATAS_NAME}</td>
										<td class="text-right">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</td>
									</tr>
<!-- END: PFS_ROW -->
								</table>
							</div>
						</div>
				</div>
			</div>
<!-- END: MAIN -->