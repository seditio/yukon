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
						<h5>{PHP.L.Pages} ({ADMIN_PAGE_TOTALDBPAGES})</h5>
						<div class="wrapper">
							<div class="btn-group">
								<a title="{PHP.L.Configuration}" href="{ADMIN_PAGE_URL_CONFIG}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
								<a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-bars"></i> {PHP.L.adm_extrafields}</a>
								<a href="{ADMIN_PAGE_URL_STRUCTURE}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-sitemap"></i> {PHP.L.Categories}</a></li>
								<a href="{ADMIN_PAGE_URL_ADD}" class="btn btn-primary btn-{PHP.R.admin-config-buttonsize1}"><i class="fa fa-plus"></i> {PHP.L.page_addtitle}</a>
							</div>
						</div>
					</div>
					<div class="block">
						<h5>{PHP.L.Pages}:</h5>
						<div class="wrapper">
							<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th colspan="4">
												<input type="hidden" name="paction" value="" />
												<!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY}<!-- ENDIF --> {PHP.L.Show} {ADMIN_PAGE_FILTER}
												<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="btn btn-primary"><i class="fa fa-filter"></i> {PHP.L.Filter}</button>
											</th>
										</tr>
										<tr>
											<th class="width5">
												<!-- IF {PHP.cfg.jquery} -->
												<input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
												<!-- ENDIF -->
											</th>
											<th class="width5">{PHP.L.Id}</th>
											<th class="width50">{PHP.L.Title}</th>
											<th class="width40">{PHP.L.Action}</th>
										</tr>
									</thead>
<!-- BEGIN: PAGE_ROW -->
									<tr>
										<td class="text-center {ADMIN_PAGE_ODDEVEN}">
											<input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox" />
										</td>
										<td class="text-center {ADMIN_PAGE_ODDEVEN}">
											{ADMIN_PAGE_ID}
										</td>
										<td class="{ADMIN_PAGE_ODDEVEN}">
											<div id="mor_{PHP.ii}" class='mor_info_on_off'>
												<span class="strong" style="cursor:hand;">{ADMIN_PAGE_SHORTTITLE} ({ADMIN_PAGE_COUNT})</span>
												<div class="moreinfo">
													<hr />
													<table class="flat">
														<tr>
															<td class="width20">{PHP.L.Category}:</td>
															<td class="width80">{ADMIN_PAGE_CATPATH_SHORT}</td>
														</tr>
														<tr>
															<td>{PHP.L.Description}:</td>
															<td>{ADMIN_PAGE_DESC}</td>
														</tr>
														<tr>
															<td>{PHP.L.Text}:</td>
															<td>{ADMIN_PAGE_TEXT}</td>
														</tr>
													</table>
												</div>
											</div>
										</td>
										<td class="action {ADMIN_PAGE_ODDEVEN} centerall">
											<div class="btn-group">
<!-- IF {PHP.row.page_state} == 1 -->
												<a title="{PHP.L.Validate}" href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="confirmLink btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-flag-checkered"></i> <span>{PHP.L.Validate}</span></a>
<!-- ENDIF -->
												<a title="{PHP.L.Delete}" href="{ADMIN_PAGE_URL_FOR_DELETED}" class="confirmLink btn btn-danger btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-times"></i> <span>{PHP.L.short_delete}</span></a>
												<a title="{PHP.L.Open}" href="{ADMIN_PAGE_ID_URL}" target="_blank" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-folder-open"></i> <span>{PHP.L.short_open}</span></a>
												<a title="{PHP.L.Edit}" href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-edit"></i> <span>{PHP.L.Edit}</span></a>
											</div>
										</td>
									</tr>
<!-- END: PAGE_ROW -->
<!-- IF {PHP.is_row_empty} -->
									<tr>
										<td class="centerall" colspan="4">{PHP.L.None}</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td colspan="4" class="centerall">
											<div class="btn-group">
<!-- IF {PHP.filter} != {PHP.L.adm_validated} -->
												<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="confirm btn btn-primary">
													<i class="fa fa-flag-checkered"></i> <span>{PHP.L.Validate}</span>
												</button>
<!-- ENDIF -->
												<button name="paction" type="submit" onclick="this.form.paction.value=this.value" class="btn btn-danger"><i class="fa fa-times"></i> <span>{PHP.L.Delete}</span></button>
											</div>
										</td>
									</tr>
								</table>
								<p class="text-center">{PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_PAGE_ON_PAGE}</p>
<!-- IF {ADMIN_PAGE_PAGNAV} -->
								<div class="text-{PHP.R.admin-config-pagialign}">
									<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}</ul>
								</div>
<!-- ENDIF -->
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->