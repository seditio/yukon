<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<!-- BEGIN: CSV_UPLOAD_FORM -->
		<div class="block">
			<h2>{PHP.R.icon-plug}{CSV_TITLE}</h2>
			<div class="wrapper">
				<form method="post" action="{CSV_IMPORT}" enctype="multipart/form-data">
					<table class="table table-bordered">
						<tr>
							<td>
								<input class="file" type="file" size="24" name="userfile[0]">
							</td>
						</tr>
						<tr>
							<td>
								{CSV_IMP_UPD}
							</td>
						</tr>
						<tr>
							<td>
								<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-upload}{PHP.L.Upload}</button>
							</td>
						</tr>
						<tr>
							<td>
								<div class="btn-group">
									<a href="admin.php?m=other&p=csv_import&a=export&tpl=comp&cat=companies" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-file-export}Экспорт всех компаний</a>
									<a href="admin.php?m=other&p=csv_import&a=export&tpl=ret&cat=retail" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-file-export}Экспорт розницы</a>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
<!-- END: CSV_UPLOAD_FORM -->
	</div>
</div>
<!-- END: MAIN -->
