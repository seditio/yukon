<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5>{PHP.L.adm_diskcache}</h5>
						<div class="wrapper">
							<div class="btn-group">
								<a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn btn-danger btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-eraser"></i> {PHP.L.adm_purgeall}</a>
								<a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-refresh"></i> {PHP.L.Refresh}</a>
							</div>
							<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width25">{PHP.L.Item}</th>
										<th class="width25">{PHP.L.Files}</th>
										<th class="width25">{PHP.L.Size}</th>
										<th class="width25">{PHP.L.Action}</th>
									</tr>
								</thead>
								<tbody>
<!-- BEGIN: ADMIN_DISKCACHE_ROW -->
									<tr>
										<td class="text-center">{ADMIN_DISKCACHE_ITEM_NAME}</td>
										<td class="text-center">{ADMIN_DISKCACHE_FILES}</td>
										<td class="text-center">{ADMIN_DISKCACHE_SIZE}</td>
										<td class="text-center">
											<a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="ajax btn btn-danger btn-{PHP.R.admin-config-buttonsize2}">
												<i class="fa fa-times"></i> {PHP.L.Delete}
											</a>
										</td>
									</tr>
<!-- END: ADMIN_DISKCACHE_ROW -->
								</tbody>
								<thead>
									<tr class="strong">
										<th class="text-center">{PHP.L.Total}:</th>
										<th class="text-center">{ADMIN_DISKCACHE_CACHEFILES}</th>
										<th class="text-center">{ADMIN_DISKCACHE_CACHESIZE}</th>
										<th class="text-center">&nbsp;</th>
									</tr>
								</thead>
							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->