<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-lg-6">
		<div class="block">
			<h2>{PHP.R.icon-magnifying-glass}{PHP.L.ipsearch_searchthisuser}:</h2>
			<div class="wrapper">
				<form id="search" action="{IPSEARCH_FORM_URL}" method="post" class="input-append">
					<div class="btn-group">
						<input type="text" name="id" value="{IPSEARCH_ID}" size="16" maxlength="16" />
						<button type="submit" class="btn {PHP.R.admin-button-primary-class}">{PHP.L.Search}</button>
					</div>
				</form>
				<!-- IF {PHP.id} -->
				<div class="btn-group mt-3">
					<a href="https://www.abuseipdb.com/check/{PHP.id}" class="btn btn-sm btn-primary" target="_blank">Check IP for Abuse</a>
					<a href="{PHP|cot_url('admin', 'm=other&p=banlist&a=addip&ip2ban={PHP.id}')}" class="btn btn-sm btn-danger" target="_blank">Ban IP</a>
				</div>
				<!-- ENDIF -->
			</div>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.ipsearch_title}</h2>
			<div class="wrapper">
<!-- BEGIN: IPSEARCH_RESULTS -->
				<h4 class="mb-3">{PHP.L.ipsearch_dnsrecord}: {IPSEARCH_RES_DNS}</h4>
				<p class="m-0">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES1} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK1}:</p>
				<ul class="list-unstyled mb-2">
<!-- BEGIN: IPSEARCH_IPMASK1 -->
					<li>{IPSEARCH_USER_IPMASK1}: {IPSEARCH_USER_LASTIP_IPMASK1}</li>
<!-- END: IPSEARCH_IPMASK1 -->
				</ul>
				<p class="m-0">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES2} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK2}.*:</p>
				<ul class="list-unstyled mb-2">
<!-- BEGIN: IPSEARCH_IPMASK2 -->
					<li>{IPSEARCH_USER_IPMASK2}: {IPSEARCH_USER_LASTIP_IPMASK2}</li>
<!-- END: IPSEARCH_IPMASK2 -->
				</ul>
				<p class="m-0">{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES3} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK3}.*.*:</p>
				<ul class="list-unstyled">
<!-- BEGIN: IPSEARCH_IPMASK3 -->
					<li>{IPSEARCH_USER_IPMASK3}: {IPSEARCH_USER_LASTIP_IPMASK3}</li>
<!-- END: IPSEARCH_IPMASK3 -->
				</ul>
<!-- END: IPSEARCH_RESULTS -->
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
