<!-- BEGIN: MAIN -->
<div class="wrapper">
	<div class="table-responsive">
		<table class="table table-striped">
			<!-- BEGIN: PAGE_ROW -->
			<tr>
				<td class="w-25 text-nowrap">
					{PAGE_ROW_CREATED_STAMP|cot_date('j M Y', $this)}
				</td>
				<td class="w-50">
					<a href="{PAGE_ROW_URL}">{PAGE_ROW_TITLE}</a>
				</td>
				<td class="w-25 text-end text-nowrap">
					{PHP.R.icon-eye} {PAGE_ROW_HITS}
				</td>
			</tr>
			<!-- END: PAGE_ROW -->
			<!-- BEGIN: NO_ROW -->
						<tr>
							<td colSpan="3">
								{PHP.L.nf}
							</td>
						</tr>
			<!-- END: NO_ROW -->
		</table>
	</div>
</div>
<!-- END: MAIN -->
