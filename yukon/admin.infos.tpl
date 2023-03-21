<!-- BEGIN: MAIN -->
			<div class="row">
				<div class="col-md-4">
					<div class="block">
						<h2>{PHP.L.adm_core_info}:</h2>
						<div class="wrapper">
							<div class="{PHP.R.admin-table-responsive-container-class}">
								<table class="{PHP.R.admin-table-class}">
									<tr>
										<td class="text-end w-50">{PHP.L.Version}</td>
										<td class="w-50">{ADMIN_INFOS_VERSION}</td>
									</tr>
									<tr>
										<td class="text-end">{PHP.L.Database}</td>
										<td>{ADMIN_INFOS_DB_VERSION}</td>
									</tr>
									<tr>
										<td class="text-end">{PHP.L.home_db_rows}</td>
										<td>{ADMIN_INFOS_DB_TOTAL_ROWS}</td>
									</tr>
									<tr>
										<td class="text-end">{PHP.L.home_db_indexsize}</td>
										<td>{ADMIN_INFOS_DB_INDEXSIZE}</td>
									</tr>
									<tr>
										<td class="text-end">{PHP.L.home_db_datassize}</td>
										<td>{ADMIN_INFOS_DB_DATASSIZE}</td>
									</tr>
									<tr>
										<td class="text-end">{PHP.L.home_db_totalsize}</td>
										<td>{ADMIN_INFOS_DB_TOTALSIZE}</td>
									</tr>
									<tr>
										<td class="text-end">{PHP.L.Plugins}</td>
										<td>{ADMIN_INFOS_TOTALPLUGINS}</td>
									</tr>
									<tr>
										<td class="text-end">{PHP.L.Hooks}</td>
										<td>{ADMIN_INFOS_TOTALHOOKS}</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8">
					<div class="block">
						<h2>{PHP.R.icon-gears}{PHP.L.adm_infos}</h2>
						<div class="wrapper">
							<div class="{PHP.R.admin-table-responsive-container-class}">
								<table class="{PHP.R.admin-table-class}">
									<tbody>
										<tr>
											<td class="text-end w-50">{PHP.L.adm_phpver}</td>
											<td class="w-50">{ADMIN_INFOS_PHPVER}</td>
										</tr>
										<tr>
											<td class="text-end">{PHP.L.adm_zendver}</td>
											<td>{ADMIN_INFOS_ZENDVER}</td>
										</tr>
										<tr>
											<td class="text-end">{PHP.L.adm_interface}</td>
											<td>{ADMIN_INFOS_INTERFACE}</td>
										</tr>
<!-- IF {ADMIN_INFOS_CACHEDRIVERS} -->
										<tr>
											<td class="text-end">{PHP.L.adm_cachedrivers}</td>
											<td>{ADMIN_INFOS_CACHEDRIVERS}</td>
										</tr>
<!-- ENDIF -->
										<tr>
											<td class="text-end">{PHP.L.adm_os}</td>
											<td>{ADMIN_INFOS_OS}</td>
										</tr>
										<tr>
											<td class="text-end">{PHP.L.adm_time1}</td>
											<td>{ADMIN_INFOS_DATE}</td>
										</tr>
										<tr>
											<td class="text-end">{PHP.L.adm_time2}</td>
											<td>{ADMIN_INFOS_GMDATE} GMT</td>
										</tr>
										<tr>
											<td class="text-end">{PHP.L.adm_time3}</td>
											<td>{ADMIN_INFOS_GMTTIME}</td>
										</tr>
										<tr>
											<td class="text-end">{PHP.L.adm_time4}</td>
											<td>{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->
