<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-ban"></i> {PHP.L.banlist_title}</h5>
						<div class="wrapper">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width20">{PHP.L.banlist_ipmask}</th>
										<th class="width20">{PHP.L.banlist_emailmask}</th>
										<th class="width20">{PHP.L.banlist_reason}</th>
										<th class="width15">{PHP.L.banlist_duration}</th>
										<th class="width25">{PHP.L.Action}</th>
									</tr>
								</thead>
<!-- BEGIN: ADMIN_BANLIST_ROW -->
								<form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
								<tr>
									<td class="text-center">{ADMIN_BANLIST_ROW_IP}</td>
									<td class="text-center">{ADMIN_BANLIST_ROW_EMAIL}</td>
									<td class="text-center">{ADMIN_BANLIST_ROW_REASON}</td>
									<td class="centerall">{ADMIN_BANLIST_ROW_EXPIRE}</td>
									<td class="action centerall">
										<div class="btn-group">
											<button type="submit" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-refresh"></i> <span>{PHP.L.Update}</span></button>
											<button type="submit" onclick="parent.location='{ADMIN_BANLIST_ROW_DELURL}'" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> <span>{PHP.L.Delete}</span></button>
										</div>
									</td>
								</tr>
								</form>
<!-- END: ADMIN_BANLIST_ROW -->
							</table>
							<p class="text-center">{PHP.L.Total}: {ADMIN_BANLIST_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_BANLIST_COUNTER_ROW}</p>
<!-- IF {ADMIN_BANLIST_PAGNAV} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
						</div>
					</div>
					<div class="block">
						<h5><i class="fa fa-plus-circle"></i> {PHP.L.Add}:</h5>
						<div class="wrapper">
							<form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
								<table class="table table-bordered">
									<tr>
										<td class="width20">{PHP.L.banlist_ipmask}:</td>
										<td class="width80">{ADMIN_BANLIST_IP}</td>
									</tr>
									<tr>
										<td>{PHP.L.banlist_emailmask}:</td>
										<td>{ADMIN_BANLIST_EMAIL}</td>
									</tr>
									<tr>
										<td>{PHP.L.banlist_reason}:</td>
										<td>{ADMIN_BANLIST_REASON}</td>
									</tr>
									<tr>
										<td>{PHP.L.banlist_duration}:</td>
										<td>{ADMIN_BANLIST_EXPIRE}</td>
									</tr>
									<tr>
										<td class="valid" colspan="2">
											<button type="submit" class="btn btn-primary"><i class="fa fa-check-circle"></i> {PHP.L.Add}</button>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->