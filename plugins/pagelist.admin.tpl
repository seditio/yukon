<!-- BEGIN: MAIN -->
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: PAGE_ROW -->
								<tr>
									<td>{PAGE_ROW_DATE_STAMP|cot_date('j M Y', $this)}</td>
									<td>
										<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a> <span class="pull-right">{PAGE_ROW_COUNT|cot_declension($this,'Hits')}</span>
									</td>
								</tr>
<!-- END: PAGE_ROW -->
							</table>
						</div>
<!-- END: MAIN -->