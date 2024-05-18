<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-sitemap}{PHP.L.Structure}</h2>
			<div class="wrapper">
				<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
					<a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-bars}{PHP.L.adm_extrafields}</a>
					<a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" title="{PHP.L.adm_tpl_resyncalltitle}">{PHP.R.icon-refresh}{PHP.L.Resync}</a>
					<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
					<a href="{ADMIN_STRUCTURE_I18N_URL}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.L.i18n_structure}</a>
					<!-- ENDIF -->
				</div>

				<!-- BEGIN: OPTIONS -->
				<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-25">{PHP.L.Parameter}</th>
									<th class="w-75">{PHP.L.Value}</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="">{PHP.L.Path}:</td>
									<td class="">{ADMIN_STRUCTURE_PATH}</td>
								</tr>
								<tr>
									<td>{PHP.L.Code}:</td>
									<td>{ADMIN_STRUCTURE_CODE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Title}:</td>
									<td>{ADMIN_STRUCTURE_TITLE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Description}:</td>
									<td>{ADMIN_STRUCTURE_DESC}</td>
								</tr>
								<tr>
									<td>{PHP.L.Icon}:</td>
									<td>{ADMIN_STRUCTURE_ICON}</td>
								</tr>
								<tr>
									<td>{PHP.L.Locked}:</td>
									<td>{ADMIN_STRUCTURE_LOCKED}</td>
								</tr>
								<!-- IF {ADMIN_STRUCTURE_TPL} -->
								<tr>
									<td>{PHP.L.adm_tpl_mode}:</td>
									<td>
										{ADMIN_STRUCTURE_TPL}
									</td>
								</tr>
								<!-- ENDIF -->
								<!-- BEGIN: EXTRAFLD -->
								<tr>
									<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
									<td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_EXTRAFLD}</td>
								</tr>
								<!-- END: EXTRAFLD -->
							</tbody>
						</table>
					</div>
					<!-- BEGIN: CONFIG -->
					{CONFIG_HIDDEN}
					{ADMIN_CONFIG_EDIT_CUSTOM}
					<div class="{PHP.R.admin-table-responsive-container-class} mt-3">
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-25">{PHP.L.Parameter}</th>
									<th class="w-65">{PHP.L.Value}</th>
									<th class="w-10">{PHP.L.Reset}</th>
								</tr>
							</thead>
							<tbody>
								<!-- BEGIN: ADMIN_CONFIG_ROW -->
								<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
								<tr>
									<td class="group_begin" colspan="3">
										<h4 class="my-2">{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
									</td>
								</tr>
								<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
								<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
								<tr class="{PHP.R.admin-table-tr-class}">
									<td class="text-start">{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
									<td class="text-start">
										{ADMIN_CONFIG_ROW_CONFIG}
										<div class="form-text">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
									</td>
									<td class="action">
										<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-refresh}<span>{PHP.L.Reset}</span>
										</a>
									</td>
								</tr>
								<!-- END: ADMIN_CONFIG_ROW_OPTION -->
								<!-- END: ADMIN_CONFIG_ROW -->
							</tbody>
						</table>
					</div>
					<!-- END: CONFIG -->
					<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class} mt-3">{PHP.R.icon-refresh}{PHP.L.Update}</button>
				</form>
				<!-- END: OPTIONS -->

				<!-- BEGIN: DEFAULT -->
				<!-- IF {ADMIN_STRUCTURE_TOTALITEMS} > 0 -->
				<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-10">{PHP.L.Path}</th>
									<th class="w-20">{PHP.L.Code}</th>
									<th class="w-25">{PHP.L.Title}</th>
									<th class="w-10">{PHP.L.TPL}</th>
									<th class="w-10">{PHP.L.Pages}</th>
									<th class="w-35">{PHP.L.Action}</th>
								</tr>
							</thead>
							<!-- BEGIN: ROW -->
							<tr class="{PHP.R.admin-table-tr-class} {ADMIN_STRUCTURE_ODDEVEN}">
								<td>{ADMIN_STRUCTURE_PATH}</td>
								<td>{ADMIN_STRUCTURE_CODE}</td>
								<td>{ADMIN_STRUCTURE_TITLE}</td>
								<td>{ADMIN_STRUCTURE_TPL_CODE}</td>
								<td>{ADMIN_STRUCTURE_COUNT}</td>
								<td class="action">
									<div class="btn-group">
										<a href="{ADMIN_STRUCTURE_OPTIONS_URL}" title="{PHP.L.Config}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-gear}<span>{PHP.L.Config}</span></a>
										<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} -->
										<a title="{PHP.L.Rights}" href="{ADMIN_STRUCTURE_RIGHTS_URL}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-lock}<span>{PHP.L.Rights}</span></a>
										<!-- ENDIF -->
										<!-- IF {ADMIN_STRUCTURE_CAN_DELETE} -->
										<a title="{PHP.L.Delete}" href="{ADMIN_STRUCTURE_DELETE_CONFIRM_URL}" class="confirmLink btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
										<!-- ENDIF -->
										<a href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.Pages}" class="button btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
									</div>
								</td>
							</tr>
							<!-- END: ROW -->
							<tr>
								<td colspan="6">
									<button type="submit" class="btn {PHP.R.admin-button-success-class}">
										{PHP.R.icon-refresh}{PHP.L.Update}
									</button>
								</td>
							</tr>
						</table>
					</div>
				</form>
				<p class="{PHP.R.admin-pagination-p-class}">
					{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, <span class="text-lowercase">{PHP.L.Onpage}:</span> {ADMIN_STRUCTURE_COUNTER_ROW}
				</p>
				<!-- IF {ADMIN_STRUCTURE_PAGNAV} -->
				<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Structure Pagination">
					<ul class="pagination {PHP.R.admin-pagination-list-class}">
						{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT}
					</ul>
				</nav>
				<!-- ENDIF -->
				<!-- ENDIF -->
				<!-- END: DEFAULT -->

			</div>
		</div>

		<!-- BEGIN: NEWCAT -->
		<div class="block">
			<h2>{PHP.R.icon-plus}{PHP.L.Add}:</h2>
			<div class="wrapper">
				<form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<tbody>
								<tr>
									<td class="w-20">{PHP.L.Path}:</td>
									<td class="w-80">
										{ADMIN_STRUCTURE_PATH}
										<div class="form-text">{PHP.L.adm_required}</div>
									</td>
								</tr>
								<tr>
									<td>{PHP.L.Code}:</td>
									<td>
										{ADMIN_STRUCTURE_CODE}
										<div class="form-text">{PHP.L.adm_required}</div>
									</td>
								</tr>
								<tr>
									<td>{PHP.L.Title}:</td>
									<td>
										{ADMIN_STRUCTURE_TITLE}
										<div class="form-text">{PHP.L.adm_required}</div>
									</td>
								</tr>
								<tr>
									<td>{PHP.L.Description}:</td>
									<td>{ADMIN_STRUCTURE_DESC}</td>
								</tr>
								<tr>
									<td>{PHP.L.Icon}:</td>
									<td>{ADMIN_STRUCTURE_ICON}</td>
								</tr>
								<tr>
									<td>{PHP.L.Locked}:</td>
									<td>{ADMIN_STRUCTURE_LOCKED}</td>
								</tr>
								<!-- BEGIN: EXTRAFLD -->
								<tr>
									<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
									<td>{ADMIN_STRUCTURE_EXTRAFLD}</td>
								</tr>
								<!-- END: EXTRAFLD -->
								<tr>
									<td colspan="2">
										<button type="submit" class="btn {PHP.R.admin-button-success-class}">{PHP.R.icon-plus}{PHP.L.Add}</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>
		<!-- END: NEWCAT -->
	</div>
</div>
<!-- END: MAIN -->

<!-- BEGIN: LIST -->
<div class="row">
	<div class="col-12 col-xl-8 offset-xl-2 col-xxl-6 offset-xxl-3">
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Modules}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
						<tbody>
							<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
							<tr>
								<td class="d-flex">
									<figure class="mt-1 mx-2 mb-0">
										{ADMIN_STRUCTURE_EXT_ICON}
									</figure>
									<div class="flex-fill">
										<a href="{ADMIN_STRUCTURE_EXT_URL}" class="d-block fw-bold">
											{ADMIN_STRUCTURE_EXT_NAME}
										</a>
										<p class="lh-sm mb-0">
											{ADMIN_STRUCTURE_EXT_DESC}
										</p>
									</div>
								</td>
							</tr>
							<!-- END: ADMIN_STRUCTURE_EXT -->
							<!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
							<tr>
								<td>{PHP.L.adm_listisempty}</td>
							</tr>
							<!-- END: ADMIN_STRUCTURE_EMPTY -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: LIST -->
