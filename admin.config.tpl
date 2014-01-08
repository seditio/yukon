<!-- BEGIN: MAIN -->
			<div id="admin-config" class="row-fluid">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: EDIT -->
					<div class="col-md-12">
					<div class="block">
						<h5><i class="fa fa-cogs"></i> {PHP.L.Configuration}</h5>
						<div class="wrapper">
{ADMIN_CONFIG_EDIT_CUSTOM}
							<form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
								<div class="btn-group">
									<button type="submit" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-refresh"></i> {PHP.L.Update}</button>
								</div>
								<table class="table table-bordered">
									<thead>
										<tr>
											<th class="width45">{PHP.L.Parameter}</th>
											<th class="width40">{PHP.L.Value}</th>
											<th class="width15">{PHP.L.Action}</th>
										</tr>
									</thead>
<!-- BEGIN: ADMIN_CONFIG_ROW -->
<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
									<tr>
										<td class="group_begin" colspan="3">
											<h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
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
										<td class="action centerall">
											<div class="btn-group">
												<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn btn-default btn-{PHP.R.admin-config-buttonsize2}">
													<i class="fa fa-refresh"></i> <span>{PHP.L.Reset}</span>
												</a>
											</div>
										</td>
									</tr>
<!-- END: ADMIN_CONFIG_ROW_OPTION -->
<!-- BEGIN: ADMIN_CONFIG_FIELDSET_END -->
									<tr>
										<td class="group_end" colspan="3"></td>
									</tr>
<!-- END: ADMIN_CONFIG_FIELDSET_END -->
<!-- END: ADMIN_CONFIG_ROW -->
								</table>
							</form>
						</div>
					</div>
					</div>
<!-- END: EDIT -->

<!-- BEGIN: DEFAULT -->
<!-- BEGIN: ADMIN_CONFIG_COL -->
				<div class="col-md-4">
					<div class="block">
						<h5><i class="fa fa-cog"></i> {ADMIN_CONFIG_COL_CAPTION}:</h5>
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: ADMIN_CONFIG_ROW -->
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
										<img src="<!-- IF {ADMIN_CONFIG_ROW_ICO} -->{ADMIN_CONFIG_ROW_ICO}<!-- ELSE -->{PHP.cfg.system_dir}/admin/img/plugins32.png<!-- ENDIF -->" alt="" class="visible-desktop" />
<!-- ENDIF -->
										<a href="{ADMIN_CONFIG_ROW_URL}" class="ajax thumbicons large strong">{ADMIN_CONFIG_ROW_NAME}</a>
<!-- IF {PHP.R.admin-config-descs} -->
										<p class="small">{ADMIN_CONFIG_ROW_DESC}</p>
<!-- ENDIF -->
									</td>
								</tr>
<!-- END: ADMIN_CONFIG_ROW -->
							</table>
						</div>
					</div>
				</div>
<!-- END: ADMIN_CONFIG_COL -->
<!-- END: DEFAULT -->

<!-- END: MAIN -->