<!-- BEGIN: MAIN -->
<div class="wrapper">
	<div class="table-responsive">
		<table class="table table-striped">
			<!-- BEGIN: PAGE_ROW -->
			<tr>
				<td class="text-end">
					{PAGE_ROW_NUM}.
				</td>
				<td>
					<a href="{PAGE_ROW_CODE|cot_url('page', c=$this)}">{PAGE_ROW_TITLE}</a>
				</td>
				<td class="text-end text-nowrap">
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
