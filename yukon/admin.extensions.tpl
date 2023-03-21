<!-- BEGIN: MAIN -->
		<div class="row">
			<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: DEFAULT -->
				<div class="block">
					<h2>{PHP.R.icon-gear}{PHP.L.Sorting}</h2>
					<div class="wrapper">
						<div class="btn-group">
							<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" href="{ADMIN_EXTENSIONS_SORT_ALP_URL}">
								{PHP.R.icon-font}<span>{PHP.L.adm_sort_alphabet}</span>
							</a>
							<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" href="{ADMIN_EXTENSIONS_SORT_CAT_URL}">
								{PHP.R.icon-sitemap}<span>{PHP.L.adm_sort_category}</span>
							</a>
							<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}" href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}">
								{PHP.R.icon-check-square}<span>{PHP.L.adm_only_installed}</span>
							</a>
							<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" href="{ADMIN_EXTENSIONS_HOOKS_URL}">
								{PHP.R.icon-code}<span>{PHP.L.Hooks}</span>
							</a>
						</div>
					</div>
				</div>

<!-- BEGIN: SECTION -->
				<div class="block">
					<h2>{PHP.R.icon-plug}{ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h2>
					<div class="wrapper">
						<div class="{PHP.R.admin-table-responsive-container-class}">
							<table class="{PHP.R.admin-table-class}">
								<thead>
									<tr>
										<th class="w-30">{PHP.L.Name} {PHP.L.adm_clicktoedit}</th>
										<th class="w-10">{PHP.L.Code}</th>
										<th class="w-10">{PHP.L.Version}</th>
										<th class="w-10">{PHP.L.Parts}</th>
										<th class="w-10">{PHP.L.Status}</th>
										<th class="w-30">{PHP.L.Action}</th>
									</tr>
								</thead>
								<tbody>
<!-- BEGIN: ROW -->
<!-- BEGIN: ROW_CAT -->
									<tr>
										<td colspan="6">
											<h4>{ADMIN_EXTENSIONS_CAT_TITLE}</h4>
										</td>
									</tr>
<!-- END: ROW_CAT -->
<!-- BEGIN: ROW_ERROR_EXT -->
									<tr>
										<td>{ADMIN_EXTENSIONS_X_ERR}</td>
										<td colspan="6">{ADMIN_EXTENSIONS_ERROR_MSG}</td>
									</tr>
<!-- END: ROW_ERROR_EXT -->
									<tr class="{PHP.R.admin-table-tr-class}">
										<td class="text-start d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{ADMIN_EXTENSIONS_ICON}
											</figure>
											<div class="flex-fill">
												<a href="{ADMIN_EXTENSIONS_DETAILS_URL}" class="d-block fw-bold">
													{ADMIN_EXTENSIONS_NAME}
												</a>
												<p class="lh-sm mb-0">
													{ADMIN_EXTENSIONS_DESCRIPTION}
												</p>
											</div>
										</td>
										<td>{ADMIN_EXTENSIONS_CODE_X}</td>
										<td>
<!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
											<span class="text-success">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> /
											<span class="text-danger-emphasis">{ADMIN_EXTENSIONS_VERSION}</span>
<!-- ELSE -->
											{ADMIN_EXTENSIONS_VERSION}
<!-- ENDIF -->
										</td>
										<td>{ADMIN_EXTENSIONS_PARTSCOUNT}</td>
										<td>{ADMIN_EXTENSIONS_STATUS}</td>
										<td class="action">
											<div class="btn-group">
<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
												<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-gear}<span>{PHP.L.short_config}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.ifstruct} -->
												<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-sitemap}<span>{PHP.L.short_struct}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.totalinstalled} -->
												<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-lock}<span>{PHP.L.short_rights}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.ifthistools} -->
												<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-user}<span>{PHP.L.short_admin}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.if_plg_standalone} -->
												<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
<!-- ENDIF -->
											</div>
										</td>
									</tr>
<!-- END: ROW -->
<!-- BEGIN: ROW_ERROR -->
									<tr>
										<td>{ADMIN_EXTENSIONS_X}</td>
										<td colspan="6">{PHP.L.adm_opt_setup_missing}</td>
									</tr>
