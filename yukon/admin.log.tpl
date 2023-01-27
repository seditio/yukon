<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-gears}{PHP.L.adm_log} ({ADMIN_LOG_TOTALDBLOG})</h2>
			<div class="wrapper">

				<form action="" class="mb-3">
					<div class="d-inline-block">
						<div class="input-group input-group-{PHP.R.admin-top-button-size-class}">
							<label class="input-group-text">{PHP.L.Group}</label>
							<select name="groups" size="1" onchange="redirect(this)" class="form-select">
<!-- BEGIN: GROUP_SELECT_OPTION -->
								<option value="{ADMIN_LOG_OPTION_VALUE_URL}"{ADMIN_LOG_OPTION_SELECTED}>{ADMIN_LOG_OPTION_GRP_NAME}</option>
<!-- END: GROUP_SELECT_OPTION -->
							</select>
						</div>
					</div>
				</form>

				<div class="{PHP.R.admin-table-responsive-container-class}">
<!-- IF {PHP.usr.isadmin} -->
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.adm_purgeall}" href="{ADMIN_LOG_URL_PRUNE}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}{PHP.L.adm_purgeall}</a>
					</div>
<!-- ENDIF -->
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-5">#</th>
								<th class="w-15">{PHP.L.Date} (GMT)</th>
								<th class="w-10">{PHP.L.Ip}</th>
								<th class="w-15">{PHP.L.User}</th>
								<th class="w-15">{PHP.L.Group}</th>
								<th class="w-40">{PHP.L.Log}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: LOG_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_LOG_ROW_LOG_ID}</td>
								<td>{ADMIN_LOG_ROW_DATE}</td>
								<td><a href="{ADMIN_LOG_ROW_URL_IP_SEARCH}">{ADMIN_LOG_ROW_LOG_IP}</a></td>
								<td>{ADMIN_LOG_ROW_LOG_NAME}&nbsp;</td>
								<td><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}" class="ajax">{ADMIN_LOG_ROW_LOG_GROUP}</a></td>
								<td>{ADMIN_LOG_ROW_LOG_TEXT}</td>
							</tr>
<!-- END: LOG_ROW -->
						</tbody>
					</table>
					<p class="{PHP.R.admin-pagination-p-class}">
						{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_LOG_ON_PAGE}
					</p>
<!-- IF {ADMIN_LOG_PAGNAV} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Log Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{ADMIN_LOG_PAGINATION_PREV}{ADMIN_LOG_PAGNAV}{ADMIN_LOG_PAGINATION_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>

			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
