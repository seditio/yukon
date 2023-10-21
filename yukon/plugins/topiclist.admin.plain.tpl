<!-- BEGIN: MAIN -->
<div class="table-responsive">
	<table class="table table-striped">
		<tbody>
			<!-- BEGIN: PAGE_ROW -->
			<tr class="{PAGE_ROW_ODDEVEN}">
				<td class="text-end">
					{PAGE_ROW_NUM}.
				</td>
				<td class="align-middle">
					<a href="{PAGE_ROW_URL}" class="lh-sm d-block">{PAGE_ROW_TITLE}</a>
				</td>
				<td class="text-end text-nowrap">
					{PHP.R.icon-eye} {PAGE_ROW_VIEWCOUNT}
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
		</tbody>
	</table>
</div>

<!-- IF {PAGE_TOP_PAGINATION} -->
<nav aria-label="Topics Pagination">
	<ul class="pagination pagination-sm justify-content-center">
		{PAGE_TOP_PAGEPREV}{PAGE_TOP_PAGINATION}{PAGE_TOP_PAGENEXT}
	</ul>
</nav>
<!-- ENDIF -->
<!-- END: MAIN -->
