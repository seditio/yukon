<!-- BEGIN: MAIN -->
					<div class="block">
						<h2>{PHP.R.icon-comments}{PHP.L.comments_comments}</h2>
						<div class="wrapper">
							<table class="table table-striped">
<!-- BEGIN: PAGEROW -->
								<tr>
									<td>
										<p class="fw-bold mb-1">{PAGEROW_DATE_STAMP|cot_date('d.m.y', $this)}: <a href="{PAGEROW_URL}">{PAGEROW_PAGE_SHORTTITLE}</a></p>
										<div class="in0">{PAGEROW_TEXT|cot_cutstring($this,'180')}</div>
									</td>
								</tr>
<!-- END: PAGEROW -->
							</table>
							<a href="{PHP|cot_url('admin', 'm=other&p=comments')}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class} mt-{PHP.R.admin-button-group-margin}">
								{PHP.R.icon-hand-point-right}Все комментарии
							</a>
						</div>
					</div>
<!-- END: MAIN -->
