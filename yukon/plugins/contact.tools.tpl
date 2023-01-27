<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col">
		{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.contact_title}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="{PHP.R.admin-table-class}">
						<thead>
							<tr>
								<th class="w-10">{PHP.L.Date}</th>
								<th class="w-15">{PHP.L.User}</th>
								<th class="w-50">{PHP.L.Message}</th>
								<th class="w-25">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: DATA -->
							<tr class="{PHP.R.admin-table-tr-class} {CONTACT_ODDEVEN}">
								<td>
									{CONTACT_DATE}
<!-- IF {CONTACT_VAL} == val -->
									<br /><span class="text-dander">[ {PHP.L.contact_shortnew} ]</span>
<!-- ENDIF -->
								</td>
								<td>
									{CONTACT_USER}<br />{CONTACT_EMAIL}
								</td>
								<td>
									{CONTACT_TEXTSHORT}
								</td>
								<td class="action">
									<div class="btn-group">
										<a href="{CONTACT_VIEWLINK}" title="{PHP.L.View}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-folder-open}<span>{PHP.L.short_open}</span></a>
<!-- IF {CONTACT_VAL} == val -->
										<a href="{CONTACT_READLINK}" title="{PHP.L.contact_markread}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-arrow-down}<span>{PHP.L.contact_read}</span></a>
<!-- ELSE -->
										<a href="{CONTACT_UNREADLINK}" title="{PHP.L.contact_markunread}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-up}<span>{PHP.L.contact_unread}</span></a>
<!-- ENDIF -->
										<a href="{CONTACT_DELLINK}" title="{PHP.L.Delete}" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
									</div>
								</td>
							</tr>
<!-- END: DATA -->
						</tbody>
					</table>
<!-- IF {CONTACT_PAGINATION} -->
					<nav class="{PHP.R.admin-pagination-nav-class}" aria-label="Contacts Pagination">
						<ul class="pagination {PHP.R.admin-pagination-list-class}">
							{CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}
						</ul>
					</nav>
<!-- ENDIF -->
				</div>
			</div>
		</div>

<!-- BEGIN: VIEW -->
		<div class="block">
			<h2>{PHP.R.icon-plug}
				{PHP.L.contact_view} #{CONTACT_ID} (
<!-- IF {CONTACT_SUBJECT} -->
				{CONTACT_SUBJECT}
<!-- ELSE -->
				{PHP.L.contact_nosubject}
<!-- ENDIF -->)
			</h2>
			<div class="wrapper">
				<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table class="{PHP.R.admin-table-class}">
							<tbody>
								<tr>
									<td class="w-15">{PHP.L.Username}:</td>
									<td class="w-85">{CONTACT_USER}</td>
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
									<td>{PHP.L.Subject}:</td>
									<td>
<!-- IF {CONTACT_SUBJECT} -->
										{CONTACT_SUBJECT}
<!-- ELSE -->
										{PHP.L.contact_nosubject}
<!-- ENDIF -->
									</td>
								</tr>
								<tr>
									<td>{PHP.L.Message}:</td>
									<td>{CONTACT_TEXT}</td>
								</tr>
<!-- BEGIN: EXTRAFLD -->
								<tr>
									<td>{CONTACT_EXTRAFLD_TITLE}</td>
									<td>{CONTACT_EXTRAFLD}</td>
								</tr>
<!-- END: EXTRAFLD -->
<!-- IF {CONTACT_REPLY} -->
								<tr class="text-danger">
									<td>{PHP.L.contact_sent}:</td>
									<td>{CONTACT_REPLY}</td>
								</tr>
<!-- ENDIF -->
								<tr>
									<td>{PHP.L.Reply}:</td>
									<td>{CONTACT_FORM_TEXT}</td>
								</tr>
								<tr>
									<td colspan="2">
										<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.L.Submit}</button>
									</td>
								</tr>
							</table>
						</div>
					</form>
				</div>
			</div>
<!-- END: VIEW -->

		</div>
	</div>
<!-- END: MAIN -->
