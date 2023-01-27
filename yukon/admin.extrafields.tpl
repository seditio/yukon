<!-- BEGIN: MAIN -->
			<div class="row">
				<div class="col-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="block">
						<h2>{PHP.R.icon-gears}{PHP.L.adm_extrafields}</h2>
						<div class="wrapper">

<!-- BEGIN: TABLELIST -->
							<div class="{PHP.R.admin-table-responsive-container-class}">
								<div class="btn-group mb-{PHP.R.admin-button-group-margin}">
									<a class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}" href="{ADMIN_EXTRAFIELDS_ALLTABLES}">{PHP.R.icon-bars}{PHP.L.adm_extrafields_all}</a>
								</div>
								<table class="{PHP.R.admin-table-class}">
									<tbody>
<!-- BEGIN: ROW -->
										<tr class="{PHP.R.admin-table-tr-class}">
											<td class="w-5">
<!-- IF {ADMIN_EXTRAFIELDS_ROW_ICON} -->
												{ADMIN_EXTRAFIELDS_ROW_ICON}
<!-- ELSE -->
												{PHP.R.admin_icon_plugin}
<!-- ENDIF -->
											</td>
											<td class="w-25">{ADMIN_EXTRAFIELDS_ROW_ITEMNAME}</td>
											<td class="w-25">{ADMIN_EXTRAFIELDS_ROW_TABLE}</td>
											<td class="w-25">{ADMIN_EXTRAFIELDS_ROW_TYPE}</td>
											<td class="w-20 action">
												<div class="btn-group">
													<a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}" class="btn {PHP.R.admin-button-secondary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.Open}</span></a>
												</div>
											</td>
										</tr>
<!-- END: ROW -->
									</tbody>
								</table>
							</div>
<!-- END: TABLELIST -->

<!-- BEGIN: TABLE -->
							<form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post">
								<div class="{PHP.R.admin-table-responsive-container-class}">
									<table class="{PHP.R.admin-table-class}">
										<thead>
											<tr class="{PHP.R.admin-table-tr-class}">
												<th class="w-5">#</th>
												<th class="w-45">{PHP.L.extf_Name} / {PHP.L.extf_Type}</th>
												<th class="w-35">{PHP.L.adm_extrafield_params}</th>
												<th class="w-15">{PHP.L.Action}</th>
											</tr>
										</thead>
										<tbody>
<!-- BEGIN: EXTRAFIELDS_ROW -->
											<tr id="ex{ADMIN_EXTRAFIELDS_ROW_ID}" class="{PHP.R.admin-table-tr-class} {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
												<td>
													{ADMIN_EXTRAFIELDS_ROW_ENABLED}
												</td>
												<td class="text-start align-top">

													{ADMIN_EXTRAFIELDS_ROW_NAME}
													<p class="form-text">{PHP.L.Name}</p>
													{ADMIN_EXTRAFIELDS_ROW_DESCRIPTION}
													<p class="form-text">{PHP.L.extf_Description}</p>
													{ADMIN_EXTRAFIELDS_ROW_HTML}
													<p class="form-text">{PHP.L.extf_Base_HTML}</p>

													<div class="input-group input-group-sm">
														<label class="input-group-text text-bg-secondary">{PHP.L.Type}:</label>
														{ADMIN_EXTRAFIELDS_ROW_SELECT}
														<label class="input-group-text text-bg-secondary">{PHP.L.adm_extrafield_parse}:</label>
														{ADMIN_EXTRAFIELDS_ROW_PARSE}
														<label class="input-group-text text-bg-secondary">{PHP.L.adm_extrafield_required}:</label>
														<div class="input-group-text">
															{ADMIN_EXTRAFIELDS_ROW_REQUIRED}
														</div>
													</div>

												</td>
												<td class="text-start align-top">
													<div class="mb-2">{ADMIN_EXTRAFIELDS_ROW_PARAMS}</div>
													{ADMIN_EXTRAFIELDS_ROW_VARIANTS}
													<p class="form-text">{PHP.L.adm_extrafield_selectable_values}</p>
													{ADMIN_EXTRAFIELDS_ROW_DEFAULT}
													<p class="form-text mb-0">{PHP.L.adm_extrafield_default}</p>
												</td>
												<td class="action">
													<a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="ajax btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
												</td>
											</tr>
<!-- END: EXTRAFIELDS_ROW -->
										</tbody>
										<tr>
											<td colspan="5">
												<button type="submit" onclick="location.href='{ADMIN_EXTRAFIELDS_ROW_FORM_URL}'" class="confirm btn {PHP.R.admin-button-primary-class}">{PHP.R.icon-refresh}{PHP.L.Update}</button>
											</td>
										</tr>
									</table>
								</div>
							</form>
							<p class="{PHP.R.admin-pagination-p-class}">
								{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}
							</p>
