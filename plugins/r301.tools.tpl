<!-- BEGIN: MAIN -->

			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="icon-cogs"></i> r301</h5>
						<div class="wrapper">
							<form action="{ADMIN_R301_UPDATE_URL}" method="post" name="pageform">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>#</th>
											<th>{PHP.L.301_from}</th>
											<th>{PHP.L.301_to}</th>
											<th>{PHP.L.301_type}</th>
											<th>{PHP.L.301_date}</th>
											<th>{PHP.L.Action}</th>
										</tr>
									</thead>
									<tbody>
<!-- BEGIN: R301_ROW -->
										<tr>
											<td class="text-center">{ADMIN_R301_ITEM_ID}.</td>
											<td>{ADMIN_R301_FROM}</td>
											<td>{ADMIN_R301_TO}</td>
											<td class="centerall">{ADMIN_R301_TYPE}</td>
											<td class="centerall">{ADMIN_R301_DATE}</td>
											<td class="centerall action">
												<a title="{PHP.L.Delete}" href="{ADMIN_R301_DEL_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> {PHP.L.Delete}</a>
											</td>
										</tr>
<!-- END: R301_ROW -->
<!-- BEGIN: R301_NOROW -->
										<tr>
											<td colspan="6">{PHP.L.None}</td>
										</tr>
<!-- END: R301_NOROW -->
										<tr>
											<td colspan="6" class="valid">
												<button type="submit" name="rpaste" value="ok" class="btn btn-primary">{PHP.L.Update}</button>
											</td>
										</tr>
									</tbody>
								</table>
							</form>
						</div>
					</div>
					<div class="block">
						<h5>{PHP.L.New}</h5>
						<div class="wrapper">
							<form action="{ADMIN_R301_ADD_URL}" method="post" name="pageform">
								<table class="table table-bordered m0">
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
										<td colspan="2" class="valid">
											<button type="submit" name="rpaste" value="ok" class="btn btn-primary">{PHP.L.Add}</button>
											<a class="btn btn-primary" href="{ADMIN_R301_ID2AL_URL}">{PHP.L.301_id2al}</a>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>

<!-- END: MAIN -->