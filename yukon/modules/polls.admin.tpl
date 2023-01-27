<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Polls}</h2>
			<div class="wrapper">

				<div class="{PHP.R.admin-table-responsive-container-class}">
					
					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.Configuration}" href="{ADMIN_POLLS_CONF_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration}</a>
					</div>

					<select name="jumpbox" size="1" onchange="redirect(this)" class="float-end mt-1">
<!-- BEGIN: POLLS_ROW_FILTER -->
						<option value="{ADMIN_POLLS_ROW_FILTER_VALUE}"{ADMIN_POLLS_ROW_FILTER_CHECKED}>{ADMIN_POLLS_ROW_FILTER_NAME}</option>
<!-- END: POLLS_ROW_FILTER -->
					</select>

					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-10">{PHP.L.Date}</th>
								<th class="w-10">{PHP.L.Type}</th>
								<th class="w-35">{PHP.L.Poll} {PHP.L.adm_clicktoedit}</th>
								<th class="w-10">{PHP.L.Votes}</th>
								<th class="w-35">{PHP.L.Action}</th>
							</tr>
						</thead>
<!-- BEGIN: POLLS_ROW -->
						<tr class="{PHP.R.admin-table-tr-class}">
							<td>{ADMIN_POLLS_ROW_POLL_CREATIONDATE}</td>
							<td>{ADMIN_POLLS_ROW_POLL_TYPE}</td>
							<td>{ADMIN_POLLS_ROW_POLL_LOCKED}<a href="{ADMIN_POLLS_ROW_POLL_URL}">{ADMIN_POLLS_ROW_POLL_TEXT}</a></td>
							<td>{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</td>
							<td class="action">
								<div class="btn-group">
<!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
									<a title="{PHP.L.Lock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-warning {PHP.R.admin-button-size-class}">{PHP.R.icon-lock}<span>{PHP.L.Lock}</span></a>
<!-- ELSE -->
									<a title="{PHP.L.Unlock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-warning {PHP.R.admin-button-size-class}">{PHP.R.icon-unlock}<span>{PHP.L.Unlock}</span></a>
<!-- ENDIF -->
									<a title="{PHP.L.Reset}" href="{ADMIN_POLLS_ROW_POLL_URL_RES}" class="btn btn-warning {PHP.R.admin-button-size-class}">{PHP.R.icon-refresh}<span>{PHP.L.Reset}</span></a>
									<a title="{PHP.L.Delete}" href="{ADMIN_POLLS_ROW_POLL_URL_DEL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
									<a title="{PHP.L.adm_polls_bump}" href="{ADMIN_POLLS_ROW_POLL_URL_BMP}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-arrow-up}<span>{PHP.L.adm_polls_bump}</span></a>
									<a title="{PHP.L.Open}" href="{ADMIN_POLLS_ROW_POLL_URL_OPN}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
								</div>
							</td>
						</tr>
<!-- END: POLLS_ROW -->
<!-- BEGIN: POLLS_ROW_EMPTY -->
						<tr class="{PHP.R.admin-table-tr-class}">
							<td colspan="5">{PHP.L.adm_polls_nopolls}</td>
						</tr>
<!-- END: POLLS_ROW_EMPTY -->
					</table>
					<p class="{PHP.R.admin-pagination-p-class}">
						{PHP.L.Total}: {ADMIN_POLLS_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_POLLS_ON_PAGE}
					</p>
<!-- IF {ADMIN_POLLS_PAGNAV} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Polls Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{ADMIN_POLLS_PAGINATION_PREV}{ADMIN_POLLS_PAGNAV}{ADMIN_POLLS_PAGINATION_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>
			</div>
		</div>

		<div class="block">
			<h2>{PHP.R.icon-plus}{ADMIN_POLLS_FORMNAME}:</h2>
			<div class="wrapper">
				<form id="addpoll" action="{ADMIN_POLLS_FORM_URL}" method="post">
<!-- IF {PHP.cfg.jquery} -->
					<script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
					<script type="text/javascript">
					var ansMax = {PHP.cfg.polls.max_options_polls};
					</script>
<!-- ENDIF -->
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<tr>
								<td class="w-10">{PHP.L.poll}:</td>
								<td class="w-90">{EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}</td>
							</tr>
							<tr>
								<td>{PHP.L.Options}:</td>
								<td>
<!-- BEGIN: OPTIONS -->
									<div class="input-group mb-2 polloptiondiv">
										<button name="deloption" type="button" class="deloption btn {PHP.R.admin-button-danger-class}">{PHP.R.icon-trash}</button>
										{EDIT_POLL_OPTION_TEXT}
									</div>
<!-- END: OPTIONS -->
									<button id="addoption" name="addoption" type="button" class="btn {PHP.R.admin-button-primary-class}" style="display:none;">{PHP.R.icon-plus}{PHP.L.Add}</button>
								</td>
							</tr>
							<tr>
								<td></td>
								<td>
									{EDIT_POLL_MULTIPLE}
<!-- BEGIN: EDIT -->
									{EDIT_POLL_LOCKED}
									{EDIT_POLL_RESET}
									{EDIT_POLL_DELETE}
<!-- END: EDIT -->
								</td>
							</tr>
							<tr>
								<td colspan="2"><button type="submit" class="confirm btn {PHP.R.admin-button-primary-class} btn-{PHP.R.top-button-size}">{PHP.R.icon-plus}{ADMIN_POLLS_SEND_BUTTON}</button></td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
