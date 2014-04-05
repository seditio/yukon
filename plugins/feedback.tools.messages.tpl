<!-- BEGIN: MAIN -->

			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.feedback_title}</h5>

<!-- BEGIN: VIEW -->
	<h3>{PHP.L.feedback_view} #{CONTACT_ID}</h3>
	<form action="{CONTACT_FORM_SEND}" method="post" name="feedback_form">
		<table class="cells">
			<tr>
				<td class="width15">{PHP.L.Username}:</td>
				<td class="width85">{CONTACT_USER}</td>
			</tr>
			<tr>
				<td>{PHP.L.Date}:</td>
				<td>{CONTACT_DATE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Email}:</td>
				<td>{CONTACT_EMAIL} </td>
			</tr>
			<tr>
				<td>{PHP.L.Message}:</td>
				<td>{CONTACT_TEXT}</td>
			</tr>
			{CONTACT_EXTRAS}
<!-- IF {CONTACT_REPLY} --><tr style="color:#900;">
				<td>{PHP.L.feedback_sent}:</td>
				<td>{CONTACT_REPLY}</td>
			</tr><!-- ENDIF -->
			<tr>
				<td>{PHP.L.Reply}:</td>
				<td>{CONTACT_FORM_TEXT}</td>
			</tr>
			<tr>
				<td colspan="2" class="valid"><button type="submit">{PHP.L.Submit}</button></td>
			</tr>
		</table>
	 </form>
<!-- END: VIEW -->

	<table class="cells">
		<tr>
			<td class="width15">{PHP.L.Date}</td>
			<td class="width20">{PHP.L.User}</td>
			<td class="width45">{PHP.L.Message}</td>
			<td class="width20">{PHP.L.Action}</td>
		 </tr>
<!-- BEGIN: DATA -->
		 <tr>
			<td class="textcenter {CONTACT_ODDEVEN}">{CONTACT_DATE}<!-- IF {CONTACT_VAL} == val --><br /><span style="color:#900;">[ {PHP.L.feedback_new} ]</span><!-- ENDIF --></td>
			<td class="{CONTACT_ODDEVEN}">{CONTACT_USER}<br />{CONTACT_EMAIL}</td>
			<td class="{CONTACT_ODDEVEN}">{CONTACT_TEXTSHORT}</td>
			<td class="centerall {CONTACT_ODDEVEN}">
				<a href="{CONTACT_VIEWLINK}" title="{PHP.L.View}"><img src="{PHP.cfg.plugins_dir}/feedback/images/view.png" alt="{PHP.L.View}" /></a>
				<a href="{CONTACT_READLINK}" title="{PHP.L.feedback_markread}"><img src="{PHP.cfg.plugins_dir}/feedback/images/read.png" alt="Mark as read" /></a>
				<a href="{CONTACT_UNREADLINK}" title="{PHP.L.feedback_markunread}"><img src="{PHP.cfg.plugins_dir}/feedback/images/unread.png" alt="Mark as unread" /></a>
				<a href="{CONTACT_DELLINK}" title="{PHP.L.Delete}"><img src="{PHP.cfg.plugins_dir}/feedback/images/delete.png" alt="{PHP.L.Delete}" /></a>
			</td>
		 </tr>
<!-- END: DATA -->
	</table>
<!-- IF {CONTACT_PAGINATION} -->
	<div class="text-{PHP.R.admin-config-pagialign}">
		<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}</ul>
	</div>
<!-- ENDIF -->
					</div>
				</div>
			</div>
	
<!-- END: MAIN -->