<!-- END: ROW_ERROR -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
<!-- END: SECTION -->
<!-- END: DEFAULT -->

<!-- BEGIN: DETAILS -->
				<div class="block">
					<h2>{PHP.R.icon-plug}{ADMIN_EXTENSIONS_TYPE} {ADMIN_EXTENSIONS_NAME}:</h2>
					<div class="wrapper">
						<div class="{PHP.R.admin-table-responsive-container-class}">

<!-- IF {PHP.isinstalled} AND {PHP.exists} -->
							<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
								<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-folder-open}{PHP.L.Open}</a>
<!-- ENDIF -->
<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
								<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-user}{PHP.L.Administration}</a>
<!-- ENDIF -->
<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
								<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
<!-- ENDIF -->
								<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-lock}{PHP.L.short_rights}</a>
<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
								<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-sitemap}{PHP.L.Structure}</a>
<!-- ENDIF -->
							</div>
<!-- ENDIF -->

						<table class="{PHP.R.admin-table-class}">
							<tr>
								<td class="w-20 text-end">{PHP.L.Code}:</td>
								<td class="w-80 text-start">{ADMIN_EXTENSIONS_CODE}</td>
							</tr>
							<tr>
								<td class="text-end">{PHP.L.Description}:</td>
								<td class="text-start">{ADMIN_EXTENSIONS_DESCRIPTION}</td>
							</tr>
							<tr>
								<td class="text-end">{PHP.L.Version}:</td>
								<td class="text-start">
<!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
									<span class="text-danger">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> /
									<span class="text-success">{ADMIN_EXTENSIONS_VERSION}</span>
<!-- ELSE -->
									{ADMIN_EXTENSIONS_VERSION}
<!-- ENDIF -->
								</td>
							</tr>
							<tr>
								<td class="text-end">{PHP.L.Date}:</td>
								<td class="text-start">{ADMIN_EXTENSIONS_DATE}</td>
							</tr>
<!--//<tr>
	<td>{PHP.L.adm_defauth_guests}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_GUESTS} ({ADMIN_EXTENSIONS_AUTH_GUESTS})</td>
</tr>
<tr>
	<td>{PHP.L.adm_deflock_guests}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_GUESTS} ({ADMIN_EXTENSIONS_LOCK_GUESTS})</td>
</tr>
<tr>
	<td>{PHP.L.adm_defauth_members}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_MEMBERS} ({ADMIN_EXTENSIONS_AUTH_MEMBERS})</td>
</tr>
<tr>
	<td>{PHP.L.adm_deflock_members}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_MEMBERS} ({ADMIN_EXTENSIONS_LOCK_MEMBERS})</td>
</tr>//-->
							<tr>
								<td class="text-end">{PHP.L.Author}:</td>
								<td class="text-start">{ADMIN_EXTENSIONS_AUTHOR}</td>
							</tr>
							<tr>
								<td class="text-end">{PHP.L.Copyright}:</td>
								<td class="text-start">{ADMIN_EXTENSIONS_COPYRIGHT}</td>
							</tr>
							<tr>
								<td class="text-end">{PHP.L.Notes}:</td>
								<td class="text-start">{ADMIN_EXTENSIONS_NOTES}</td>
							</tr>
<!-- BEGIN: DEPENDENCIES -->
							<tr>
								<td class="text-end">{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</td>
								<td>
									<ul class="list-unstyled m-0">
<!-- BEGIN: DEPENDENCIES_ROW -->
										<li>
											{PHP.R.icon-check}
											<a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">
												{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}
											</a>
										</li>
<!-- END: DEPENDENCIES_ROW -->
									</ul>
								</td>
							</tr>
<!-- END: DEPENDENCIES -->
							<tr>
								<td class="text-end">
									{PHP.L.Action}:
								</td>
								<td class="action">
									<div class="btn-group">
<!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->
										<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-plus}<span>{PHP.L.adm_opt_install}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.isinstalled} -->