<!-- IF {ADMIN_EXTRAFIELDS_PAGNAV} -->
							<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Extrafields Pagination">
								<ul class="pagination {PHP.R.admin-pagination-list-class}">
									{ADMIN_EXTRAFIELDS_PAGINATION_PREV}{ADMIN_EXTRAFIELDS_PAGNAV}{ADMIN_EXTRAFIELDS_PAGINATION_NEXT}</ul>
								</ul>
							</nav>
<!-- ENDIF -->
						</div>
					</div>

					<div class="block">
						<h2>{PHP.R.icon-plus}{PHP.L.adm_extrafield_new}:</h2>
						<div class="wrapper">
							<form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
								<div class="{PHP.R.admin-table-responsive-container-class}">
									<table class="{PHP.R.admin-table-class}">
										<thead>
											<tr>
												<th class="w-50">{PHP.L.extf_Name} / {PHP.L.extf_Type}</th>
												<th class="w-50">{PHP.L.adm_extrafield_params}</th>
											</tr>
										</thead>
										<tbody>
											<tr id="exnew">
												<td>

													{ADMIN_EXTRAFIELDS_NAME}
													<p class="form-text">{PHP.L.Name}</p>
													{ADMIN_EXTRAFIELDS_DESCRIPTION}
													<p class="form-text">{PHP.L.extf_Description}</p>
													{ADMIN_EXTRAFIELDS_HTML}
													<p class="form-text">{PHP.L.extf_Base_HTML}</p>

													<div class="input-group input-group-sm">
														<label class="input-group-text text-bg-secondary">{PHP.L.Type}:</label>
														{ADMIN_EXTRAFIELDS_SELECT}
														<label class="input-group-text text-bg-secondary">{PHP.L.adm_extrafield_parse}:</label>
														{ADMIN_EXTRAFIELDS_PARSE}
														<label class="input-group-text text-bg-secondary">{PHP.L.adm_extrafield_required}:</label>
														<div class="input-group-text">
															{ADMIN_EXTRAFIELDS_REQUIRED}
														</div>
													</div>
												</td>
												<td>
													<div class="mb-2">{ADMIN_EXTRAFIELDS_PARAMS}</div>
													{ADMIN_EXTRAFIELDS_VARIANTS}
													<p class="form-text">{PHP.L.adm_extrafield_selectable_values}</p>
													{ADMIN_EXTRAFIELDS_DEFAULT}
													<p class="form-text">{PHP.L.adm_extrafield_default}</p>
													<p class="form-text mb-0">
														<input type="checkbox" name="field_noalter" />
														{PHP.L.adm_extrafield_noalter}
													</p>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<button type="submit" class="confirm btn {PHP.R.admin-button-primary-class}">{PHP.R.icon-plus}{PHP.L.Add}</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</form>
<!-- END: TABLE -->

						</div>
					</div>
				</div>
			</div>

<script type="text/javascript">
//<![CDATA[
	var exFLDHELPERS = "{ADMIN_EXTRAFIELDS_TAGS}";
	var exnovars = "{PHP.L.adm_extrafields_help_notused}";
	var exvariants = "{PHP.L.adm_extrafields_help_variants}";
	var exrange = "{PHP.L.adm_extrafields_help_range}";
	var exdata = "{PHP.L.adm_extrafields_help_data}";
	var exregex = "{PHP.L.adm_extrafields_help_regex}";
	var exfile = "{PHP.L.adm_extrafields_help_file}";
	var exseparator = "{PHP.L.adm_extrafields_help_separator}";
	$(document).ready(function(){
		$('.exfldtype').live("change", function(){
			var exParent = $(this).closest('tr');
			var exvalid =  $(this).attr('value');
			if(exvalid == 'select' || exvalid == 'radio' || exvalid == 'checklistbox')
			{
				$(exParent).find('.exfldvariants').attr('title',exvariants);
				$(exParent).find('.exfldvariants').removeAttr("disabled");
			}
			else
			{
				$(exParent).find('.exfldvariants').attr('title', exnovars);
				$(exParent).find('.exfldvariants').attr('disabled', 'disabled');

			}
			switch(exvalid)
			{
				case 'input':
					$(exParent).find('.exfldparams').attr('title',exregex);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'inputint':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'currency':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'double':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'textarea':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'select':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'checkbox':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'radio':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'datetime':
					$(exParent).find('.exfldparams').attr('title',exdata);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'file':
					$(exParent).find('.exfldparams').attr('title',exfile);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'country':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'range':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'checklistbox':
					$(exParent).find('.exfldparams').attr('title',exseparator);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
			}
			if($(exParent).find('.exfldname').attr('value') != '')
			{
				var exhelper = $(exParent).find('.exfldname').attr('value').toUpperCase();
				exhelper = exFLDHELPERS.replace(/XXXXX/g, exhelper);
				$(exParent).find('.exfldname').attr('title',exhelper);
				$(exParent).find('.exflddesc').attr('title',exhelper);
			}
			else
			{
				$(exParent).find('.exfldname').removeAttr("title");
				$(exParent).find('.exflddesc').removeAttr("title");
			}
		});
		 $(".exfldtype").change();
	});
;
//]]>
</script>
<!-- END: MAIN -->
