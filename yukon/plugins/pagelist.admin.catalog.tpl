<!-- BEGIN: MAIN -->
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: PAGE_ROW -->
								<tr>
									<td class="w-20">
										{PAGE_ROW_BEGIN_STAMP|cot_date('j M Y', $this)}
									</td>
									<td class="w-35">
										<a href="{PAGE_ROW_URL}">{PAGE_ROW_TITLE}</a>
									</td>
									<td class="w-20">
										{PAGE_ROW_SHOP_SERIAL}
									</td>
									<td class="w-25 text-end">
										{PHP.R.icon-eye} {PAGE_ROW_HITS}
									</td>
								</tr>
<!-- END: PAGE_ROW -->
							</table>
						</div>
<!-- END: MAIN -->
