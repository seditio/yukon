<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Ratings}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.Configuration}" href="{ADMIN_RATINGS_URL_CONFIG}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration}</a>
					</div>
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-10">{PHP.L.adm_area}</th>
								<th class="w-10">{PHP.L.Code}</th>
								<th class="w-20">{PHP.L.Date} (GMT)</th>
								<th class="w-20">{PHP.L.Votes}</th>
								<th class="w-20">{PHP.L.Rating}</th>
								<th class="w-20">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: RATINGS_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_RATINGS_ROW_RATING_AREA}</td>
								<td>{ADMIN_RATINGS_ROW_RATING_CODE}</td>
								<td>{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
								<td>{ADMIN_RATINGS_ROW_VOTES}</td>
								<td>{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
								<td>
									<div class="btn-group">
										<a title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
										<a title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
									</div>
								</td>
							</tr>
<!-- END: RATINGS_ROW -->
						</tbody>
					</table>
					<p class="{PHP.R.admin-pagination-p-class}">
						{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_RATINGS_ON_PAGE}
					</p>
<!-- IF {ADMIN_RATINGS_PAGNAV} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Ratings Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
