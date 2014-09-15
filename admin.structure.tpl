<!-- BEGIN: LIST -->
			<div class="row-fluid">
			<div class="col-md-12">
				<div class="block">
					<h5><i class="fa fa-sitemap"></i> {PHP.L.Modules}</h5>
					<div class="wrapper">
						<div class="row-fluid">
<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
							<div class="col-md-6"><a class="btn btn-large btn-block btn-primary indent-bottom" href="{ADMIN_STRUCTURE_EXT_URL}"><i class="fa fa-sitemap"></i> {ADMIN_STRUCTURE_EXT_NAME}</a></div>
<!-- END: ADMIN_STRUCTURE_EXT -->
<!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
							{PHP.L.adm_listisempty}
<!-- END: ADMIN_STRUCTURE_EMPTY -->
						</div>
					</div>
				</div>
			</div>
			</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
			<div class="row-fluid">
			<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
				<div class="block">
					<h5><i class="fa fa-sitemap"></i> {PHP.L.Structure}</h5>
					<div class="wrapper">
						<div class="btn-group">
							<a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn btn-primary"><i class="fa fa-cog"></i> {PHP.L.adm_extrafields}</a>
							<a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax btn btn-primary" title="{PHP.L.adm_tpl_resyncalltitle}"><i class="fa fa-refresh"></i> {PHP.L.Resync}</a>
<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
							<a href="{ADMIN_STRUCTURE_I18N_URL}" class="button">{PHP.L.i18n_structure}</a>
<!-- ENDIF -->
						</div>
<!-- BEGIN: OPTIONS -->
						<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
							<table class="table table-bordered table-hover">
								<tr>
									<td class="coltop width25">{PHP.L.Parameter}</td>
									<td class="coltop width75">{PHP.L.Value}</td>
								</tr>
								<tr>
									<td class="">{PHP.L.Path}:</td>
									<td class="">{ADMIN_STRUCTURE_PATH}</td>
								</tr>
								<tr>
									<td>{PHP.L.Code}:</td>
									<td>{ADMIN_STRUCTURE_CODE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Title}:</td>
									<td>{ADMIN_STRUCTURE_TITLE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Description}:</td>
									<td>{ADMIN_STRUCTURE_DESC}</td>
								</tr>
								<tr>
									<td>{PHP.L.Icon}:</td>
									<td>{ADMIN_STRUCTURE_ICON}</td>
								</tr>
								<tr>
									<td>{PHP.L.Locked}:</td>
									<td>{ADMIN_STRUCTURE_LOCKED}</td>
								</tr>
								<tr>
									<td>{PHP.L.adm_tpl_mode}:</td>
									<td>
										{ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}<br />
										{PHP.L.adm_tpl_quickcat}: {ADMIN_STRUCTURE_TPLQUICK}
									</td>
								</tr>
<!-- BEGIN: EXTRAFLD -->
								<tr>
									<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
									<td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_EXTRAFLD}</td>
								</tr>
<!-- END: EXTRAFLD -->
							</table>

<!-- BEGIN: CONFIG -->
{CONFIG_HIDDEN}
{ADMIN_CONFIG_EDIT_CUSTOM}
							<table class="table table-bordered table-hover">
								<tr>
									<td class="coltop width25">{PHP.L.Parameter}</td>
									<td class="coltop width65">{PHP.L.Value}</td>
									<td class="coltop width10">{PHP.L.Reset}</td>
								</tr>
<!-- BEGIN: ADMIN_CONFIG_ROW -->
<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
								<tr>
									<td class="group_begin" colspan="3">
										<h6>{ADMIN_CONFIG_FIELDSET_TITLE}</h6>
									</td>
								</tr>
<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
								<tr>
									<td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
									<td>
										{ADMIN_CONFIG_ROW_CONFIG}
										<div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
									</td>
									<td class="centerall">
										<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn btn-small">
											<i class="fa fa-refresh"></i> {PHP.L.Reset}
										</a>
									</td>
								</tr>
