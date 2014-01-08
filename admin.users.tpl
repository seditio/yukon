<!-- BEGIN: MAIN -->
			<div class="row-fluid">
			<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
				<div class="block">
					<h5><i class="fa fa-group"></i> {PHP.L.Users}</h5>
					<div class="wrapper">
						<div class="btn-group">
							<a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
							<a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-bars"></i> {PHP.L.adm_extrafields}</a>
						</div>
<!-- BEGIN: ADMIN_USERS_DEFAULT -->
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th class="width60">{PHP.L.Groups}</th>
									<th class="width10">{PHP.L.Members}</th>
									<th class="width10">{PHP.L.Enabled}</th>
									<th class="width20">{PHP.L.Action}</th>
								</tr>
							</thead>
							<tbody>
<!-- BEGIN: USERS_ROW -->
								<tr>
									<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
									<!-- IF {PHP.hidden_groups} AND {ADMIN_USERS_ROW_GRP_HIDDEN} == Yes -->{PHP.R.admin_icon_usergroup0}<!-- ELSE -->{PHP.R.admin_icon_usergroup1}<!-- ENDIF -->
<!-- ENDIF -->
										<a href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" class="ajax" title="{PHP.L.Edit}">{ADMIN_USERS_ROW_GRP_NAME} (#{ADMIN_USERS_ROW_GRP_ID})</a>
<!-- IF {PHP.R.admin-config-descs} -->
										<p>{ADMIN_USERS_ROW_GRP_DESC}</p>
<!-- ENDIF -->
									</td>
									<td class="centerall">{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</td>
									<td class="centerall">{ADMIN_USERS_ROW_GRP_DISABLED}</td>
									<td class="action centerall">
										<div class="btn-group">
										<!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
										<a title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-lock"></i> <span>{PHP.L.short_rights}</span></a>
										<!-- ENDIF -->
										<a title="{PHP.L.Open}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-folder-open"></i> <span>{PHP.L.short_open}</span></a>
										</div>
									</td>
								</tr>
<!-- END: USERS_ROW -->
							</tbody>
						</table>
					</div>
				</div>
		
				<div class="block">
					<h5><i class="fa fa-plus-circle"></i> {PHP.L.Add}:</h5>
					<div class="wrapper">
						<form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax">
							<table class="table table-bordered">
								<tr>
									<td class="width30">{PHP.L.Name}:</td>
									<td class="width70">{ADMIN_USERS_NGRP_NAME} {PHP.L.adm_required}</td>
								</tr>
								<tr>
									<td>{PHP.L.Title}:</td>
									<td>{ADMIN_USERS_NGRP_TITLE} {PHP.L.adm_required}</td>
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
									<td>{ADMIN_USERS_FORM_SELECTBOX_GROUPS} {PHP.L.adm_required}</td>
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
									<td class="valid" colspan="2"><button type="submit" class="btn btn-primary"><i class="fa fa-plus-o"></i> {PHP.L.Add}</button></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
<!-- END: ADMIN_USERS_DEFAULT -->

<!-- BEGIN: ADMIN_USERS_EDIT -->
				<form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax">
					<table class="table table-bordered">
						<tr>
							<td class="width30">{PHP.L.Name}:</td>
							<td class="width70">{ADMIN_USERS_EDITFORM_GRP_NAME} {PHP.L.adm_required}</td>
						</tr>
						<tr>
							<td>{PHP.L.Title}:</td>
							<td>{ADMIN_USERS_EDITFORM_GRP_TITLE} {PHP.L.adm_required}</td>
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
<!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
						<tr>
							<td>{PHP.L.Rights}:</td>
							<td><a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize}"><i class="fa fa-lock"></i> {PHP.L.Rights}</a></td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.g} > 5 -->
						<tr>
							<td>{PHP.L.Delete}:</td>
							<td><a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="ajax">{PHP.R.admin_icon_delete}</a></td>
						</tr>
<!-- ENDIF -->
						<tr>
							<td class="valid" colspan="2"><button type="submit" class="btn btn-primary"><i class="fa fa-refresh"></i> {PHP.L.Update}</button></td>
						</tr>
					</table>
				</form>
<!-- END: ADMIN_USERS_EDIT -->
			</div>
			</div>
<!-- END: MAIN -->