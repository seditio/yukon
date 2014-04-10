<!-- BEGIN: MAIN -->
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

			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="fa fa-ban"></i> {PHP.L.tags_All}</h5>
						<div class="wrapper">
							<div class="btn-group">
								<a title="{PHP.L.Configuration}" href="{ADMIN_TAGS_CONFIG_URL}" class="btn btn-primary"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
							</div>
							
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width15">{PHP.L.Code}</th>
										<th class="width5">{PHP.L.adm_area}</th>
										<th class="width5">{PHP.L.Count}</th>
										<th class="width40"> {PHP.L.adm_tag_item_area}</th>
										<th class="width35">{PHP.L.Action}</th>
									</tr>
									<tr>
										<td class="right" colspan="5">
											<form name="sortfiltertag" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
												<!-- IF {ADMIN_TAGS_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_TAGS_ORDER} {ADMIN_TAGS_WAY};<!-- ENDIF --> {PHP.L.Show} {ADMIN_TAGS_FILTER}; {PHP.L.Search} <input name="tag" type="text" value="" />
												<input name="paction" type="submit" value="{PHP.L.Filter}" />
											</form>
										</td>
									</tr>
								</thead>
								<tbody>
<!-- BEGIN: ADMIN_TAGS_ROW -->
									<tr>
										<td class="textcenter"><b>{ADMIN_TAGS_CODE}</b></td>
										<td class="textcenter">{ADMIN_TAGS_AREA}</td>
										<td class="textcenter">{ADMIN_TAGS_COUNT}</td>
										<td>
											<div id="mor_{PHP.ii}" class='mor_info_on_off'>
												<span style="cursor:pointer;">{ADMIN_TAGS_ITEMS}</span><br />
												<div class="moreinfo">
<!-- BEGIN: ADMIN_TAGS_ROW_ITEMS -->
												{ADMIN_TAGS_ITEM_TITLE}<br />
<!-- END: ADMIN_TAGS_ROW_ITEMS -->
												</div>
											</div>
										</td>
										<td class="centerall action">
											<form name="tagedit{PHP.ii}" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
												<input name="old_tag" type="hidden" value="{ADMIN_TAGS_CODE|htmlspecialchars($this)}" />
												<input name="d" type="hidden" value="{PHP.d}" />
												<input name="sorttype" type="hidden" value="{PHP.sorttype}" />
												<input name="sortway" type="hidden" value="{PHP.sortway}" />
												<input name="filter" type="hidden" value="{PHP.filter}" />
												{ADMIN_TAGS_TAG}
												<input name="action" type="submit" value="{PHP.L.Edit}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}">
												<!--//<a title="{PHP.L.Edit}" href="{ADMIN_TAGS_URL_FOR_EDIT}" target="_blank" class="button">{PHP.L.Edit}</a>//-->
												<input name="action" type="submit" value="{PHP.L.Delete}" class="confirmLink btn btn-default btn-{PHP.R.admin-config-buttonsize2}">
												<!--//<a title="{PHP.L.Delete}" href="{ADMIN_TAGS_DEL_URL}" class="ajax button">{PHP.L.Delete}</a>//-->
											</form>
										</td>
									</tr>
<!-- END: ADMIN_TAGS_ROW -->
								</tbody>
							</table>

							<p class="text-center">{PHP.L.Total}: {ADMIN_TAGS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_TAGS_COUNTER_ROW}</p>
<!-- IF {ADMIN_TAGS_PAGNAV} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_TAGS_PAGINATION_PREV}{ADMIN_TAGS_PAGNAV}{ADMIN_TAGS_PAGINATION_NEXT}</ul>
							</div>
<!-- ENDIF -->
						</div>
					</div>
				</div>
			</div>

<!-- END: MAIN -->