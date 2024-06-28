<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.tags_All}</h2>
			<div class="wrapper">

				<div class="{PHP.R.admin-table-responsive-container-class}">

					<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
						<a title="{PHP.L.Configuration}" href="{ADMIN_TAGS_CONFIG_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration}</a>
					</div>

					<form name="sortfiltertag" action="{ADMIN_TAGS_FORM_ACTION}" method="post" class="w-100 mb-3">
						<div class="d-inline-block">
							<div class="input-group input-group-{PHP.R.admin-top-button-size-class}">
<!-- IF {ADMIN_TAGS_TOTALITEMS} > 1 -->
								<label class="input-group-text">{PHP.L.adm_sort}</label>
								{ADMIN_TAGS_ORDER}
								{ADMIN_TAGS_WAY}
<!-- ENDIF -->
								<label class="input-group-text">{PHP.L.Show}</label>
								{ADMIN_TAGS_FILTER}
								<label class="input-group-text">{PHP.L.Search} </label class="input-group-text">
								<input name="tag" type="text" class="form-control" value="" />
								<input name="paction" type="submit" value="{PHP.L.Filter}" class="btn {PHP.R.admin-button-primary-class}" />
							</div>
						</div>
					</form>

					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-20">{PHP.L.Tag}</th>
								<th class="w-15">{PHP.L.adm_area}</th>
								<th class="w-15">{PHP.L.Count}</th>
								<th class="w-20"> {PHP.L.adm_tag_item_area}</th>
								<th class="w-30" colspan="2">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: ADMIN_TAGS_ROW -->
							<tr class="{PHP.R.admin-table-tr-class}">
								<td>{ADMIN_TAGS_ROW_CODE}</td>
								<td>{ADMIN_TAGS_ROW_AREA}</td>
								<td>{ADMIN_TAGS_ROW_COUNT}</td>
								<td>
									<div id="mor_{PHP.ii}" class='mor_info_on_off'>
										<span class="d-block" role="button">{ADMIN_TAGS_ROW_ITEMS}</span>
										<div class="moreinfo">
											<!-- BEGIN: ADMIN_TAGS_ROW_ITEMS -->

											<!-- IF {ADMIN_TAGS_ROW_ITEM_URL} -->
											<a href="{ADMIN_TAGS_ROW_ITEM_URL}">
											<!-- ENDIF -->
												{ADMIN_TAGS_ROW_ITEM_TITLE}
											<!-- IF {ADMIN_TAGS_ROW_ITEM_URL} -->
											</a>
											<!-- ENDIF -->

											<!-- END: ADMIN_TAGS_ROW_ITEMS -->
										</div>
									</div>
								</td>
								<td>
									<form name="tagedit{PHP.ii}" action="{ADMIN_TAGS_ROW_FORM_ACTION}" method="POST">
										<input type="hidden" name="action" value="edit" />
										<input type="hidden" name="old_tag" value="{ADMIN_TAGS_ROW_CODE|htmlspecialchars($this)}" />
										<div class="input-group">
											<input type="text" class="form-control" name="tag" value="{ADMIN_TAGS_ROW_CODE|htmlspecialchars($this)}" maxlength="255" />
											<button type="submit" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.L.Edit}</button>
											<a href="{ADMIN_TAGS_ROW_DELETE_CONFIRM_URL}" class="confirmLink btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.L.Delete}</a>
										</div>
									</form>
								</td>
							</tr>
<!-- END: ADMIN_TAGS_ROW -->
						</tbody>
					</table>
				</div>
				<p class="{PHP.R.admin-pagination-p-class}">
					{PHP.L.Total}: {TOTAL_ENTRIES}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ENTRIES_ON_CURRENT_PAGE}
				</p>
<!-- IF {PAGINATION} -->
				<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Tags Pagination">
					<ul class="pagination {PHP.R.admin-pagination-list-class}">
						{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
					</ul>
				</nav>
<!-- ENDIF -->
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function()
{
	$('.moreinfo').hide();
	$(".mor_info_on_off").click(function()
	{
		var kk = $(this).attr('id');
		$('#'+kk).children('.moreinfo').slideToggle(100);
	});
});
</script>
<!-- END: MAIN -->
