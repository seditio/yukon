<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-bar-chart-o"></i> {PHP.L.Polls}</h5>
						<div class="wrapper">

							<div class="btn-group">
								<a title="{PHP.L.Configuration}" href="{ADMIN_POLLS_CONF_URL}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
							</div>
							<h6>{PHP.L.poll}:</h6>
						
							<select name="jumpbox" size="1" onchange="redirect(this)" class="marginbottom10 margintop10">
<!-- BEGIN: POLLS_ROW_FILTER -->
								<option value="{ADMIN_POLLS_ROW_FILTER_VALUE}"{ADMIN_POLLS_ROW_FILTER_CHECKED}>{ADMIN_POLLS_ROW_FILTER_NAME}</option>
<!-- END: POLLS_ROW_FILTER -->
							</select>
	
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width10">{PHP.L.Date}</th>
										<th class="width10">{PHP.L.Type}</th>
										<th class="width35">{PHP.L.Poll} {PHP.L.adm_clicktoedit}</th>
										<th class="width10">{PHP.L.Votes}</th>
										<th class="width35">{PHP.L.Action}</th>
									</tr>
								</thead>
<!-- BEGIN: POLLS_ROW -->
								<tr>
									<td class="text-center">{ADMIN_POLLS_ROW_POLL_CREATIONDATE}</td>
									<td class="text-center">{ADMIN_POLLS_ROW_POLL_TYPE}</td>
									<td class="text-center">{ADMIN_POLLS_ROW_POLL_LOCKED}<a href="{ADMIN_POLLS_ROW_POLL_URL}">{ADMIN_POLLS_ROW_POLL_TEXT}</a></td>
									<td class="text-center">{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</td>
									<td class="action centerall">
										<div class="btn-group">
<!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
											<a title="{PHP.L.Lock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-lock"></i> {PHP.L.Lock}</a>
<!-- ELSE -->
											<a title="{PHP.L.Unlock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-unlock"></i> {PHP.L.Unlock}</a>
<!-- ENDIF -->
											<a title="{PHP.L.Delete}" href="{ADMIN_POLLS_ROW_POLL_URL_DEL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> {PHP.L.Delete}</a>
											<a title="{PHP.L.Reset}" href="{ADMIN_POLLS_ROW_POLL_URL_RES}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-refresh"></i> {PHP.L.Reset}</a>
											<a title="{PHP.L.adm_polls_bump}" href="{ADMIN_POLLS_ROW_POLL_URL_BMP}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-arrow-circle-up"></i> {PHP.L.adm_polls_bump}</a>
											<a title="{PHP.L.Open}" href="{ADMIN_POLLS_ROW_POLL_URL_OPN}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-folder-open"></i> {PHP.L.Open}</a>
										</div>
									</td>
								</tr>
<!-- END: POLLS_ROW -->
<!-- BEGIN: POLLS_ROW_EMPTY -->
								<tr>
									<td colspan="5" class="text-center">{PHP.L.adm_polls_nopolls}</td>
								</tr>
<!-- END: POLLS_ROW_EMPTY -->
							</table>
							<p class="text-center">{PHP.L.Total}: {ADMIN_POLLS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_POLLS_ON_PAGE}</p>
<!-- IF {ADMIN_POLLS_PAGNAV} -->
							<div class="pagination pagination-{PHP.R.admin-config-pagisize} pagination-{PHP.R.admin-config-pagialign}">
								<ul>{ADMIN_POLLS_PAGINATION_PREV}{ADMIN_POLLS_PAGNAV}{ADMIN_POLLS_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
						</div>
					</div>
					
					<div class="block">
						<h5><i class="fa fa-plus-circle"></i> {ADMIN_POLLS_FORMNAME}:</h5>
						<div class="wrapper">
							<form id="addpoll" action="{ADMIN_POLLS_FORM_URL}" method="post">
<!-- IF {PHP.cfg.jquery} -->
								<script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
								<script type="text/javascript">
									var ansMax = {PHP.cfg.polls.max_options_polls};
								</script>		
<!-- ENDIF -->
								<table class="table table-bordered">
									<tr>
										<td class="width15">{PHP.L.poll}:</td>
										<td class="width85">{EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}</td>
									</tr>
									<tr>
										<td>{PHP.L.Options}:</td>
										<td>
<!-- BEGIN: OPTIONS -->
											<div class="polloptiondiv">
												{EDIT_POLL_OPTION_TEXT}
												<button name="deloption" type="button" class="deloption btn btn-default btn-{PHP.R.admin-config-buttonsize}" style="display:none;"><i class="fa fa-times"></i></button>
											</div>
<!-- END: OPTIONS -->
											<button id="addoption" name="addoption" type="button" class="btn btn-primary" style="display:none;"><i class="fa fa-plus-circle"></i> {PHP.L.Add}</button>
										</td>
									</tr>
									<tr>
										<td></td>
										<td>
											{EDIT_POLL_MULTIPLE}
<!-- BEGIN: EDIT -->
											{EDIT_POLL_LOCKED}
											{EDIT_POLL_RESET}
											{EDIT_POLL_DELETE}
<!-- END: EDIT -->
										</td>
									</tr>
									<tr>
										<td colspan="2"><button type="submit" class="confirm btn btn-primary"><i class="fa fa-check-circle"></i> {ADMIN_POLLS_SEND_BUTTON}</button></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->