<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

		<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="ajax">

		<div class="block">
			<h2>{PHP.R.icon-key}{PHP.L.Rights}</h2>
			<div class="wrapper">

				<div class="btn-group d-block">
					<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" href="{ADMIN_RIGHTS_ADVANCED_URL}">{PHP.R.icon-hand-point-right}{PHP.L.ReadMore}</a>
				</div>

<!-- IF {PHP.g} == 5 -->
				<div class="d-inline-block mt-{PHP.R.admin-button-group-margin}">
					<div class="input-group input-group-sm">
						<label class="input-group-text text-bg-secondary">{PHP.L.adm_copyrightsfrom}:</label>
						<div class="input-group-text">
							<input type="checkbox" class="form-check-input" name="ncopyrightsconf" />
						</div>
						{ADMIN_RIGHTS_SELECTBOX_GROUPS}
						<input type="submit" class="btn {PHP.R.admin-button-primary-class}" value="{PHP.L.Update}" />
					</div>
				</div>
<!-- ENDIF -->

			</div>
		</div>

<!-- BEGIN: RIGHTS_SECTION -->
			<div class="block">
				<h2>{PHP.R.icon-key}{RIGHTS_SECTION_TITLE}</h2>
					<div class="wrapper">
						<div class="{PHP.R.admin-table-responsive-container-class}">
							<table class="{PHP.R.admin-table-class}">
								<thead>
									<tr>
										<th class="w-5" rowspan="2"></th>
										<th class="w-25" rowspan="2">{PHP.L.Section}</th>
										<th class="w-40" colspan="{ADMIN_RIGHTS_ADV_COLUMNS}">{PHP.L.Rights}</th>
										<th class="w-15" rowspan="2">{PHP.L.adm_rightspergroup}</th>
										<th class="w-15" rowspan="2">{PHP.L.adm_setby}</th>
									</tr>
									<tr>
										<th>{PHP.R.admin_icon_auth_r}</th>
										<th>{PHP.R.admin_icon_auth_w}</th>
										<th>{PHP.R.admin_icon_auth_1}</th>
<!-- IF {PHP.advanced} -->
										<th>{PHP.R.admin_icon_auth_2}</th>
										<th>{PHP.R.admin_icon_auth_3}</th>
										<th>{PHP.R.admin_icon_auth_4}</th>
										<th>{PHP.R.admin_icon_auth_5}</th>
<!-- ENDIF -->
										<th>{PHP.R.admin_icon_auth_a}</th>
									</tr>
								</thead>
								<tbody>
<!-- BEGIN: RIGHTS_ROW -->
									<tr class="{PHP.R.admin-table-tr-class}">
										<td>
<!-- IF {ADMIN_RIGHTS_ROW_ICON} -->
											{ADMIN_RIGHTS_ROW_ICON}
<!-- ELSE -->
											{PHP.R.admin_icon_core}
<!-- ENDIF -->
										</td>
										<td>
											<a href="{ADMIN_RIGHTS_ROW_LINK}" class="fw-bold">{ADMIN_RIGHTS_ROW_TITLE}</a>
										</td>
<!-- BEGIN: RIGHTS_ROW_ITEMS -->
										<td>
<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
											<input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
											{PHP.R.admin_icon_discheck1}
<!-- ENDIF -->
<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
											{PHP.R.admin_icon_discheck0}
<!-- ENDIF -->
<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
											<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"{ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
<!-- ENDIF -->
										</td>
<!-- END: RIGHTS_ROW_ITEMS -->
										<td class="action">
											<div class="btn-group">
												<a class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}" title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}">{PHP.R.icon-lock}<span>{PHP.L.Rights}</span></a>
												<a class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}" title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_LINK}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
											</div>
										</td>
										<td>{PHP.R.icon-user} {ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}</td>
									</tr>
<!-- END: RIGHTS_ROW -->
									<tr>
										<td colspan="5">
											<button type="submit" class="submit btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-refresh}{PHP.L.Update}</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
<!-- END: RIGHTS_SECTION -->

			</form>

		</div>
	</div>
	<!-- END: MAIN -->

	<!-- BEGIN: RIGHTS_HELP -->
	<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
	<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
	<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1</p>
	<!-- IF {PHP.advanced} -->
	<p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
	<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
	<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
	<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p>
	<!-- ENDIF -->
	<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
	<!-- END: RIGHTS_HELP -->
