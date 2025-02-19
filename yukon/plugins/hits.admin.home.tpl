<!-- BEGIN: MAIN -->
<!-- BEGIN: STAT -->
<div class="block">
	<h2 class="text-truncate">{PHP.R.icon-chart-simple}{HITS_STAT_HEADER}</h2>
	<div class="wrapper">
		<div class="{PHP.R.admin-table-responsive-container-class}">
			<table class="table table-striped">
				<tbody>
<!-- BEGIN: ADMIN_HOME_ROW -->
					<tr>
						<td class="w-15 text-nowrap">{ADMIN_HOME_DAY}</td>
						<td class="w-60">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="{ADMIN_HOME_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100" style="width:{ADMIN_HOME_PERCENTBAR}%;">
									<span class="sr-only">{ADMIN_HOME_PERCENTBAR}%</span>
								</div>
							</div>
						</td>
						<td class="text-end w-25 text-nowrap">{ADMIN_HOME_HITS|cot_declension($this,'admin-hits')}</td>
					</tr>
<!-- END: ADMIN_HOME_ROW -->
				</tbody>
			</table>
			<a href="{ADMIN_HOME_MORE_HITS_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class} mt-{PHP.R.admin-button-group-margin}">
				{PHP.R.icon-hand-point-right}{PHP.L.ReadMore}
			</a>
		</div>
	</div>
</div>
<!-- END: STAT -->

<!-- BEGIN: ACTIVITY -->
<div class="block">
	<h2 class="text-truncate">{PHP.R.icon-chart-simple}{ACTIVITY_STAT_HEADER}</h2>
	<div class="wrapper">
		<div class="{PHP.R.admin-table-responsive-container-class}">
			<table class="table table-striped">
				<tbody>
					<tr>
						<td class="w-80"><a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a></td>
						<td class="text-end w-20">{ADMIN_HOME_NEWUSERS}</td>
					</tr>
					<tr>
						<td><a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a></td>
						<td class="text-end">{ADMIN_HOME_NEWPAGES}</td>
					</tr>
<!-- IF {PHP|cot_module_active('forums')} -->
					<tr>
						<td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a></td>
						<td class="text-end">{ADMIN_HOME_NEWTOPICS}</td>
					</tr>
					<tr>
						<td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a></td>
						<td class="text-end">{ADMIN_HOME_NEWPOSTS}</td>
					</tr>
<!-- ENDIF -->
<!-- IF {PHP|cot_module_active('pm')} -->
					<tr>
						<td>{PHP.L.home_newpms}</td>
						<td class="text-end">{ADMIN_HOME_NEWPMS}</td>
					</tr>
<!-- ENDIF -->
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- END: ACTIVITY -->
<!-- END: MAIN -->
