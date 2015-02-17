<!-- BEGIN: MAIN -->

			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<script type="text/javascript">
						//<![CDATA[
						$(document).ready(function(){
							$('input[type=text], input[type=password], select, textarea').addClass('form-control');
							$('.table select').css('display','inline-block');
						});
						//]]>
					</script>
<!-- BEGIN: CREATE -->
						<div class="row">
							<div class="col-md-12">
<!-- BEGIN: UM_AJAXBLOCK -->
								<div id="MyajaxBlock">
								<div class="block">
									<h5><i class="fa fa-group"></i> {PHP.L.um_usermanager}</h5>
									<div class="wrapper">
										<div class="btn-group item-control">
											<a href="{PHP|cot_url('admin','m=other&p=userman&a=profile')}" class="btn btn-primary"><i class="fa fa-user-secret"></i> {PHP.L.Profile}</a>
											<a href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=users')}" class="btn btn-primary"><i class="fa fa-cogs"></i> {PHP.L.um_settings}</a>
											<a href="{PHP|cot_url('admin','m=rightsbyitem&ic=users&io=a')}" class="btn btn-primary"><i class="fa fa-check-square-o"></i> {PHP.L.um_userrights}</a>
											<a href="{PHP|cot_url('admin','m=extrafields&n=cot_users')}" class="btn btn-primary"><i class="fa fa-bars"></i> {PHP.L.um_extrafields}</a>
										</div>
										<table class="table table-bordered">    
											<thead>
												<tr>
													<th>PM</th>
													<th>TGA</th>
													<th>{UM_TOP_NAME}</th>
													<th>{PHP.L.Email}</th>
													<th>{UM_TOP_GRPTITLE}</th>
													<th>{UM_TOP_GRPLEVEL}</th>
													<th>{UM_TOP_REGDATE}</th>
													<th>{PHP.L.Action}</th>
												</tr>
											</thead>
<!-- BEGIN: UM_ROW -->
											<tr>
												<td class="centerall">{UM_ROW_PM}</td>
												<td class="centerall">{UM_ROW_ACCESS}</td>
												<td class="centerall">{UM_ROW_NAME}</td>
												<td class="centerall">{UM_ROW_EMAIL}</td>
												<td class="centerall">{UM_ROW_MAINGRP}</td>
												<td class="centerall">{UM_ROW_MAINGRPSTARS}</td>
												<td class="centerall">{UM_ROW_REGDATE}</td>
												<td class="action centerall">
													<div class="btn-group">
														<a href="{PHP.id|cot_url('admin','m=other&p=userman&a=edit&id=$this')}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-edit"></i> {PHP.L.Edit}</a>
														<a href="{PHP.id|cot_url('admin','m=other&p=userman&a=access&id=$this')}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-clock-o"></i> TGA</a>
														<a href="{PHP.url_del}" class="confirmLink btn btn-default btn-{PHP.R.admin-config-buttonsize2}"><i class="fa fa-close"></i> {PHP.L.Delete}</a>
													</div>
												</td>
											</tr>
<!-- END: UM_ROW -->
										</table>
									</div>
								</div>
<!-- BEGIN: UM_PAGENAV -->						
								<div class="text-center">
									<ul class="pagination">{UM_TOP_PAGEPREV}{UM_TOP_PAGNAV}{UM_TOP_PAGENEXT}</ul>
								</div>
<!-- END: UM_PAGENAV -->						
								</div>
<!-- END: UM_AJAXBLOCK -->
							</div>
						</div>
						<div class="row">
							<div class="col-md-7">
								<div class="block">
									<h5><i class="fa fa-user-plus"></i> {PHP.L.um_adduser}</h5>
									<div class="wrapper">
										<form action="{UM_USERS_CREATE_SEND}" method="post" name="um_useredit" enctype="multipart/form-data">							
										<input type="hidden" name="id" value="{UM_USERS_CREATE_ID}" />
										<table class="table table-bordered">
											<tr>
												<td class="width20">{PHP.L.Username}</td>
												<td class="width80">{UM_NAME}</td>
											</tr>
											<tr>
												<td>{PHP.L.Email}:</td>
												<td>{UM_USERS_CREATE_EMAIL}</td>
											</tr>
											<tr>
												<td class="usergrouplist">{PHP.L.Maingroup}:</td>
												<td class="usergrouplist">{UM_USERS_CREATE_GROUPS}</td>
											</tr>
