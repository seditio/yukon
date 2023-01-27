<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-users}{PHP.L.Users}</h2>
			<div class="wrapper">
<!-- BEGIN: ADMIN_USERS_DEFAULT -->
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration}</a>
						<a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-bars}{PHP.L.adm_extrafields}</a>
					</div>
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-55">{PHP.L.Groups}</th>
								<th class="w-10">{PHP.L.Members}</th>
								<th class="w-10">{PHP.L.Enabled}</th>
								<th class="w-25">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: USERS_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td class="text-start d-flex">
<!-- IF {PHP.row.grp_disabled} -->
									<figure class="mt-1 mx-2 mb-0">
										{PHP.R.admin_icon_usergroup0}
									</figure>
<!-- ELSE -->
									<figure class="mt-1 mx-2 mb-0">
										{PHP.R.admin_icon_usergroup1}
									</figure>
<!-- ENDIF -->
									<div class="flex-fill">
										<span class="d-block fw-bold">
											{ADMIN_USERS_ROW_GRP_NAME} (#{ADMIN_USERS_ROW_GRP_ID})
										</span>
										<p class="lh-sm mb-0">
											{ADMIN_USERS_ROW_GRP_DESC}
										</p>
									</div>
								</td>
								<td>{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</td>
								<td>{ADMIN_USERS_ROW_GRP_DISABLED}</td>
								<td class="action">
									<div class="btn-group">
										<a title="{PHP.L.Configuration}" href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" class="ajax btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-gear}<span>{PHP.L.short_config}</span></a>
<!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
										<a title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-lock}<span>{PHP.L.short_rights}</span></a>
<!-- ENDIF -->
										<a title="{PHP.L.Open}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.short_open}</span></a>
									</div>
								</td>
							</tr>
<!-- END: USERS_ROW -->
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="block">
			<h2>{PHP.R.icon-plus}{PHP.L.Add}:</h2>
			<div class="wrapper">
				<form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<tr>
								<td class="w-30">{PHP.L.Name}:</td>
								<td class="w-70">
									{ADMIN_USERS_NGRP_NAME}
									<div class="form-text">{PHP.L.adm_required}</div>
								</td>
							</tr>
							<tr>
								<td>{PHP.L.Title}:</td>
								<td>
									{ADMIN_USERS_NGRP_TITLE}
									<div class="form-text">{PHP.L.adm_required}</div>
								</td>
							</tr>
							<tr>
								<td>{PHP.L.Description}:</td>
								<td>{ADMIN_USERS_NGRP_DESC}</td>
							</tr>
							<tr>
								<td>{PHP.L.Icon}:</td>
								<td>{ADMIN_USERS_NGRP_ICON}</td>
							</tr>
							<tr>
								<td>{PHP.L.Alias}:</td>
								<td>{ADMIN_USERS_NGRP_ALIAS}</td>
							</tr>
<!-- IF {PHP.pfs_is_active} -->
							<tr>
								<td>{PHP.L.adm_maxsizesingle}:</td>
								<td>{ADMIN_USERS_NGRP_PFS_MAXFILE}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_maxsizeallpfs}:</td>
								<td>{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</td>
							</tr>
<!-- ENDIF -->
							<tr>
								<td>{PHP.L.adm_copyrightsfrom}:</td>
								<td>
									{ADMIN_USERS_FORM_SELECTBOX_GROUPS}
									<div class="form-text">{PHP.L.adm_required}</div>
								</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_skiprights}:</td>
								<td>{ADMIN_USERS_NGRP_SKIPRIGHTS}</td>
							</tr>
							<tr>
								<td>{PHP.L.Level}:</td>
								<td>{ADMIN_USERS_NGRP_RLEVEL}</td>
							</tr>
							<tr>
								<td>{PHP.L.Disabled}:</td>
								<td>{ADMIN_USERS_NGRP_DISABLED}</td>
							</tr>
<!-- IF {PHP.hidden_groups} -->
							<tr>
								<td>{PHP.L.Hidden}:</td>
								<td>{ADMIN_USERS_NGRP_HIDDEN}</td>
							</tr>
<!-- ENDIF -->
							<tr>
								<td>{PHP.L.adm_rights_maintenance}:</td>
								<td>{ADMIN_USERS_NGRP_MAINTENANCE}</td>
							</tr>
							<tr>
								<td colspan="2">
									<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-plus}{PHP.L.Add}</button>
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
<!-- END: ADMIN_USERS_DEFAULT -->

<!-- BEGIN: ADMIN_USERS_EDIT -->
		<form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax">
			<div class="{PHP.R.admin-table-responsive-container-class}">
				<table class="{PHP.R.admin-table-class}">
					<tr>
						<td class="w-30">{PHP.L.Name}:</td>
						<td class="w-70">
							{ADMIN_USERS_EDITFORM_GRP_NAME}
							<div class="form-text">{PHP.L.adm_required}</div>
						</td>
					</tr>
					<tr>
						<td>{PHP.L.Title}:</td>
						<td>
							{ADMIN_USERS_EDITFORM_GRP_TITLE}
							<div class="form-text">{PHP.L.adm_required}</div>
						</td>
					</tr>
					<tr>
						<td>{PHP.L.Description}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DESC}</td>
					</tr>
					<tr>
						<td>{PHP.L.Icon}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ICON}</td>
					</tr>
					<tr>
						<td>{PHP.L.Alias}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ALIAS}</td>
					</tr>
<!-- IF {PHP.pfs_is_active} -->
					<tr>
						<td>{PHP.L.adm_maxsizesingle}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_maxsizeallpfs}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</td>
					</tr>
<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Disabled}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DISABLED}</td>
					</tr>
<!-- IF {PHP.hidden_groups} -->
					<tr>
						<td>{PHP.L.Hidden}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_HIDDEN}</td>
					</tr>
<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Level}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_RLEVEL}</td>
					</tr>
					<tr>
						<td>{PHP.L.Members}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}">{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a></td>
					</tr>
					<tr>
						<td>{PHP.L.adm_rights_maintenance}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_skiprights}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}</td>
					</tr>
				</table>
				<div class="btn-group mt-{PHP.R.admin-button-group-margin}">
					<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-refresh}{PHP.L.Update}</button>
<!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
					<a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-lock}{PHP.L.Rights}</a>
<!-- ENDIF -->
<!-- IF {PHP.g} > 5 -->
					<a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="ajax confirmLink btn {PHP.R.admin-button-danger-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-trash}{PHP.L.Delete}</a></td>
<!-- ENDIF -->
				</div>
			</div>
		</form>
<!-- END: ADMIN_USERS_EDIT -->
	</div>
</div>
<!-- END: MAIN -->
