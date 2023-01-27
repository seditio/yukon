<!-- BEGIN: MAIN -->
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: PAGE_ROW -->
								<tr>
									<td class="w-20">
										{PAGE_ROW_DATE_STAMP|cot_date('j M Y', $this)}
									</td>
									<td class="w-55">
										<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a>
									</td>
									<td class="w-25 text-end text-nowrap">
										{PHP.R.icon-eye} {PAGE_ROW_COUNT}
									</td>
								</tr>
<!-- END: PAGE_ROW -->
							</table>
						</div>
<!-- END: MAIN -->