<!-- END: ADMIN_CONFIG_ROW_OPTION -->
<!-- END: ADMIN_CONFIG_ROW -->
							</table>
<!-- END: CONFIG -->
							<div class="btn-group">
								<button type="submit" class="btn btn-primary"><i class="fa fa-refresh"></i> {PHP.L.Update}</button>
							</div>
						</form>
<!-- END: OPTIONS -->

<!-- BEGIN: DEFAULT -->
					<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th class="width10">{PHP.L.Path}</th>
									<th class="width15">{PHP.L.Code}</th>
									<th class="width20">{PHP.L.Title}</th>
									<th class="width10">{PHP.L.TPL}</th>
									<th class="width10">{PHP.L.Pages}</th>
									<th class="width35">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: ROW -->
							<tr>
								<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_PATH}</td>
								<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_CODE}</td>
								<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TITLE}</td>
								<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TPLQUICK}</td>
								<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_COUNT}</td>
								<td class="action {ADMIN_STRUCTURE_ODDEVEN} centerall">
									<div class="btn-group">
									<a href="{ADMIN_STRUCTURE_OPTIONS_URL}" title="{PHP.L.Config}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-cog"></i> {PHP.L.short_config}</a>
									<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} --><a title="{PHP.L.Rights}" href="{ADMIN_STRUCTURE_RIGHTS_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-lock"></i> {PHP.L.short_rights}</a><!-- ENDIF -->
									<!-- IF {PHP.dozvil} --><a title="{PHP.L.Delete}" href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" class="confirmLink btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> {PHP.L.short_delete}</a><!-- ENDIF -->
									<a href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.Pages}" class="button btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-folder-open"></i> {PHP.L.short_open}</a> 
									</div>
								</td>
							</tr>
<!-- END: ROW -->
							<tr>
								<td class="valid" colspan="6"><button type="submit" class="btn btn-success"><i class="fa fa-refresh"></i> {PHP.L.Update}</button></td>
							</tr>
						</table>
					</form>
					<p class="text-center">{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_STRUCTURE_COUNTER_ROW}</p>
<!-- IF {ADMIN_STRUCTURE_PAGNAV} -->
					<div class="text-{PHP.R.admin-config-pagialign}">
						<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT}</ul>
					</div>
<!-- ENDIF -->
<!-- END: DEFAULT -->

				</div>
				</div>

<!-- BEGIN: NEWCAT -->
				<div class="block">
					<h5><i class="fa fa-plus-circle"></i> {PHP.L.Add}:</h5>
					<div class="wrapper">
						<form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
							<table class="table table-bordered table-hover">
								<tr>
									<td class="width20">{PHP.L.Path}:</td>
									<td class="width80">{ADMIN_STRUCTURE_PATH} {PHP.L.adm_required}</td>
								</tr>
								<tr>
									<td>{PHP.L.Code}:</td>
									<td>{ADMIN_STRUCTURE_CODE} {PHP.L.adm_required}</td>
								</tr>
								<tr>
									<td>{PHP.L.Title}:</td>
									<td>{ADMIN_STRUCTURE_TITLE} {PHP.L.adm_required}</td>
								</tr>
								<tr>
									<td>{PHP.L.Description}:</td>
									<td>{ADMIN_STRUCTURE_DESC}</td>
								</tr>
								<tr>
									<td>{PHP.L.Icon}:</td>
									<td>{ADMIN_STRUCTURE_ICON}</td>
								</tr>
								<tr>
									<td>{PHP.L.Locked}:</td>
									<td>{ADMIN_STRUCTURE_LOCKED}</td>
								</tr>
								<!-- BEGIN: EXTRAFLD -->
								<tr>
									<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
									<td>{ADMIN_STRUCTURE_EXTRAFLD}</td>
								</tr>
								<!-- END: EXTRAFLD -->
								<tr>
									<td class="valid" colspan="2">
										<button type="submit" class="btn btn-success"><i class="fa fa-plus-circle"></i> {PHP.L.Add}</button>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
<!-- END: NEWCAT -->
			</div>
			</div>
<!-- END: MAIN -->