<!-- IF {UM_USERS_CREATE_SIGNATURE} -->	
											<tr>
												<td>{PHP.L.Signature}:</td>
												<td>{UM_USERS_CREATE_SIGNATURE}</td>
											</tr>								
<!-- ENDIF -->
											<tr>
												<td>{PHP.L.users_newpass}:</td>
												<td>
													{UM_USERS_DEFAULT_PASS}
													<p class="small">{UM_USERS_HELPPASS}</p>
												</td>
											</tr>
											<tr>
												<td>{PHP.L.users_confirmpass}:</td>
												<td>{UM_USERS_PASSWORDREPEAT}</td>
											</tr>
											<tr>
												<td colspan="2"><button type="submit" class="btn btn-success">{PHP.L.um_createuser}</button></td>
											</tr>
										</table>
										</form>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<div class="block">
									<h5><i class="fa fa-filter"></i> {PHP.L.Filters}</h5>
									<div class="wrapper">
										<form action="{UM_TOP_FILTER_ACTION}" method="post">
											<p>{UM_TOP_FILTERS_COUNTRY}</p>
											<p>{UM_TOP_FILTERS_MAINGROUP}</p>
											<p>{UM_TOP_FILTERS_GROUP}</p>
											<p>{UM_TOP_FILTERS_SEARCH}</p>
											<p><button type="submit" class="btn btn-primary">{PHP.L.Submit}</button></p>
										</form>
									</div>
								</div>
							</div>
						</div>
<!-- END: CREATE -->

<!-- BEGIN: UM_EDIT -->
						<div class="block">
							<h5><i class="fa fa-edit"></i> {PHP.L.um_edituser}</h5>
							<div class="wrapper">
							<div class="btn-group item-control">
								<a href="{PHP|cot_url('admin','m=other&p=userman')}" class="btn btn-primary"><i class="fa fa-users"></i> {PHP.L.um_usermanager}</a>
								<a href="{UM_EDIT_ID|cot_url('admin','m=other&p=userman&a=access&id=$this')}" class="btn btn-primary"><i class="fa fa-clock-o"></i> TGA</a>
							</div>
							<form action="{UM_EDIT_SEND}" method="post" name="um_edit" enctype="multipart/form-data">
								<input type="hidden" name="id" value="{UM_EDIT_ID}" />
								<table class="table table-bordered">
									<tr>
										<td class="width30">{PHP.L.users_id}:</td>
										<td class="width70">#{UM_EDIT_ID}</td>
									</tr>
									<tr>
										<td>{PHP.L.Username}:</td>
										<td>{UM_EDIT_NAME}</td>
									</tr>
									<tr>
										<td>{PHP.L.Groupsmembership}:</td>
										<td class="usergrouplist">{UM_EDIT_GROUPS}</td>
									</tr>
									<tr>
										<td>{PHP.L.Country}:</td>
										<td>{UM_EDIT_COUNTRY}</td>
									</tr>
									<tr>
										<td>{PHP.L.Timezone}:</td>
										<td>{UM_EDIT_TIMEZONE}</td>
									</tr>
									<tr>
										<td>{PHP.L.Theme}:</td>
										<td>{UM_EDIT_THEME}</td>
									</tr>
									<tr>
										<td>{PHP.L.Language}:</td>
										<td>{UM_EDIT_LANG}</td>
									</tr>
<!-- IF {UM_EDIT_AVATAR} -->
									<tr>
										<td>{PHP.L.Avatar}:</td>
										<td>{UM_EDIT_AVATAR}</td>
									</tr>
<!-- ENDIF -->
<!-- IF {UM_EDIT_SIGNATURE} -->
									<tr>
										<td>{PHP.L.Signature}:</td>
										<td>{UM_EDIT_SIGNATURE}</td>
									</tr>
<!-- ENDIF -->
<!-- IF {UM_EDIT_PHOTO} -->
									<tr>
										<td>{PHP.L.Photo}:</td>
										<td>{UM_EDIT_PHOTO}</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td>{PHP.L.users_newpass}:</td>
										<td>
											{UM_EDIT_NEWPASS}
											<p class="small">{PHP.L.users_newpasshint1}</p>
										</td>
									</tr>
									<tr>
										<td>{PHP.L.Email}:</td>
										<td>{UM_EDIT_EMAIL}</td>
									</tr>
									<tr>
										<td>{PHP.L.users_hideemail}:</td>
										<td>{UM_EDIT_HIDEEMAIL}</td>
									</tr>