<!-- IF {PHP.exists} -->
										<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-refresh}<span>{PHP.L.adm_opt_update}</span></a>
<!-- ENDIF -->
										<a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.adm_opt_uninstall}</span></a>
										<a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-pause}<span>{PHP.L.adm_opt_pauseall}</span></a>
<!-- IF {PHP.exists} -->
										<a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-play}<span>{PHP.L.adm_opt_unpauseall}</span></a>
<!-- ENDIF -->
<!-- ENDIF -->
									</div>
								</td>
							</tr>
						</table>
						</div>
					</div>
				</div>

				<div class="block">
					<h2>{PHP.R.icon-code}{PHP.L.Parts}:</h2>
					<div class="wrapper">
						<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-5">#</th>
									<th class="w-15">{PHP.L.Part}</th>
									<th class="w-20">{PHP.L.File}</th>
									<th class="w-20">{PHP.L.Hooks}</th>
									<th class="w-10">{PHP.L.Order}</th>
									<th class="w-15">{PHP.L.Status}</th>
									<th class="w-15">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: ROW_ERROR_PART -->
							<tr>
								<td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_X}</td>
								<td colspan="4">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
							</tr>
<!-- END: ROW_ERROR_PART -->
<!-- BEGIN: ROW_PART -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
								<td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
								<td>{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
								<td>{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
								<td>{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
								<td>{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
								<td class="action">
<!-- BEGIN: ROW_PART_NOTINSTALLED -->
									&ndash;
<!-- END: ROW_PART_NOTINSTALLED -->
									<div class="btn-group">
<!-- BEGIN: ROW_PART_PAUSE -->
										<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-pause}<span>{PHP.L.adm_opt_pause}</span></a>
<!-- END: ROW_PART_PAUSE -->
<!-- BEGIN: ROW_PART_UNPAUSE -->
										<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-play}<span>{PHP.L.adm_opt_unpause}</span></a>
<!-- END: ROW_PART_UNPAUSE -->
									</div>
								</td>
							</tr>
<!-- END: ROW_PART -->
						</table>
						</div>
					</div>
				</div>

				<div class="block">
					<h2>{PHP.R.icon-code}{PHP.L.Tags}:</h2>
					<div class="wrapper">
						<div class="{PHP.R.admin-table-responsive-container-class}">
							<table class="{PHP.R.admin-table-class}">
								<thead>
									<tr>
										<th class="w-5">#</th>
										<th class="w-15">{PHP.L.Part}</th>
										<th class="w-80">{PHP.L.Files} / {PHP.L.Tags}</th>
									</tr>
								</thead>
<!-- BEGIN: ROW_ERROR_TAGS -->
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
									<td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
									<td>{PHP.L.None}</td>
								</tr>
<!-- END: ROW_ERROR_TAGS -->
<!-- BEGIN: ROW_TAGS -->
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
									<td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
									<td>{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</td>
								</tr>
<!-- END: ROW_TAGS -->
							</table>
						</div>
					</div>
				</div>
<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->
				<div class="block">
					<h2>{PHP.R.icon-code}{PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h2>
					<div class="wrapper">
						<div class="{PHP.R.admin-table-responsive-container-class}">
							<table class="{PHP.R.admin-table-class}">
								<thead>
									<tr>
										<th class="w-25">{PHP.L.Hooks}</th>
										<th class="w-25">{PHP.L.Plugin}</th>
										<th class="w-25">{PHP.L.Order}</th>
										<th class="w-25">{PHP.L.Active}</th>
									</tr>
								</thead>
								<tbody>
<!-- BEGIN: HOOKS_ROW -->
									<tr class="{PHP.R.admin-table-tr-class}">
										<td>{ADMIN_EXTENSIONS_HOOK}</td>
										<td>{ADMIN_EXTENSIONS_CODE}</td>
										<td>{ADMIN_EXTENSIONS_ORDER}</td>
										<td>{ADMIN_EXTENSIONS_ACTIVE}</td>
									</tr>
<!-- END: HOOKS_ROW -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
<!-- END: HOOKS -->

			</div>
		</div>
<!-- END: MAIN -->
