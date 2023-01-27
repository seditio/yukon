<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}BBCodes</h2>
			<div class="wrapper">
				<form action="{ADMIN_BBCODE_UPDATE_URL}" method="post">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
							<button onclick="" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" type="submit">{PHP.R.icon-refresh}{PHP.L.Refresh}</button>
						</div>
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-20">{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.Enabled} / {PHP.L.adm_bbcodes_container}</th>
									<th class="w-20">{PHP.L.adm_bbcodes_pattern}</th>
									<th class="w-30">{PHP.L.adm_bbcodes_replacement}</th>
									<th class="w-15">{PHP.L.Plugin} / {PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
									<th class="w-15">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: ADMIN_BBCODE_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>
									<div class="mb-2">{ADMIN_BBCODE_ROW_NAME}</div>
									{ADMIN_BBCODE_ROW_MODE} {ADMIN_BBCODE_ROW_ENABLED} {ADMIN_BBCODE_ROW_CONTAINER}
								</td>
								<td>
									{ADMIN_BBCODE_ROW_PATTERN}
								</td>
								<td>
									{ADMIN_BBCODE_ROW_REPLACEMENT}
								</td>
								<td>
									{ADMIN_BBCODE_ROW_PLUG}
									{ADMIN_BBCODE_ROW_PRIO}
									{ADMIN_BBCODE_ROW_POSTRENDER}
								</td>
								<td>
									<button class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}" type="button" onclick="if(confirm('{PHP.L.adm_bbcodes_confirm}')) location.href='{ADMIN_BBCODE_ROW_DELETE_URL}'">
										{PHP.R.icon-trash}<span>{PHP.L.Delete}</span>
									</button>
								</td>
							</tr>
<!-- END: ADMIN_BBCODE_ROW -->
						</table>
						<p class="{PHP.R.admin-pagination-p-class}">
							{PHP.L.Total}: {ADMIN_BBCODE_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_BBCODE_COUNTER_ROW}
						</p>
<!-- IF {ADMIN_BBCODE_PAGNAV} -->
						<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="BBCodes Pagination">
							<ul class="pagination {PHP.R.admin-pagination-list-class}">
								{ADMIN_BBCODE_PAGINATION_PREV}{ADMIN_BBCODE_PAGNAV}{ADMIN_BBCODE_PAGINATION_NEXT}
							</ul>
						</nav>
<!-- ENDIF -->
					</div>
				</form>

			</div>
		</div>

		<div class="block">
			<h2>{PHP.L.adm_bbcodes_new}:</h2>
			<div class="wrapper">
				<form action="{ADMIN_BBCODE_FORM_ACTION}" method="post">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-20">{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.adm_bbcodes_container}</th>
									<th class="w-20">{PHP.L.adm_bbcodes_pattern}</th>
									<th class="w-30">{PHP.L.adm_bbcodes_replacement}</th>
									<th class="w-15">{PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
									<th class="w-15">{PHP.L.Action}</th>
								</tr>
							</thead>
							<tbody>
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>
										<div class="mb-2">{ADMIN_BBCODE_NAME}</div>
										{ADMIN_BBCODE_MODE} {ADMIN_BBCODE_CONTAINER}
									</td>
									<td>{ADMIN_BBCODE_PATTERN}</td>
									<td>{ADMIN_BBCODE_REPLACEMENT}</td>
									<td>{ADMIN_BBCODE_PRIO} {ADMIN_BBCODE_POSTRENDER}</td>
									<td><input type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}" value="{PHP.L.Add}" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>

		<div class="block">
			<h2>{PHP.L.adm_bbcodes_other}:</h2>
			<div class="wrapper">
				<div class="btn-group">
					<a href="{ADMIN_BBCODE_URL_CLEAR_CACHE}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" onclick="return confirm('{PHP.L.adm_bbcodes_clearcache_confirm}')">{PHP.L.adm_bbcodes_clearcache}</a>
<!-- BEGIN: ADMIN_BBCODE_CONVERT -->
					<a href="{ADMIN_BBCODE_CONVERT_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" onclick="return confirm('{PHP.L.adm_bbcodes_convert_confirm}')">{ADMIN_BBCODE_CONVERT_TITLE}</a>
<!-- END: ADMIN_BBCODE_CONVERT -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
