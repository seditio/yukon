<!-- BEGIN: MAIN -->
					<div class="block">
						<h2>{PHP.R.icon-comments}{PHP.L.comments_comments}</h2>
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: PAGE_ROW -->
								<tr>
									<td>
										<p class="fw-bold mb-1">
											{PAGE_ROW_COMLIST_DATE_STAMP|cot_date('d.m.y', $this)}: <a href="{PAGE_ROW_COMLIST_URL}">{PAGE_ROW_SHORTTITLE}</a>
										</p>
										<div class="in0 mb-1">{PAGE_ROW_COMLIST_TEXT_PLAIN|cot_cutstring($this,'180')}</div>
										<p class="mb-0 text-end">
											{PAGE_ROW_COMLIST_AUTHOR}
										</p>
									</td>
								</tr>
<!-- END: PAGE_ROW -->
							</table>
							<a href="{PHP|cot_url('admin', 'm=other&p=comments')}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class} mt-{PHP.R.admin-button-group-margin}">
								{PHP.R.icon-hand-point-right}Все комментарии
							</a>
						</div>
					</div>
<!-- END: MAIN -->
