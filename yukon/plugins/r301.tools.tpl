<!-- BEGIN: MAIN -->
			<div class="row">
				<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
					<div class="block">
						<h2>{PHP.R.icon-plug}{PHP.L.info_name} ({PHP.ttl|cot_declension($this, '301_redirs')})</h2>
						<div class="wrapper">
							<form action="{ADMIN_R301_UPDATE_URL}" method="post" name="pageform">
								<table class="{PHP.R.admin-table-class}">
									<thead>
										<tr>
											<th class="">#</th>
											<th class="">{PHP.L.301_from}</th>
											<th class="">{PHP.L.301_to}</th>
											<th class="">{PHP.L.301_type}</th>
											<th class="">{PHP.L.301_date}</th>
											<th class="">{PHP.L.Action}</th>
										</tr>
									</thead>
									<tbody>
<!-- BEGIN: R301_ROW -->
										<tr class="{PHP.R.admin-table-tr-class}">
											<td>{ADMIN_R301_ITEM_ID}.</td>
											<td>{ADMIN_R301_FROM}</td>
											<td>{ADMIN_R301_TO}</td>
											<td>{ADMIN_R301_TYPE}</td>
											<td>{ADMIN_R301_DATE}</td>
											<td>
												<a title="{PHP.L.Delete}" href="{ADMIN_R301_DEL_URL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}{PHP.L.Delete}</a>
											</td>
										</tr>
<!-- END: R301_ROW -->
<!-- BEGIN: R301_NOROW -->
										<tr>
											<td colspan="6">{PHP.L.None}</td>
										</tr>
<!-- END: R301_NOROW -->
										<tr>
											<td colspan="6">
												<button type="submit" name="rpaste" value="ok" class="btn {PHP.R.admin-button-primary-class}">{PHP.R.icon-refresh}{PHP.L.Update}</button>
											</td>
										</tr>
									</tbody>
								</table>
							</form>
<!-- IF {PAGINATION} -->
							<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="r301 Pagination">
								<ul class="pagination {PHP.R.admin-pagination-list-class}">
									{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
								</ul>
							</nav>
<!-- ENDIF -->
						</div>
					</div>

					<div class="block">
						<h2>{PHP.R.icon-plus}{PHP.L.New}</h2>
						<div class="wrapper">
							<form action="{ADMIN_R301_ADD_URL}" method="post" name="pageform">
								<table class="{PHP.R.admin-table-class}">
									<tr>
										<td>{PHP.L.301_from}</td>
										<td>{ADMIN_R301_FROM}</td>
									</tr>
									<tr>
										<td>{PHP.L.301_to}</td>
										<td>{ADMIN_R301_TO}</td>
									</tr>
									<tr>
										<td>{PHP.L.301_type}</td>
										<td>{ADMIN_R301_TYPE}</td>
									</tr>
									<tr>
										<td>{PHP.L.301_date}</td>
										<td>{ADMIN_R301_DATE}</td>
									</tr>
									<tr>
										<td colspan="2">
											<button type="submit" name="rpaste" value="ok" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-plus}{PHP.L.Add}</button>
											<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}" href="{ADMIN_R301_ID2AL_URL}">{PHP.R.icon-arrow-right}{PHP.L.301_id2al}</a>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->
