<!-- BEGIN: MAIN -->

			<div class="row-fluid">
				<div class="col-md-12">

					<script type="text/javascript">
						//<![CDATA[
						$(document).ready(function(){
							$('input[type=text], input[type=password], select, textarea').addClass('form-control');
							$('.table select').css('display','inline-block');
						});
						//]]>
					</script>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<!-- BEGIN: CREATE -->
					<form action="{UM_USERS_CREATE_SEND}" method="post" name="um_useredit" enctype="multipart/form-data">
						<div class="block">
							<h5><i class="fa fa-group"></i> {UM_TITLE}</h5>
							<div class="wrapper">
							
							<div class="btn-group item-control">
								<a href="{UM_YOURPROFILE}" class="btn btn-primary">{UM_YOURPROFILE_TEXT}</a>
								<a href="{UM_SITECONFIG}" class="btn btn-primary">{UM_SITECONFIG_TEXT}</a>
								<a href="{UM_USER_RIGHTS}" class="btn btn-primary">{UM_USER_RIGHTS_TEXT}</a>
								<a href="{UM_EXTRA_FIELDS}" class="btn btn-primary">{UM_EXTRA_FIELDS_TEXT}</a>
							</div>
							
								<input type="hidden" name="id" value="{UM_USERS_CREATE_ID}" />
								<table class="table table-bordered">
									<tr>
										<td class="width20">{PHP.L.Username}</td>
										<td class="width80">{UM_NAME}</td>
									</tr>
									<tr>
										<td class="">{PHP.L.Email}:</td>
										<td class="">{UM_USERS_CREATE_EMAIL}</td>
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
										<td colspan="2"><button type="submit" class="btn btn-success">{UM_CREATE_USER}</button></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="block">
							<h5>{UM_LIST_TITLE}</h5>
							<div class="wrapper">
							<table class="table table-bordered">                                
								<tr>
									<td class="coltop" class="">{UM_TOP_PM}</td>
									<td class="coltop" class="">{UM_TOP_ACCESS}</td>
									<td class="coltop" class="">{UM_TOP_NAME}</td>
									<td class="coltop" class="">{PHP.L.Email}</td>
									<td class="coltop" class="">{UM_TOP_GRPTITLE}</td>
									<td class="coltop" class="">{UM_TOP_GRPLEVEL}</td>
									<td class="coltop" class="">{UM_TOP_COUNTRY}</td>
									<td class="coltop" class="">{UM_TOP_REGDATE}</td>
									<td class="coltop" class="">{UM_TOP_DELETE}</td>
								</tr>
<!-- BEGIN: UM_ROW -->
								<tr>
									<td class="centerall">{UM_ROW_PM}</td>
									<td class="centerall">{UM_ROW_ACCESS}</td>
									<td class="centerall">{UM_ROW_NAME}&nbsp</td>
									<td class="centerall">{UM_ROW_EMAIL}</td>
									<td class="centerall">{UM_ROW_MAINGRP}</td>
									<td class="centerall">{UM_ROW_MAINGRPSTARS}</td>
									<td class="centerall">{UM_ROW_COUNTRYFLAG} {UM_ROW_COUNTRY}</td>
									<td class="centerall">{UM_ROW_REGDATE}</td>
									<td class="centerall">{UM_ROW_DELETE}</td>
								</tr>
<!-- END: UM_ROW -->
							</table>
							</div>
						</div>
						</form>						
						<div class="block">
							<h5>{PHP.L.Filters}</h5>
							<div class="wrapper">
								<form action="{UM_TOP_FILTER_ACTION}" method="post">
									<div class="row">
										<div class="col-md-6"><p>{UM_TOP_FILTERS_COUNTRY}</p></div>
										<div class="col-md-6"><p>{UM_TOP_FILTERS_MAINGROUP}</p></div>
									</div>
									<div class="row">
										<div class="col-md-6"><p>{UM_TOP_FILTERS_GROUP}</p></div>
										<div class="col-md-6"><p>{UM_TOP_FILTERS_SEARCH}</p></div>
									</div>
									<p><button type="submit" class="btn btn-primary">{PHP.L.Submit}</button></p>
								</form>
							</div>
						</div>
						
						<div class="text-center">
							<ul class="pagination">{UM_TOP_PAGEPREV}{UM_TOP_PAGNAV}{UM_TOP_PAGENEXT}</ul>
						</div>
<!-- END: CREATE -->

<!-- BEGIN: UM_EDIT -->
						<div class="block">
							<h5><i class="fa fa-group"></i> {UM_EDIT_TITLE}</h5>
							<div class="wrapper">
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
										<td>{UM_EDIT_LOCATION_TITLE}:</td>
										<td>{UM_EDIT_LOCATION}</td>
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
											<a href="{UM_EDIT_ACCESS}" class="btn btn-primary">{UM_EDIT_ACCESS_TEXT}</a>
											<a href="{UM_EDIT_GOBACK}" class="btn btn-primary">{UM_EDIT_GOBACK_TEXT}</a>
										</td>
									</tr>
								</table>
							</form>
							</div>
						</div>

<!-- END: UM_EDIT -->	

<!-- BEGIN: UM_PROFILE -->
					<div class="block">
						<h5><i class="fa fa-group"></i> {UM_PROFILE_TITLE}</h5>
						<div class="wrapper">
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
								<tr class="hidden">
									<td>{PHP.L.Country}:</td>
									<td>{UM_PROFILE_COUNTRY}</td>
								</tr>
								<tr>
									<td>{UM_PROFILE_LOCATION_TITLE}:</td>
									<td>{UM_PROFILE_LOCATION}</td>
								</tr>								
								<tr>
									<td>{PHP.L.Timezone}:</td>
									<td>{UM_PROFILE_TIMEZONE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Birthdate}:</td>
									<td>{UM_PROFILE_BIRTHDATE}
									</td>
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
										<a href="{UM_PROFILE_GOBACK}" class="btn btn-primary">{UM_PROFILE_GOBACK_TEXT}</a>
									</td>
								</tr>
							</table>
						</form>
						</div>
					</div>
<!-- END: UM_PROFILE -->

<!-- BEGIN: UM_TIME_ACCESS -->  
					<div class="block">
						<h5><i class="fa fa-group"></i> {UM_TIME_ACCESS_TITLE}</h5>
						<div class="wrapper">
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
										<td>{UM_ACCESS_START_TEXT}</td>
										<td>{UM_ACCESS_START}</td>
									</tr>
									<tr>
										<td>{UM_ACCESS_START_REASON_TEXT}</td>
										<td>{UM_ACCESS_START_REASON}</td>
									</tr>
									<tr>
										<td>{UM_ACCESS_STOP_TEXT}</td>
										<td>{UM_ACCESS_STOP}</td>
									</tr>
									<tr>
										<td>{UM_ACCESS_STOP_REASON_TEXT}</td>
										<td>{UM_ACCESS_STOP_REASON}</td>
									</tr>
									<tr>
										<td>{PHP.L.Lastlogged}:</td>
										<td>{UM_ACCESS_LASTDATE}</td>
									</tr>
									<tr>
										<td>{UM_ACCESS_ACTIVE_TEXT}</td>
										<td>{UM_ACCESS_ACTIVE}</td>
									</tr>
									<tr>
										<td colspan="2" class="valid">
											<button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
											<a href="{UM_ACCESS_GOBACK_UMTOP}" class="btn btn-primary">{UM_ACCESS_GOBACK_UMTOP_TEXT}</a>
											<a href="{UM_ACCESS_GOBACK}" class="btn btn-primary">{UM_ACCESS_GOBACK_TEXT}</a>
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