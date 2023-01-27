<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Pages} ({ADMIN_PAGE_TOTALDBPAGES})</h2>
			<div class="wrapper">

				<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
					<input type="hidden" name="paction" value="" />
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
							<a title="{PHP.L.Configuration}" href="{ADMIN_PAGE_URL_CONFIG}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration}</a>
							<a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-bars}{PHP.L.adm_extrafields}</a>
							<a href="{ADMIN_PAGE_URL_STRUCTURE}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-sitemap}{PHP.L.Categories}</a></li>
							<a href="{ADMIN_PAGE_URL_ADD}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-plus}{PHP.L.page_addtitle}</a>
						</div>
						<div class="d-block mb-{PHP.R.admin-button-group-margin}">
							<div class="d-inline-block">
								<div class="input-group input-group-sm">
									<label class="input-group-text">{PHP.L.Show}</label>
<!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->
									<label class="input-group-text">{PHP.L.adm_sort}</label>
									{ADMIN_PAGE_ORDER}
									{ADMIN_PAGE_WAY}
<!-- ENDIF -->
									{ADMIN_PAGE_FILTER}
									<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="btn {PHP.R.admin-button-primary-class}">{PHP.R.icon-filter}{PHP.L.Filter}</button>
								</div>
							</div>
						</div>
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-5">
<!-- IF {PHP.cfg.jquery} -->
										<input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
<!-- ENDIF -->
									</th>
									<th class="w-5">{PHP.L.Id}</th>
									<th class="w-60">{PHP.L.Title}</th>
									<th class="w-30">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: PAGE_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>
									<input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox" />
								</td>
								<td>
									{ADMIN_PAGE_ID}
								</td>
								<td class="text-start">
									<div id="mor_{PHP.ii}" class='mor_info_on_off'>
										<span class="fw-bold d-block" role="button">{ADMIN_PAGE_SHORTTITLE} ({ADMIN_PAGE_COUNT})</span>
										<div class="moreinfo pt-2">
											<table class="table table-bordered">
												<tr>
													<td class="w-20">{PHP.L.Category}:</td>
													<td class="w-80">{ADMIN_PAGE_CATPATH_SHORT}</td>
												</tr>
												<tr>
													<td>{PHP.L.Description}:</td>
													<td>{ADMIN_PAGE_DESC}</td>
												</tr>
												<tr>
													<td>{PHP.L.Text}:</td>
													<td>{ADMIN_PAGE_TEXT|cot_cutstring($this, 500)}</td>
												</tr>
											</table>
										</div>
									</div>
								</td>
								<td class="action">
									<div class="btn-group">
<!-- IF {PHP.row.page_state} == 1 -->
										<a title="{PHP.L.Validate}" href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="confirmLink btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-flag-checkered}<span>{PHP.L.Validate}</span></a>
<!-- ENDIF -->
										<a title="{PHP.L.Delete}" href="{ADMIN_PAGE_URL_FOR_DELETED}" class="confirmLink btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.short_delete}</span></a>
										<a title="{PHP.L.Open}" href="{ADMIN_PAGE_ID_URL}" target="_blank" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.short_open}</span></a>
										<a title="{PHP.L.Edit}" href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-pencil}<span>{PHP.L.Edit}</span></a>
									</div>
								</td>
							</tr>
<!-- END: PAGE_ROW -->
<!-- IF {PHP.is_row_empty} -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td colspan="4">{PHP.L.None}</td>
							</tr>
<!-- ELSE -->
							<tr>
								<td colspan="4">
									<div class="btn-group">
<!-- IF {PHP.filter} != {PHP.L.adm_validated} -->
										<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="confirm btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">
											{PHP.R.icon-flag-checkered}<span>{PHP.L.Validate}</span>
										</button>
<!-- ENDIF -->
										<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></button>
									</div>
								</td>
							</tr>
<!-- ENDIF -->
						</table>
<!-- IF !{PHP.is_row_empty} -->
						<p class="{PHP.R.admin-pagination-p-class}">
							{PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_PAGE_ON_PAGE}
						</p>
<!-- ENDIF -->
<!-- IF {ADMIN_PAGE_PAGNAV} -->
						<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Page Pagination">
							<ul class="pagination {PHP.R.admin-pagination-list-class}">
								{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}</ul>
							</ul>
						</nav>
<!-- ENDIF -->
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
	$('.moreinfo').hide();
	$(".mor_info_on_off").click(function() {
		var kk = $(this).attr('id');
		$('#'+kk).children('.moreinfo').slideToggle(100);
	});
});
</script>
<!-- END: MAIN -->
