<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5>{PHP.L.Rights}</h5>
						<div class="wrapper">
							<div class="btn-group">
								<a class="btn btn-primary" href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}"><i class="fa fa-hand-o-right"></i> {PHP.L.ReadMore}</a>
								
							</div>
							<form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post" class="ajax">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th class="width5" rowspan="2"></th>
											<th class="width25" rowspan="2">{PHP.L.Groups}</th>
											<th class="width40" colspan="{ADMIN_RIGHTSBYITEM_ADV_COLUMNS}">{PHP.L.Rights}</th>
											<th class="width15" rowspan="2">{PHP.L.Open}</th>
											<th class="width15" rowspan="2">{PHP.L.adm_setby}</th>
										</tr>
										<tr>
											<th class="">{PHP.R.admin_icon_auth_r}</th>
											<th class="">{PHP.R.admin_icon_auth_w}</th>
											<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' --><th class="">{PHP.R.admin_icon_auth_1}</th><!-- ENDIF -->
											<!-- IF {PHP.advanced} --><th class="">{PHP.R.admin_icon_auth_2}</th>
											<th class="">{PHP.R.admin_icon_auth_3}</th>
											<th class="">{PHP.R.admin_icon_auth_4}</th>
											<th class="">{PHP.R.admin_icon_auth_5}</th><!-- ENDIF -->
											<th class="">{PHP.R.admin_icon_auth_a}</th>
										</tr>
									</thead>
									<tbody>
<!-- BEGIN: RIGHTSBYITEM_ROW -->
										<tr>
											<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/users.png"/></td>
											<td><a href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a></td>
<!-- BEGIN: ROW_ITEMS -->
											<td class="centerall">
												<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} --><input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" />
												{PHP.R.admin_icon_discheck1}<!-- ENDIF -->
												<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->{PHP.R.admin_icon_discheck0}<!-- ENDIF -->
												<!-- IF !{PHP.out.tpl_rights_parseline_locked} --><input type="checkbox" class="checkbox" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"{ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} /><!-- ENDIF -->
											</td>
<!-- END: ROW_ITEMS -->
											<td class="centerall">
												<div class="btn-group">
												<a class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}" title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}"><i class="fa fa-folder-open"></i> {PHP.L.Open}</a>
												<a class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}" title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}"><i class="fa fa-lock"></i> {PHP.L.Rights}</a> </td>
												</div>
											<td class="text-center">{ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}</td>
										</tr>
<!-- END: RIGHTSBYITEM_ROW -->
										<tr>
											<td colspan="{ADMIN_RIGHTSBYITEM_4ADV_COLUMNS}"><button type="submit" class="submit btn btn-danger"><i class="fa fa-refresh"></i> {PHP.L.Update}</button></td>
										</tr>
									</tbody>
								</table>
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