<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.banlist_title}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-5">ID</th>
								<th class="w-20">{PHP.L.Date}</th>
								<th class="w-20">{PHP.L.banlist_ipmask}</th>
								<th class="w-20">{PHP.L.Email}</th>
								<th class="w-20">{PHP.L.banlist_reason}</th>
								<th class="w-15">{PHP.L.banlist_duration}</th>
								<th class="w-20">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: ADMIN_BANLIST_ROW -->
							<form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>{ADMIN_BANLIST_ROW_ID}</td>
									<td>{ADMIN_BANLIST_ROW_DATE}</td>
									<td>{ADMIN_BANLIST_ROW_IP}</td>
									<td>{ADMIN_BANLIST_ROW_EMAIL}</td>
									<td>{ADMIN_BANLIST_ROW_REASON}</td>
									<td>{ADMIN_BANLIST_ROW_EXPIRE}</td>
									<td class="action">
										<div class="btn-group">
											<button type="submit" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-refresh}<span>{PHP.L.Update}</span></button>
											<button type="submit" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}" onclick="window.location.replace('{ADMIN_BANLIST_ROW_DELURL}'); return false;">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></button>
										</div>
									</td>
								</tr>
							</form>
<!-- END: ADMIN_BANLIST_ROW -->
						</tbody>
					</table>
					<p class="{PHP.R.admin-pagination-p-class}">
						{PHP.L.Total}: {ADMIN_BANLIST_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_BANLIST_COUNTER_ROW}
					</p>
<!-- IF {ADMIN_BANLIST_PAGNAV} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Banlist Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>
			</div>
		</div>

		<div class="block">
			<h2>{PHP.R.icon-plus}{PHP.L.Add}:</h2>
			<div class="wrapper">
				<form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<tr>
								<td class="w-20">{PHP.L.banlist_ipmask}:</td>
								<td class="w-80">{ADMIN_BANLIST_IP}</td>
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
								<td colspan="2">
									<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-plus}{PHP.L.Add}</button>
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>

	</div>
</div>
<!-- END: MAIN -->
