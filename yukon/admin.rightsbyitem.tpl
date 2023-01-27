<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-key}{PHP.L.Rights}</h2>
			<div class="wrapper">
				<form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post" class="ajax">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
							<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}">{PHP.R.icon-hand-point-right}{PHP.L.ReadMore}</a>
						</div>
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-5" rowspan="2"></th>
									<th class="w-25" rowspan="2">{PHP.L.Groups}</th>
									<th class="w-40" colspan="{ADMIN_RIGHTSBYITEM_ADV_COLUMNS}">{PHP.L.Rights}</th>
									<th class="w-15" rowspan="2">{PHP.L.Open}</th>
									<th class="w-15" rowspan="2">{PHP.L.adm_setby}</th>
								</tr>
								<tr>
									<th>{PHP.R.admin_icon_auth_r}</th>
									<th>{PHP.R.admin_icon_auth_w}</th>
<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->
									<th>{PHP.R.admin_icon_auth_1}</th>
<!-- ENDIF -->
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
<!-- BEGIN: RIGHTSBYITEM_ROW -->
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>
										{PHP.R.admin_icon_users}
									</td>
									<td><a href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a></td>
<!-- BEGIN: ROW_ITEMS -->
									<td>
<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
										<input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" />{PHP.R.admin_icon_discheck1}
<!-- ENDIF -->
<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
										{PHP.R.admin_icon_discheck0}
<!-- ENDIF -->
<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
										<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"{ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} />
<!-- ENDIF -->
									</td>
<!-- END: ROW_ITEMS -->
									<td class="action">
										<div class="btn-group">
											<a class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}" title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
											<a class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}" title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{PHP.R.icon-lock}<span>{PHP.L.Rights}</span></a>
										</div>
									</td>
									<td>
										{PHP.R.icon-user} {ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}
									</td>
								</tr>
<!-- END: RIGHTSBYITEM_ROW -->
								<tr>
									<td colspan="{ADMIN_RIGHTSBYITEM_4ADV_COLUMNS}">
										<button type="submit" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">
											{PHP.R.icon-refresh}{PHP.L.Update}
										</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
	<!-- END: MAIN -->

	<!-- BEGIN: RIGHTSBYITEM_HELP -->
	<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
	<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
	<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' -->
	<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.l_custom1}</p>
	<!-- ENDIF -->
	<!-- IF {PHP.advanced} -->
	<p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
	<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
	<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
	<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p>
	<!-- ENDIF -->
	<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
	<!-- END: RIGHTSBYITEM_HELP -->
