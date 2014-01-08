<!-- BEGIN: MAIN -->
<div class="block">
	<h5><i class="fa fa-file-alt"></i> {PHP.L.Pages}</h5>
	<ul class="list-unstyled">
		<li><i class="fa fa-plus"></i><a href="{ADMIN_HOME_URL}">{PHP.L.adm_valqueue}: {ADMIN_HOME_PAGESQUEUED}</a></li>
		<li><i class="fa fa-plus"></i><a href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a></li>
		<li><i class="fa fa-plus"></i><a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a></li>
	</ul>
</div>
<!-- END: MAIN -->