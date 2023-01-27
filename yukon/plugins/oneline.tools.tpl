<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.info_name}</h2>
			<div class="wrapper">
				<form action="{ONELINE_UPDURL}" method="post">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<div class="d-inline-block mb-3">
							<div class="input-group input-group-sm">
								<label class="input-group-text">{PHP.L.Section}</label>
								{ONELINE_FILTER_SELECT}
								<button type="submit" class="btn {PHP.R.admin-button-primary-class}">{PHP.R.icon-filter}{PHP.L.Filter}</button>
							</div>
						</div>
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th>ID</th>
<!-- IF {PHP.cfg.plugin.oneline.display_date} -->
									<th>{PHP.L.Date}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price1} -->
									<th>{PHP.L.oneline_price1}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price1a} -->
									<th>{PHP.L.oneline_price1a}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price2} -->
									<th>{PHP.L.oneline_price2}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price2a} -->
									<th>{PHP.L.oneline_price2a}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_text} -->
									<th>{PHP.L.Text}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_extra1} -->
									<th>{PHP.L.oneline_extra1}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_extra2} -->
									<th>{PHP.L.oneline_extra2}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_link} -->
									<th>{PHP.L.Link}</th>
<!-- ENDIF -->
									<th>{PHP.L.Section}</th>
									<th>{PHP.L.Action}</th>
								</tr>
							</thead>
							<tbody>
<!-- BEGIN: ONELINE_ROW -->
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>{ONELINE_ID}.</td>
<!-- IF {PHP.cfg.plugin.oneline.display_date} -->
									<td>
										{ONELINE_DATE}
									</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price1} -->
									<td>{ONELINE_PRICE1}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price1a} -->
									<td>{ONELINE_PRICE1A}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price2} -->
									<td>{ONELINE_PRICE2}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price2a} -->
									<td>{ONELINE_PRICE2A}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_text} -->
									<td>{ONELINE_TEXT}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_extra1} -->
									<td>{ONELINE_EXTRA1}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_extra2} -->
									<td>{ONELINE_EXTRA2}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_link} -->
									<td>{ONELINE_LINK}</td>
<!-- ENDIF -->
									<td><div class="input-group">{ONELINE_SECTION}</div></td>
									<td>
										<div class="btn-group">
<!-- IF {PHP.cfg.plugin.oneline.showopen} -->
											<a title="{PHP.L.Open}" href="{ONELINE_SECTION_RAW|cot_url('page','c=$this')}" target="_blank" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}{PHP.L.Open}</a>
<!-- ENDIF -->
											<a title="{PHP.L.Delete}" href="{ONELINE_DELURL}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}{PHP.L.Delete}</a>
										</div>
									</td>
								</tr>
<!-- END: ONELINE_ROW -->
<!-- BEGIN: ONELINE_NOROW -->
								<tr>
									<td colspan="7">{PHP.L.None}</td>
								</tr>
<!-- END: ONELINE_NOROW -->
								<tr>
									<td colspan="7">
										<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-refresh}{PHP.L.Update}</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>

				<p class="{PHP.R.admin-pagination-p-class}">
					{PHP.L.Total}: {ONELINE_TOTAL}
<!-- IF {PHP.cfg.plugin.oneline.pagination} -->
					, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ONELINE_ONPAGE}
<!-- ENDIF -->
				</p>
<!-- IF {PHP.cfg.plugin.oneline.pagination} -->
				<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Oneline Info Pagination">
					<ul class="pagination {PHP.R.admin-pagination-list-class}">
						{ONELINE_PREV}{ONELINE_PAGINATION}{ONELINE_NEXT}
					</ul>
				</nav>
<!-- ENDIF -->
			</div>
		</div>

		<div class="block">
			<h2>{PHP.R.icon-plus}{PHP.L.Add}</h2>
			<div class="wrapper">
				<form action="{ONELINE_ADDURL}" method="post" name="pageform">
					<table class="table table-bordered">
<!-- IF {PHP.cfg.plugin.oneline.display_date} -->
						<tr>
							<td class="w-15">{PHP.L.Date}</td>
							<td class="w-85">{ONELINE_ADDDATE}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price1} -->
						<tr>
							<td>{PHP.L.oneline_price1}</td>
							<td>{ONELINE_ADDPRICE1}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price1a} -->
						<tr>
							<td>{PHP.L.oneline_price1a}</td>
							<td>{ONELINE_ADDPRICE1A}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price2} -->
						<tr>
							<td>{PHP.L.oneline_price2}</td>
							<td>{ONELINE_ADDPRICE2}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price2a} -->
						<tr>
							<td>{PHP.L.oneline_price2a}</td>
							<td>{ONELINE_ADDPRICE2A}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_text} -->
						<tr>
							<td>{PHP.L.Text}</td>
							<td>{ONELINE_ADDTEXT}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_extra1} -->
						<tr>
							<td>{PHP.L.oneline_extra1}</td>
							<td>{ONELINE_ADDEXTRA1}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_extra2} -->
						<tr>
							<td>{PHP.L.oneline_extra2}</td>
							<td>{ONELINE_ADDEXTRA2}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_link} -->
						<tr>
							<td>{PHP.L.Link}</td>
							<td>{ONELINE_ADDLINK}</td>
						</tr>
<!-- ENDIF -->
						<tr>
							<td>{PHP.L.Section}</td>
							<td>{ONELINE_ADDSECTION}</td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="submit" name="rpaste" value="ok" class="btn {PHP.R.admin-button-primary-class}">{PHP.R.icon-plus}{PHP.L.Add}</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>

	</div>
</div>
<!-- END: MAIN -->
