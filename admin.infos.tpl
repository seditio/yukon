<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
					<div class="block">
						<h5>{PHP.L.Info}</h5>
						<div class="wrapper">
							<table class="table table-striped">
								<tr>
									<td class="width60">{PHP.L.adm_phpver}</td>
									<td class="text-right width40">{ADMIN_INFOS_PHPVER}</td>
								</tr>
								<tr>
									<td>{PHP.L.adm_zendver}</td>
									<td class="text-right">{ADMIN_INFOS_ZENDVER}</td>
								</tr>
								<tr>
									<td>{PHP.L.adm_interface}</td>
									<td class="text-right">{ADMIN_INFOS_INTERFACE}</td>
								</tr>
<!-- IF {ADMIN_INFOS_CACHEDRIVERS} -->
								<tr>
									<td>{PHP.L.adm_cachedrivers}</td>
									<td class="text-right">{ADMIN_INFOS_CACHEDRIVERS}</td>
								</tr>
<!-- ENDIF -->
								<tr>
									<td>{PHP.L.adm_os}</td>
									<td class="text-right">{ADMIN_INFOS_OS}</td>
								</tr>
								<tr>
									<td>{PHP.L.adm_time1}</td>
									<td class="text-right">{ADMIN_INFOS_DATE}</td>
								</tr>
								<tr>
									<td>{PHP.L.adm_time2}</td>
									<td class="text-right">{ADMIN_INFOS_GMDATE} GMT</td>
								</tr>
								<tr>
									<td>{PHP.L.adm_time3}</td>
									<td class="text-right">{ADMIN_INFOS_GMTTIME}</td>
								</tr>
								<tr>
									<td>{PHP.L.adm_time4}</td>
									<td class="text-right">{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->