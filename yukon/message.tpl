<!-- BEGIN: MAIN -->
<!-- IF !{AJAX_MODE} -->
<div id="content" class="position-relative overflow-hidden">
	<div id="breadcrumbs" class="text-truncate text-uppercase px-3 px-md-4">
		<a href="{PHP|cot_url('admin')}" title="{PHP.L.Adminpanel}">{PHP.L.Adminpanel}</a>  /  {PHP.L.adm_confirm}
	</div>
	<nav id="navigation" class="mb-3 px-3 px-md-4">
		<h1 class="my-2">{MESSAGE_TITLE}</h1>
	</nav>
	<div id="ajaxBlock" class="clearfix">
		<div class="px-3 px-md-4">
			<div class="row">
				<div class="col col-sm-8 col-xl-6 col-xxl-4">
<!-- ENDIF -->
					<div id="message-body">
						<p class="lead mb-2">{MESSAGE_BODY}</p>
<!-- BEGIN: MESSAGE_CONFIRM -->
						<ul class="nav nav-pills text-center">
						  <li class="nav-item">
						    <a id="confirmYes" class="nav-link text-bg-danger confirmButton" href="{MESSAGE_CONFIRM_YES}">{PHP.L.Yes}</a>
						  </li>
						  <li class="nav-item">
						    <a id="confirmNo" class="nav-link text-bg-success confirmButton" href="{MESSAGE_CONFIRM_NO}">{PHP.L.No}</a>
						  </li>
						</ul>
<!-- END: MESSAGE_CONFIRM -->
					</div>
<!-- IF !{AJAX_MODE} -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->
