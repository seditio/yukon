<!-- BEGIN: MAIN -->
			<div class="row-fluid">
			<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: DEFAULT -->
	<div class="block">
		<h5><i class="fa fa-puzzle-piece"></i> {PHP.L.Extcontrol}</h5>
		<div class="wrapper">
			<div class="btn-group item-control">
				<a class="btn btn-{PHP.R.admin-config-buttonsize1} <!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} -->btn-success special<!-- ELSE --> btn-primary<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_ALP_URL}"><i class="fa fa-font"></i> <span>{PHP.L.adm_sort_alphabet}</span></a>
				<a class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1} <!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} -->btn-success special<!-- ELSE --> btn-primary<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_CAT_URL}"><i class="fa fa-sitemap"></i> <span>{PHP.L.adm_sort_category}</span></a>
				<a class="btn btn-{PHP.R.admin-config-buttonsize1} <!-- IF {ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} -->btn-success special" href="{ADMIN_EXTENSIONS_ALL_EXTENSIONS_URL}"<!-- ELSE -->btn-primary" href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}"<!-- ENDIF -->><i class="fa fa-check-square-o"></i> <span>{PHP.L.adm_only_installed}</span></a>
				<a class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}" href="{ADMIN_EXTENSIONS_HOOKS_URL}"><i class="fa fa-code"></i> <span>{PHP.L.Hooks}</span></a>
			</div>
		</div>
	</div>
<!-- BEGIN: SECTION -->
				<div class="block">
					<h5><i class="fa fa-puzzle-piece"></i> {ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h5>
					<div class="wrapper">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th class="width35">{PHP.L.Name} {PHP.L.adm_clicktoedit}</th>
									<th class="width5 hidden-phone">{PHP.L.Code}</th>
									<th class="width5 hidden-phone">{PHP.L.Version}</th>
									<th class="width5 hidden-phone">{PHP.L.Parts}</th>
									<th class="width10">{PHP.L.Status}</th>
									<th class="width40">{PHP.L.Action}</th>
								</tr>
							</thead>
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
								<td colspan="5">{ADMIN_EXTENSIONS_ERROR_MSG}</td>
							</tr>
<!-- END: ROW_ERROR_EXT -->
							<tr>
								<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
									<img src="<!-- IF {ADMIN_EXTENSIONS_ICO} -->{ADMIN_EXTENSIONS_ICO}<!-- ELSE -->{PHP.cfg.system_dir}/admin/img/plugins32.png<!-- ENDIF -->" alt="" />
<!-- ENDIF -->
									<a href="{ADMIN_EXTENSIONS_DETAILS_URL}">{ADMIN_EXTENSIONS_NAME}</a>
<!-- IF {PHP.R.admin-config-descs} -->
									<p>{ADMIN_EXTENSIONS_DESCRIPTION|cot_cutstring($this,60)}</p>
<!-- ENDIF -->
								</td>
								<td class="centerall hidden-phone">{ADMIN_EXTENSIONS_CODE_X}</td>
								<td class="centerall hidden-phone">
<!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
									<span class="highlight_red">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="highlight_green">{ADMIN_EXTENSIONS_VERSION}</span>
<!-- ELSE -->
									{ADMIN_EXTENSIONS_VERSION}
<!-- ENDIF -->
								</td>
								<td class="centerall hidden-phone">{ADMIN_EXTENSIONS_PARTSCOUNT}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_STATUS}</td>
								<td class="action centerall">
									<div class="btn-group">
<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
										<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-cog"></i> <span>{PHP.L.short_config}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.ifstruct} -->
										<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-sitemap"></i> <span>{PHP.L.short_struct}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.totalinstalled} -->
										<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-lock"></i> <span>{PHP.L.short_rights}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.ifthistools} -->
										<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-user"></i> <span>{PHP.L.short_admin}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.if_plg_standalone} -->
										<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-folder-open"></i> <span>{PHP.L.Open}</span></a>
<!-- ENDIF -->
									</div>
								</td>
							</tr>
<!-- END: ROW -->
<!-- BEGIN: ROW_ERROR -->
							<tr>
								<td>{ADMIN_EXTENSIONS_X}</td>
								<td colspan="5">{PHP.L.adm_opt_setup_missing}</td>
							</tr>
<!-- END: ROW_ERROR -->
						</table>
					</div>
				</div>
<!-- END: SECTION -->
<!-- END: DEFAULT -->

<!-- BEGIN: DETAILS -->
				<div class="block">
					<h5><i class="fa fa-puzzle-piece"></i> {ADMIN_EXTENSIONS_TYPE} {ADMIN_EXTENSIONS_NAME}:</h5>
					<div class="wrapper">
<!-- IF {PHP.isinstalled} AND {PHP.exists} -->
						<div class="btn-group">
							<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
							<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-folder-open"></i> {PHP.L.Open}</a>
							<!-- ENDIF -->
							<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
							<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-user"></i> {PHP.L.Administration}</a>
							<!-- ENDIF -->
							<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
							<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-cog"></i> {PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
							<!-- ENDIF -->
							<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" class="btn btn-danger btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-lock"></i> {PHP.L.short_rights}</a>
							<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
							<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-sitemap"></i> {PHP.L.Structure}</a>
							<!-- ENDIF -->
						</div>
