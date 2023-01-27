<!-- BEGIN: MAIN -->
<div class="row">

<!-- BEGIN: DEFAULT -->
	<div class="col-xl-6">
<!-- IF {ADMIN_HITS_MAXHITS} -->
		<div class="alert alert-info">
			{ADMIN_HITS_MAXHITS}
		</div>
<!-- ENDIF -->
		<div class="block">
			<h2>{PHP.R.icon-chart-simple}{PHP.L.hits_byyear}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
<!-- BEGIN: ROW_YEAR -->
						<tr class="{PHP.R.admin-table-tr-class}">
							<td class="w-20 text-nowrap"><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></td>
							<td class="w-15"><span class="d-none d-lg-inline">{PHP.L.Hits}:</span> {ADMIN_HITS_ROW_YEAR_HITS}</td>
							<td class="w-10">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</td>
							<td class="w-55">
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HITS_ROW_YEAR_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%;">
										<span class="sr-only">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}% Complete</span>
									</div>
								</div>
							</td>
						</tr>
<!-- END: ROW_YEAR -->
					</table>
				</div>
			</div>
		</div>

		<div class="block">
			<h2>{PHP.R.icon-chart-simple}{PHP.L.hits_bymonth}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
<!-- BEGIN: ROW_MONTH -->
						<tr class="{PHP.R.admin-table-tr-class}">
							<td class="w-20 text-nowrap"><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></td>
							<td class="w-15"><span class="d-none d-lg-inline">{PHP.L.Hits}:</span> {ADMIN_HITS_ROW_MONTH_HITS}</td>
							<td class="w-10">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</td>
							<td class="w-55">
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HITS_ROW_MONTH_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%;">
										<span class="sr-only">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}% Complete</span>
									</div>
								</div>
							</td>
						</tr>
<!-- END: ROW_MONTH -->
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="col-xl-6">
		<div class="block">
			<h2>{PHP.R.icon-chart-simple}{PHP.L.hits_byweek}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
<!-- BEGIN: ROW_WEEK -->
						<tr class="{PHP.R.admin-table-tr-class}">
							<td class="w-20 text-nowrap">{ADMIN_HITS_ROW_WEEK}</td>
							<td class="w-15"><span class="d-none d-lg-inline">{PHP.L.Hits}:</span> {ADMIN_HITS_ROW_WEEK_HITS}</td>
							<td class="w-10">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</td>
							<td class="w-55">
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HITS_ROW_WEEK_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%;">
										<span class="sr-only">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}% Complete</span>
									</div>
								</div>
							</td>
						</tr>
<!-- END: ROW_WEEK -->
					</table>
				</div>
			</div>
		</div>
	</div>
<!-- END: DEFAULT -->

</div>
<!-- END: MAIN -->
