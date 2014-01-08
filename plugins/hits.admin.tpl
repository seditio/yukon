<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
					<div class="block">
						<h5><i class="fa fa-bar-chart-o"></i> {PHP.L.Hits}</h5>
						<div class="wrapper">
<!-- BEGIN: YEAR_OR_MONTH -->
						<h6>{PHP.v}:</h6>
						<table class="table table-striped">
<!-- BEGIN: ROW -->
							<tr>
								<td class="width15">{ADMIN_HITS_ROW_DAY}</td>
								<td class="width15">{PHP.L.Hits}: {ADMIN_HITS_ROW_HITS} ({ADMIN_HITS_ROW_PERCENTBAR}%)</td>
								<td class="width70">
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HITS_ROW_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HITS_ROW_PERCENTBAR}%;">
											<span class="sr-only">{ADMIN_HITS_ROW_PERCENTBAR}% Complete</span>
										</div>
									</div>
								</td>
							</tr>
<!-- END: ROW -->
						</table>
<!-- END: YEAR_OR_MONTH -->
<!-- BEGIN: DEFAULT -->
						<h6>{PHP.L.hits_byyear}:</h6>
						<table class="table table-striped">
<!-- BEGIN: ROW_YEAR -->
							<tr>
								<td class="width10"><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></td>
								<td class="text-center width10">{PHP.L.Hits}: {ADMIN_HITS_ROW_YEAR_HITS}</td>
								<td class="text-center width10">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</td>
								<td class="width70">
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HITS_ROW_YEAR_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%;">
											<span class="sr-only">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}% Complete</span>
										</div>
									</div>
								</td>
							</tr>
<!-- END: ROW_YEAR -->
						</table>
						<h6>{PHP.L.hits_bymonth}:</h6>
						<table class="table table-striped">
<!-- BEGIN: ROW_MONTH -->
							<tr>
								<td class="width10"><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></td>
								<td class="text-center width10">{PHP.L.Hits}: {ADMIN_HITS_ROW_MONTH_HITS}</td>
								<td class="text-center width10">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</td>
								<td class="width70">
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HITS_ROW_MONTH_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%;">
											<span class="sr-only">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}% Complete</span>
										</div>
									</div>
								</td>
							</tr>
<!-- END: ROW_MONTH -->
						</table>
						
						<h6>{PHP.L.hits_byweek}:</h6>
						<table class="table table-striped">
<!-- BEGIN: ROW_WEEK -->
							<tr>
								<td class="width10">{ADMIN_HITS_ROW_WEEK}</td>
								<td class="text-center width10">{PHP.L.Hits}: {ADMIN_HITS_ROW_WEEK_HITS}</td>
								<td class="text-center width10">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</td>
								<td class="width70">
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HITS_ROW_WEEK_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%;">
											<span class="sr-only">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}% Complete</span>
										</div>
									</div>
								</td>
							</tr>
<!-- END: ROW_WEEK -->
						</table>
<!-- END: DEFAULT -->
<!-- IF {ADMIN_HITS_MAXHITS} -->
						<div class="alert alert-info">{ADMIN_HITS_MAXHITS}</div>
<!-- ENDIF -->
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->