<!-- IF {PHP.cot_modules.pm} -->
									<tr>
										<td>{PHP.L.users_pmnotify}:</td>
										<td>{UM_EDIT_PMNOTIFY}<br />{PHP.themelang.usersedit.PMnotifyhint}</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td>{PHP.L.Birthdate}:</td>
										<td>{UM_EDIT_BIRTHDATE}</td>
									</tr>
									<tr>
										<td>{PHP.L.Gender}:</td>
										<td>{UM_EDIT_GENDER}</td>
									</tr>
									<tr>
										<td>{PHP.L.Signature}:</td>
										<td>{UM_EDIT_TEXT}</td>
									</tr>
									<tr>
										<td>{PHP.L.Registered}:</td>
										<td>{UM_EDIT_REGDATE}</td>
									</tr>
									<tr>
										<td>{PHP.L.Lastlogged}:</td>
										<td>{UM_EDIT_LASTLOG}</td>
									</tr>
									<tr>
										<td>{PHP.L.users_lastip}:</td>
										<td>{UM_EDIT_LASTIP}</td>
									</tr>
									<tr>
										<td>{PHP.L.users_logcounter}:</td>
										<td>{UM_EDIT_LOGCOUNT}</td>
									</tr>
									<tr>
										<td>{PHP.L.users_deleteuser}:</td>
										<td>{UM_EDIT_DELETE}</td>
									</tr>
									<tr>
										<td colspan="2" class="valid">
											<button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
										</td>
									</tr>
								</table>
							</form>
							</div>
						</div>
<!-- END: UM_EDIT -->

<!-- BEGIN: UM_PROFILE -->
						<div class="block">
							<h5><i class="fa fa-group"></i> {PHP.L.Profile}</h5>
							<div class="wrapper">
								<div class="btn-group item-control">
									<a href="{PHP|cot_url('admin','m=other&p=userman')}" class="btn btn-primary"><i class="fa fa-users"></i> {PHP.L.um_usermanager}</a>
								</div>
							<form action="{UM_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile">
								<input type="hidden" name="userid" value="{UM_PROFILE_ID}" />
								<table class="table table-bordered">
									<tr>
										<td class="width30">{PHP.L.Username}:</td>
										<td class="width70">{UM_PROFILE_NAME}</td>
									</tr>
									<tr>
										<td>{PHP.L.Groupsmembership}:</td>
										<td>
											<div class="usergrouplist">
												{UM_PROFILE_GROUPS}
											</div>
										</td>
									</tr>
									<tr>
										<td>{PHP.L.Registered}:</td>
										<td>{UM_PROFILE_REGDATE}</td>
									</tr>
<!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
									<tr>
										<td>{PHP.L.Email}:</td>
										<td id="emailtd">
											<div class="width50 floatleft">
												{PHP.L.Email}:<br />{UM_PROFILE_EMAIL}
											</div>
<!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
											<script type="text/javascript">
												//<![CDATA[
												$(document).ready(function(){
													$("#emailnotes").hide();
													$("#emailtd").click(function(){$("#emailnotes").slideDown();});
												});
												//]]>
											</script>
											<div>
												{PHP.themelang.usersprofile.Emailpassword}:<br />{UM_PROFILE_EMAILPASS}
											</div>
											<div class="small" id="emailnotes">{PHP.themelang.usersprofile.Emailnotes}</div>
<!-- END: USERS_PROFILE_EMAILPROTECTION -->
										</td>
									</tr>
<!-- END: USERS_PROFILE_EMAILCHANGE -->
									<tr>
										<td>{PHP.L.users_hideemail}:</td>
										<td>{UM_PROFILE_HIDEEMAIL}</td>
									</tr>
