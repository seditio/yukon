<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
<!-- IF {PHP.is_adminwarnings} -->
		<div class="alert alert-warning">
			<h4>{PHP.L.Message}</h4>
			<p>{PHP.L.adm_nogd}</p>
		</div>
<!-- ENDIF -->
		<div class="block">
			<h2>{PHP.R.icon-ug}{PHP.L.PFS}</h2>
			<div class="wrapper">
				<div class="btn-group">
					<a title="{PHP.L.Configuration}" href="{ADMIN_PFS_URL_CONFIG}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration}</a>
					<a href="{ADMIN_PFS_URL_ALLPFS}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-file}{PHP.L.adm_allpfs}</a>
					<a href="{ADMIN_PFS_URL_SFS}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-file}{PHP.L.SFS}</a>
				</div>
			</div>
		</div>
		<div class="block">
			<h2>{PHP.R.icon-image}{PHP.L.adm_gd}:</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="table table-striped">
<!-- BEGIN: PFS_ROW -->
						<tr>
							<td class="w-50">{ADMIN_PFS_DATAS_NAME}</td>
							<td class="w-50 text-end">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</td>
						</tr>
<!-- END: PFS_ROW -->
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
