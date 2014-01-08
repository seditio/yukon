<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-bar-chart-o"></i> {PHP.L.Ratings}</h5>
						<div class="wrapper">
							<div class="btn-group">
								<a title="{PHP.L.Configuration}" href="{ADMIN_RATINGS_URL_CONFIG}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
							</div>
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width10">{PHP.L.adm_area}</th>
										<th class="width10">{PHP.L.Code}</th>
										<th class="width20">{PHP.L.Date} (GMT)</th>
										<th class="width20">{PHP.L.Votes}</th>
										<th class="width20">{PHP.L.Rating}</th>
										<th class="width20">{PHP.L.Action}</th>
									</tr>
								</thead>
<!-- BEGIN: RATINGS_ROW -->
								<tr>
									<td class="textcenter">{ADMIN_RATINGS_ROW_RATING_AREA}</td>
									<td class="textcenter">{ADMIN_RATINGS_ROW_RATING_CODE}</td>
									<td class="textcenter">{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
									<td class="textcenter">{ADMIN_RATINGS_ROW_VOTES}</td>
									<td class="textcenter">{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
									<td class="centerall action">
										<div class="btn-group">
											<a title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> <span>{PHP.L.Delete}</span></a>
											<a title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-folder-open"></i> <span>{PHP.L.Open}</span></a>
										</div>
									</td>
								</tr>
<!-- END: RATINGS_ROW -->
							</table>

<!-- IF {ADMIN_RATINGS_PAGNAV} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->							
							<p class="text-{PHP.R.admin-config-infoalign}">{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_RATINGS_ON_PAGE} {PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</p>

						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->