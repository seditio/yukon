<!-- BEGIN: MAIN -->
<!-- BEGIN: PAGE_ROW -->
<div class="block">
	<h2 class="text-truncate">{PHP.R.icon-code}{PAGE_ROW_SHOP_COUNTRY_1}, {PAGE_ROW_SHOP_COUNTRY_2}</h2>
	<div class="wrapper">
		<table class="table work mb-0">
			<tr>
				<td>{PHP.L.Monday}</td>
				<td class="text-end">{PAGE_ROW_ID|cot_get_workinghours($this)|cot_decompile_hours($this, 1)}</td>
			</tr>
			<tr>
				<td>{PHP.L.Tuesday}</td>
				<td class="text-end">{PAGE_ROW_ID|cot_get_workinghours($this)|cot_decompile_hours($this, 2)}</td>
			</tr>
			<tr>
				<td>{PHP.L.Wednesday}</td>
				<td class="text-end">{PAGE_ROW_ID|cot_get_workinghours($this)|cot_decompile_hours($this, 3)}</td>
			</tr>
			<tr>
				<td>{PHP.L.Thursday}</td>
				<td class="text-end">{PAGE_ROW_ID|cot_get_workinghours($this)|cot_decompile_hours($this, 4)}</td>
			</tr>
			<tr>
				<td>{PHP.L.Friday}</td>
				<td class="text-end">{PAGE_ROW_ID|cot_get_workinghours($this)|cot_decompile_hours($this, 5)}</td>
			</tr>
			<tr>
				<td>{PHP.L.Saturday}</td>
				<td class="text-end">{PAGE_ROW_ID|cot_get_workinghours($this)|cot_decompile_hours($this, 6)}</td>
			</tr>
			<tr>
				<td>{PHP.L.Sunday}</td>
				<td class="text-end">{PAGE_ROW_ID|cot_get_workinghours($this)|cot_decompile_hours($this, 7)}</td>
			</tr>
		</table>
	</div>
</div>
<!-- END: PAGE_ROW -->
<!-- END: MAIN -->
