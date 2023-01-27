<!-- BEGIN: MAIN -->
					<div class="block">
						<h2>{PHP.R.icon-plug}{PHP.L.admin-newcomments}</h2>
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: PAGECOM_ROW -->
								<tr>
									<td>
										<p>{PAGECOM_ROW_DATE_STAMP|cot_date('d.m.y', $this)}: <a href="{PAGECOM_ROW_URL}">{PAGECOM_ROW_PAGE_SHORTTITLE}</a></p>
										{PAGECOM_ROW_TEXT|cot_cutstring($this,'200')}
									</td>
								</tr>
<!-- END: PAGECOM_ROW -->
							</table>
						</div>
					</div>
<!-- END: MAIN -->
