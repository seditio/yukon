<!-- BEGIN: MAIN -->
			<div id="admin-other" class="row">
				<div class="col-lg-4">
					<div class="block">
						<h2>{PHP.R.icon-gears}{PHP.L.Core}</h2>
						<div class="wrapper">
							<div class="{PHP.R.admin-table-responsive-container-class}">
								<table class="{PHP.R.admin-table-class}">
<!-- IF {PHP.usr.admin_config} -->
									<tr>
										<td class="d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{PHP.R.admin_icon_cache}
											</figure>
											<div class="flex-fill">
												<a href="{ADMIN_OTHER_URL_CACHE}" class="d-block fw-bold">
													{PHP.L.adm_internalcache}
												</a>
												<p class="lh-sm mb-0">
													{PHP.L.adm_internalcache_desc}
												</p>
											</div>
										</td>
									</tr>
									<tr>
										<td class="d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{PHP.R.admin_icon_cache_disk}
											</figure>
											<div class="flex-fill">
												<a href="{ADMIN_OTHER_URL_DISKCACHE}" class="d-block fw-bold">
													{PHP.L.adm_diskcache}
												</a>
												<p class="lh-sm mb-0">
													{PHP.L.adm_diskcache_desc}
												</p>
											</div>
										</td>
									</tr>
									<tr>
										<td class="d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{PHP.R.icon_cfg_menus}
											</figure>
											<div>
												<a href="{ADMIN_OTHER_URL_EXFLDS}" class="d-block fw-bold">
													{PHP.L.adm_extrafields}
												</a>
												<p class="lh-sm mb-0">
													{PHP.L.adm_extrafields_desc}
												</p>
											</div>
										</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td class="d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{PHP.R.admin_icon_log}
											</figure>
											<div class="flex-fill">
												<a href="{ADMIN_OTHER_URL_LOG}" class="d-block fw-bold">
													{PHP.L.adm_log}
												</a>
												<p class="lh-sm mb-0">
													{PHP.L.adm_log_desc}
												</p>
											</div>
										</td>
									</tr>
									<tr>
										<td class="d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{PHP.R.icon_cfg_info}
											</figure>
											<div>
												<a href="{ADMIN_OTHER_URL_INFOS}" class="d-block fw-bold">
													{PHP.L.adm_infos}
												</a>
												<p class="lh-sm mb-0">
													{PHP.L.adm_infos_desc}
												</p>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
<!-- BEGIN: SECTION -->
				<div class="col-lg-4">
					<div class="block">
						<h2>{PHP.R.icon-plug}{ADMIN_OTHER_SECTION}</h2>
						<div class="wrapper">
							<div class="{PHP.R.admin-table-responsive-container-class}">
								<table class="{PHP.R.admin-table-class}">
<!-- BEGIN: ROW -->
									<tr>
										<td class="d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{ADMIN_OTHER_EXT_ICON}
											</figure>
											<div class="flex-fill">
												<a href="{ADMIN_OTHER_EXT_URL}" class="d-block fw-bold">
													{ADMIN_OTHER_EXT_NAME}
												</a>
												<p class="lh-sm mb-0">
													{ADMIN_OTHER_EXT_DESC}
												</p>
											</div>
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
				</div>
<!-- END: SECTION -->
			</div>
<!-- END: MAIN -->
