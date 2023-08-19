<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<!-- BEGIN: EDIT -->
			<div id="admin-config" class="row">
				<div class="col-12">
					<div class="block">
						<h2>{PHP.R.icon-gear}{PHP.L.Configuration}</h2>
						<div class="wrapper">
{ADMIN_CONFIG_EDIT_CUSTOM}
							<form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
								<div class="{PHP.R.admin-table-responsive-container-class}">
									<table class="{PHP.R.admin-table-class}">
									<thead>
										<tr>
											<th class="w-30">{PHP.L.Parameter}</th>
											<th class="w-55">{PHP.L.Value}</th>
											<th class="w-15">{PHP.L.Action}</th>
										</tr>
									</thead>
									<tbody>
<!-- BEGIN: ADMIN_CONFIG_ROW -->
<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
										<tr>
											<td class="group_begin px-0 py-3 border-end-0 border-start-0" colspan="3">
												<h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
											</td>
										</tr>
<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
										<tr class="{PHP.R.admin-table-tr-class}">
											<td class="text-start">{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
											<td class="text-start">
												{ADMIN_CONFIG_ROW_CONFIG}
												<div class="form-text">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
											</td>
											<td class="action">
												<div class="btn-group">
													<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">
														{PHP.R.icon-refresh}<span>{PHP.L.Reset}</span>
													</a>
												</div>
											</td>
										</tr>
<!-- END: ADMIN_CONFIG_ROW_OPTION -->
<!-- BEGIN: ADMIN_CONFIG_FIELDSET_END -->
<!-- END: ADMIN_CONFIG_FIELDSET_END -->
<!-- END: ADMIN_CONFIG_ROW -->
									<tr>
										<td class="group_end" colspan="3">
											<div class="btn-group">
												<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-refresh}{PHP.L.Update}</button>
<!-- IF {PHP.o} == plug -->
												<a href="{PHP.p|cot_url('admin','m=extensions&a=details&pl=$this')}" class="btn {PHP.R.admin-button-success-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-backward}{PHP.L.Back}</a>
<!-- ENDIF -->
											</div>
										</td>
									</tr>
								</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- END: EDIT -->

<!-- BEGIN: DEFAULT -->
			<div class="row">
<!-- BEGIN: ADMIN_CONFIG_COL -->
				<div class="col-lg-4">
					<div class="block">
						<h2>{PHP.R.icon-gear}{ADMIN_CONFIG_COL_CAPTION}:</h2>
						<div class="wrapper">
							<div class="{PHP.R.admin-table-responsive-container-class}">
								<table class="{PHP.R.admin-table-class}">
<!-- BEGIN: ADMIN_CONFIG_ROW -->
									<tr>
										<td class="d-flex">
											<figure class="mt-1 mx-2 mb-0">
												{ADMIN_CONFIG_ROW_ICON}
											</figure>
											<div class="flex-fill">
												<a href="{ADMIN_CONFIG_ROW_URL}" class="ajax fw-bold d-block">
													{ADMIN_CONFIG_ROW_NAME}
												</a>
												<p class="lh-sm mb-0">
													{ADMIN_CONFIG_ROW_DESC}
												</p>
											</div>
										</td>
									</tr>
<!-- END: ADMIN_CONFIG_ROW -->
								</table>
							</div>
						</div>
					</div>
				</div>
<!-- END: ADMIN_CONFIG_COL -->
			</div>
<!-- END: DEFAULT -->

<!-- END: MAIN -->