<!-- IF {PHP.cot_modules.pm} -->
									<tr>
										<td>{PHP.L.users_pmnotify}:</td>
										<td>
											{UM_PROFILE_PMNOTIFY}
											<p class="small">{PHP.L.users_pmnotifyhint}</p>
										</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td>{PHP.L.Theme}:</td>
										<td>{UM_PROFILE_THEME}</td>
									</tr>
									<tr>
										<td>{PHP.L.Language}:</td>
										<td>{UM_PROFILE_LANG}</td>
									</tr>
									<tr>
										<td>{PHP.L.Timezone}:</td>
										<td>{UM_PROFILE_TIMEZONE}</td>
									</tr>
									<tr>
										<td>{PHP.L.Country}:</td>
										<td>{UM_PROFILE_COUNTRY}</td>
									</tr>
									<tr>
										<td>{PHP.L.Birthdate}:</td>
										<td>{UM_PROFILE_BIRTHDATE}</td>
									</tr>
									<tr>
										<td>{PHP.L.Gender}:</td>
										<td>{UM_PROFILE_GENDER}</td>
									</tr>
<!-- IF {UM_PROFILE_AVATAR} -->
									<tr>
										<td>{PHP.L.Avatar}:</td>
										<td>{UM_PROFILE_AVATAR}</td>
									</tr>
<!-- ENDIF -->
<!-- IF {UM_PROFILE_PHOTO} -->
									<tr>
										<td>{PHP.L.Photo}:</td>
										<td>{UM_PROFILE_PHOTO}</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td>{PHP.L.Signature}:</td>
										<td>{UM_PROFILE_TEXT}</td>
									</tr>
									<tr>
										<td>
											<p>
												{PHP.L.users_newpass}:
												<span class="small">{PHP.L.users_newpasshint1}</span>
											</p>
										</td>
										<td>
											<p>
												{UM_PROFILE_OLDPASS}
												<span class="small">{PHP.L.users_oldpasshint}</span>
											</p>
											<p>
												{UM_PROFILE_NEWPASS1}
											</p>
											<p>
												{UM_PROFILE_NEWPASS2}
												<span class="small">{PHP.L.users_newpasshint2}</span>
											</p>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="valid">
											<button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
										</td>
									</tr>
								</table>
							</form>
							</div>
						</div>
<!-- END: UM_PROFILE -->

<!-- BEGIN: UM_TIME_ACCESS -->  
					<div class="block">
						<h5><i class="fa fa-clock-o"></i> {PHP.L.um_tga}</h5>
						<div class="wrapper">
							<div class="btn-group item-control">
								<a href="{PHP|cot_url('admin','m=other&p=userman')}" class="btn btn-primary"><i class="fa fa-users"></i> {PHP.L.um_usermanager}</a>
								<a href="{UM_ACCESS_ID|cot_url('admin','m=other&p=userman&a=edit&id=$this')}" class="btn btn-primary"><i class="fa fa-edit"></i> {PHP.L.um_edituser}</a>
							</div>
							<form action="{UM_TIME_ACCESS_SEND}" method="post" name="um_useredit" enctype="multipart/form-data">
								<input type="hidden" name="id" value="{UM_ACCESS_ID}" />
								<table class="table table-bordered">
									<tr>
										<td>{PHP.L.users_id}:</td>
										<td>#{UM_ACCESS_ID}</td>
									</tr>
									<tr>
										<td>{PHP.L.Username}:</td>
										<td>{UM_ACCESS_NAME}</td>
									</tr>
									<tr>
										<td>{PHP.L.Email}:</td>
										<td>{UM_ACCESS_EMAIL}</td>
									</tr>
									<tr>
										<td>{PHP.L.Maingroup}:</td>
										<td class="usergrouplist">{UM_ACCESS_GROUPS}</td>
									</tr>
									<tr>
										<td>{PHP.L.um_access_start}</td>
										<td>{UM_ACCESS_START}</td>
									</tr>
									<tr>
										<td>{PHP.L.um_access_start_reason}</td>
										<td>{UM_ACCESS_START_REASON}</td>
									</tr>
									<tr>
										<td>{PHP.L.um_access_stop}</td>
										<td>{UM_ACCESS_STOP}</td>
									</tr>
									<tr>
										<td>{PHP.L.um_access_stop_reason}</td>
										<td>{UM_ACCESS_STOP_REASON}</td>
									</tr>
									<tr>
										<td>{PHP.L.Lastlogged}:</td>
										<td>{UM_ACCESS_LASTDATE}</td>
									</tr>
									<tr>
										<td>{PHP.L.um_active}</td>
										<td>{UM_ACCESS_ACTIVE}</td>
									</tr>
									<tr>
										<td colspan="2" class="valid">
											<button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
<!-- END: UM_TIME_ACCESS -->  
				</div>
			</div>

<!-- END: MAIN -->