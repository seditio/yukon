<!-- BEGIN: MAIN -->
<div class="block">
	<h2>{PHP.R.icon-comments}{PHP.L.comments_comments}</h2>
	<div class="wrapper">
		<div class="{PHP.R.admin-table-responsive-container-class}">
			<table class="table table-striped">
				<!-- BEGIN: PAGE_ROW -->
				<tr>
					<td>
						<p class="fw-bold mb-1">
							{PAGE_ROW_DATE_STAMP|cot_date('H:i d.m.y', $this)}:
							<!-- IF {PAGE_ROW_AREA} == 'page' -->
							<!-- IF {PAGE_ROW_CODE_IS_NUMERIC} -->
							<a href="{PAGE_ROW_PAGE_URL}#com{PAGE_ROW_ID}">{PAGE_ROW_PAGE_TITLE} ({PHP.L.Page})</a>
							<!-- ELSE -->
							<a href="{PAGE_ROW_CAT_URL}#com{PAGE_ROW_ID}">{PAGE_ROW_CAT_TITLE} ({PHP.L.Section})</a>
							<!-- ENDIF -->
							<!-- ENDIF -->
							<!-- IF {PAGE_ROW_AREA} == 'polls' -->
							<a href="{PAGE_ROW_POLL_URL}#com{PAGE_ROW_ID}">{PAGE_ROW_POLL_TITLE} ({PHP.L.Poll})</a>
							<!-- ENDIF -->
						</p>
						<div class="in0 mb-1">
							{PAGE_ROW_TEXT_PLAIN|cot_cutstring($this,'180')}
						</div>
						<p class="mb-0 text-end">
							{PAGE_ROW_AUTHORNAME}
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
</div>
<!-- END: MAIN -->