<!-- ENDIF -->
						<table class="table table-striped">
							<tr>
								<td class="text-right">{PHP.L.Code}:</td>
								<td class="text-left">{ADMIN_EXTENSIONS_CODE}</td>
							</tr>
							<tr>
								<td class="text-right">{PHP.L.Description}:</td>
								<td class="text-left">{ADMIN_EXTENSIONS_DESCRIPTION}</td>
							</tr>
							<tr>
								<td class="text-right">{PHP.L.Version}:</td>
								<td class="text-left">
									<!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
									<span class="highlight_red">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="highlight_green">{ADMIN_EXTENSIONS_VERSION}</span>
									<!-- ELSE -->
									{ADMIN_EXTENSIONS_VERSION}
									<!-- ENDIF -->
								</td>
							</tr>
							<tr>
								<td class="text-right">{PHP.L.Date}:</td>
								<td class="text-left">{ADMIN_EXTENSIONS_DATE}</td>
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
								<td class="text-right">{PHP.L.Author}:</td>
								<td class="text-left">{ADMIN_EXTENSIONS_AUTHOR}</td>
							</tr>
							<tr>
								<td class="text-right">{PHP.L.Copyright}:</td>
								<td class="text-left">{ADMIN_EXTENSIONS_COPYRIGHT}</td>
							</tr>
							<tr>
								<td class="text-right">{PHP.L.Notes}:</td>
								<td class="text-left">{ADMIN_EXTENSIONS_NOTES}</td>
							</tr>
<!-- BEGIN: DEPENDENCIES -->
							<tr>
								<td class="text-right">{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</td>
								<td>
									<ul class="list-unstyled">
									<!-- BEGIN: DEPENDENCIES_ROW -->
										<li>
											<i class="fa fa-check"></i>
											<a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</a>
										</li>
									<!-- END: DEPENDENCIES_ROW -->
									</ul>
								</td>
							</tr>
<!-- END: DEPENDENCIES -->
							<tr>
								<td class="text-right">{PHP.L.Action}:</td>
								<td>
									<div class="btn-group nomargin">
<!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->
										<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-plus"></i> {PHP.L.adm_opt_install}</a>
<!-- ENDIF -->
<!-- IF {PHP.isinstalled} -->
<!-- IF {PHP.exists} -->
										<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-refresh"></i> {PHP.L.adm_opt_update}</a>
<!-- ENDIF -->
										<a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> {PHP.L.adm_opt_uninstall}</a>
										<a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-pause"></i> {PHP.L.adm_opt_pauseall}</a>
<!-- IF {PHP.exists} -->
										<a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-play"></i> {PHP.L.adm_opt_unpauseall}</a>
<!-- ENDIF -->
<!-- ENDIF -->
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
	
				<div class="block">
					<h5><i class="fa fa-puzzle-piece"></i> {PHP.L.Parts}:</h5>
					<div class="wrapper">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="width5">#</th>
									<th class="width15">{PHP.L.Part}</th>
									<th class="width20">{PHP.L.File}</th>
									<th class="width20">{PHP.L.Hooks}</th>
									<th class="width10">{PHP.L.Order}</th>
									<th class="width15">{PHP.L.Status}</th>
									<th class="width15">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: ROW_ERROR_PART -->
							<tr>
								<td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_X}</td>
								<td colspan="4">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
							</tr>
<!-- END: ROW_ERROR_PART -->
<!-- BEGIN: ROW_PART -->
							<tr>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
								<td class="centerall">
<!-- BEGIN: ROW_PART_NOTINSTALLED -->
									&ndash;
<!-- END: ROW_PART_NOTINSTALLED -->
<!-- BEGIN: ROW_PART_PAUSE -->
									<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-pause"></i> {PHP.L.adm_opt_pause}</a>
<!-- END: ROW_PART_PAUSE -->
<!-- BEGIN: ROW_PART_UNPAUSE -->
									<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-play"></i> {PHP.L.adm_opt_unpause}</a>
<!-- END: ROW_PART_UNPAUSE -->
								</td>
							</tr>
<!-- END: ROW_PART -->
						</table>
					</div>
				</div>
	
				<div class="block">
					<h5><i class="fa fa-puzzle-piece"></i> {PHP.L.Tags}:</h5>
					<div class="wrapper">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="width5">#</th>
									<th class="width25">{PHP.L.Part}</th>
									<th class="width70">{PHP.L.Files} / {PHP.L.Tags}</th>
								</tr>
							</thead>
<!-- BEGIN: ROW_ERROR_TAGS -->
							<tr>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
								<td class="centerall">{PHP.L.None}</td>
							</tr>
<!-- END: ROW_ERROR_TAGS -->
<!-- BEGIN: ROW_TAGS -->
							<tr>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
								<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
								<td>{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</td>
							</tr>
<!-- END: ROW_TAGS -->
						</table>
					</div>
				</div>
<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->
				<div class="block">
					<h5><i class="fa fa-puzzle-piece"></i> {PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h5>
					<div class="wrapper">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="width40">{PHP.L.Hooks}</th>
									<th class="width20">{PHP.L.Plugin}</th>
									<th class="width20">{PHP.L.Order}</th>
									<th class="width20">{PHP.L.Active}</th>
								</tr>
							</thead>
							<tbody>
<!-- BEGIN: HOOKS_ROW -->
								<tr>
									<td>{ADMIN_EXTENSIONS_HOOK}</td>
									<td>{ADMIN_EXTENSIONS_CODE}</td>
									<td class="centerall">{ADMIN_EXTENSIONS_ORDER}</td>
									<td class="centerall">{ADMIN_EXTENSIONS_ACTIVE}</td>
								</tr>
<!-- END: HOOKS_ROW -->
							</tbody>
						</table>
					</div>
				</div>
<!-- END: HOOKS -->
			</div>
			</div>
<!-- END: MAIN -->