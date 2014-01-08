<!-- BEGIN: MAIN -->
			<div id="admin-other" class="row-fluid">
				<div class="col-md-4">
					<div class="block">
						<h5><i class="fa fa-cog"></i> {PHP.L.Core}</h5>
						<div class="wrapper">
							<table class="table table-striped">
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
										<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" alt="" class="visible-desktop" />
<!-- ENDIF -->
										<a href="{ADMIN_OTHER_URL_CACHE}">{PHP.L.adm_internalcache}</a>
<!-- IF {PHP.R.admin-config-descs} -->
										<p>{PHP.L.adm_internalcache_desc}</p>
<!-- ENDIF -->
									</td>
								</tr>
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
										<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" alt="" class="visible-desktop" />
<!-- ENDIF -->
										<a href="{ADMIN_OTHER_URL_DISKCACHE}">{PHP.L.adm_diskcache}</a>
<!-- IF {PHP.R.admin-config-descs} -->
										<p>{PHP.L.adm_diskcache_desc}</p>
<!-- ENDIF -->
									</td>
								</tr>
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
										<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" alt="" class="visible-desktop" />
<!-- ENDIF -->
										<a href="{ADMIN_OTHER_URL_EXFLDS}">{PHP.L.adm_extrafields}</a>
<!-- IF {PHP.R.admin-config-descs} -->
										<p>{PHP.L.adm_extrafields_desc}</p>
<!-- ENDIF -->
									</td>
								</tr>			
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
										<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" alt="" class="visible-desktop" />
<!-- ENDIF -->
										<a href="{ADMIN_OTHER_URL_LOG}">{PHP.L.adm_log}</a>
<!-- IF {PHP.R.admin-config-descs} -->
										<p>{PHP.L.adm_log_desc}</p>
<!-- ENDIF -->
									</td>
								</tr>
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
										<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" alt="" class="visible-desktop" />
<!-- ENDIF -->
										<a href="{ADMIN_OTHER_URL_INFOS}">{PHP.L.adm_infos}</a>
<!-- IF {PHP.R.admin-config-descs} -->
										<p>{PHP.L.adm_infos_desc}</p>
<!-- ENDIF -->
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
<!-- BEGIN: SECTION -->
				<div class="col-md-4">
					<div class="block">
						<h5><i class="fa fa-puzzle-piece"></i> {ADMIN_OTHER_SECTION}</h5>
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: ROW -->
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
											<img src="<!-- IF {ADMIN_OTHER_EXT_ICO} -->{ADMIN_OTHER_EXT_ICO}<!-- ELSE -->{PHP.cfg.system_dir}/admin/img/plugins32.png<!-- ENDIF -->" alt="" class="visible-desktop" />
<!-- ENDIF -->
											<a href="{ADMIN_OTHER_EXT_URL}">{ADMIN_OTHER_EXT_NAME}</a>
<!-- IF {PHP.R.admin-config-descs} -->
											<p>{ADMIN_OTHER_EXT_DESC}</p>
<!-- ENDIF -->
										</td>
									</tr>
<!-- END: ROW -->
<!-- BEGIN: EMPTY -->
								<tr>
									<td colspan="2">{PHP.L.adm_listisempty}</td>
								</tr>
<!-- END: EMPTY -->
							</table>
						</div>
					</div>
				</div>
<!-- END: SECTION -->
			</div>
<!-- END: MAIN -->