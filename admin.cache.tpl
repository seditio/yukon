<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5>{PHP.L.adm_internalcache}</h5>
						<div class="wrapper">
							<div class="btn-group">
								<a href="{ADMIN_CACHE_URL_PURGE}" class="ajax btn btn-danger btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-eraser"></i> {PHP.L.adm_purgeall}</a>
								<a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-refresh"></i> {PHP.L.Refresh}</a>
								<a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-check-square-o"></i> {PHP.L.adm_cache_showall}</a>
							</div>
<!-- BEGIN: ADMIN_CACHE_MEMORY -->
							<h6>{ADMIN_CACHE_MEMORY_DRIVER}</h6>
							<p>
								<div class="bar_back">
									<div class="bar_front" style="width:{ADMIN_CACHE_MEMORY_PERCENTBAR}%;"></div>
								</div>
								{PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}
							</p>
<!-- END: ADMIN_CACHE_MEMORY -->
							<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width20">{PHP.L.Item}</th>
										<th class="width10">{PHP.L.Expire}</th>
										<th class="width10">{PHP.L.Size}</th>
										<th class="width50">{PHP.L.Value}</th>
										<th class="width10">{PHP.L.Action}</th>
									</tr>
								</thead>
								<tbody>
<!-- BEGIN: ADMIN_CACHE_ROW -->
									<tr>
										<td class="text-center">{ADMIN_CACHE_ITEM_NAME}</td>
										<td class="text-center">{ADMIN_CACHE_EXPIRE}</td>
										<td class="text-center">{ADMIN_CACHE_SIZE}</td>
										<td class="text-center">{ADMIN_CACHE_VALUE}</td>
										<td class="text-center">
											<a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="ajax btn btn-danger btn-{PHP.R.admin-config-buttonsize2}">
												<i class="fa fa-times"></i> {PHP.L.Delete}
											</a>
										</td>
									</tr>
<!-- END: ADMIN_CACHE_ROW -->
								</tbody>
								<thead>
									<tr class="strong">
										<th class="textcenter">{PHP.L.Total}:</th>
										<th>&nbsp;</th>
										<th class="textcenter">{ADMIN_CACHE_CACHESIZE}</th>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->