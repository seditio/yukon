<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.userimages_title}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-30">{PHP.L.Code}</th>
								<th class="w-15">{PHP.L.userimages_width}, px</th>
								<th class="w-15">{PHP.L.userimages_height}, px</th>
								<th class="w-25">{PHP.L.userimages_cropratio}</th>
								<th class="w-15">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: USERIMG_LIST -->
							<form action="{EDIT_URL}" method="post">
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>{CODE}</td>
									<td>
										<input type="text" name="userimg_width" size="10" value="{WIDTH}" />
									</td>
									<td>
										<input type="text" name="userimg_height" size="10" value="{HEIGHT}" />
									</td>
									<td>
										<select name="userimg_crop">
											<option value="">{PHP.L.userimages_cropnone}</option>
											<option<!-- IF {CROP} == 'fit' --> selected="selected"<!-- ENDIF --> value="fit">{PHP.L.userimages_cropfit}</option>
											<option<!-- IF {CROP} == '1:1' --> selected="selected"<!-- ENDIF --> value="1:1">1:1</option>
											<option<!-- IF {CROP} == '1:2' --> selected="selected"<!-- ENDIF --> value="1:2">1:2</option>
											<option<!-- IF {CROP} == '2:3' --> selected="selected"<!-- ENDIF --> value="2:3">2:3</option>
											<option<!-- IF {CROP} == '3:4' --> selected="selected"<!-- ENDIF --> value="3:4">3:4</option>
											<option<!-- IF {CROP} == '4:5' --> selected="selected"<!-- ENDIF --> value="4:5">4:5</option>
											<option<!-- IF {CROP} == '5:6' --> selected="selected"<!-- ENDIF --> value="5:6">5:6</option>
											<option<!-- IF {CROP} == '2:1' --> selected="selected"<!-- ENDIF --> value="2:1">2:1</option>
											<option<!-- IF {CROP} == '3:2' --> selected="selected"<!-- ENDIF --> value="3:2">3:2</option>
											<option<!-- IF {CROP} == '4:3' --> selected="selected"<!-- ENDIF --> value="4:3">4:3</option>
											<option<!-- IF {CROP} == '5:4' --> selected="selected"<!-- ENDIF --> value="5:4">5:4</option>
											<option<!-- IF {CROP} == '6:5' --> selected="selected"<!-- ENDIF --> value="6:5">6:5</option>
											<option<!-- IF {CROP} == '16:9' --> selected="selected"<!-- ENDIF --> value="16:9">16:9</option>
											<option<!-- IF {CROP} == '16:10' --> selected="selected"<!-- ENDIF --> value="16:10">16:10</option>
										</select>
									</td>
									<td class="action replaceLink">
										<div class="btn-group">
											<button class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}" type="submit">{PHP.R.icon-refresh}<span>{PHP.L.Update}</span></button>
											<a class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}" href="{CODE|cot_url('admin','m=other&p=userimages&a=remove&code=$this')}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
										</div>
									</td>
								</tr>
							</form>
<!-- END: USERIMG_LIST -->
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="block">
			<h2>{PHP.R.icon-plus}{PHP.L.userimages_addnew}</h2>
			<div class="wrapper">
				<form action="{PHP|cot_url('admin','m=other&p=userimages&a=add')}" method="post">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<thead>
								<tr>
									<th class="w-30">{PHP.L.Code}</th>
									<th class="w-15">{PHP.L.userimages_width}, px</th>
									<th class="w-15">{PHP.L.userimages_height}, px</th>
									<th class="w-25">{PHP.L.userimages_cropratio}</th>
									<th class="w-15">{PHP.L.Action}</th>
								</tr>
							</thead>
							<tbody>
								<tr class="{PHP.R.admin-table-tr-class}">
									<td>
										<input type="text" name="userimg_code" size="30" />
									</td>
									<td>
										<input type="text" name="userimg_width" size="10" />
									</td>
									<td>
										<input type="text" name="userimg_height" size="10" />
									</td>
									<td>
										<select name="userimg_crop">
											<option value="">{PHP.L.userimages_cropnone}</option>
											<option value="fit">{PHP.L.userimages_cropfit}</option>
											<option value="1:1">1:1</option>
											<option value="1:2">1:2</option>
											<option value="2:3">2:3</option>
											<option value="3:4">3:4</option>
											<option value="4:5">4:5</option>
											<option value="5:6">5:6</option>
											<option value="2:1">2:1</option>
											<option value="3:2">3:2</option>
											<option value="4:3">4:3</option>
											<option value="5:4">5:4</option>
											<option value="6:5">6:5</option>
											<option value="16:9">16:9</option>
											<option value="16:10">16:10</option>
										</select>
									</td>
									<td class="action">
										<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-plus}<span>{PHP.L.Add}</span></button>
									</td>
								</tr>
							</table>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
<!-- END: MAIN -->
