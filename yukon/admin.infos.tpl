<!-- BEGIN: MAIN -->
			<div class="row">
				<div class="col-12">
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
