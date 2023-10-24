<!-- BEGIN: MAIN -->
			<div id="content" class="position-relative overflow-hidden">

				<div id="breadcrumbs" class="text-truncate text-uppercase px-3 px-md-4">
					{ADMIN_BREADCRUMBS}
				</div>

				<nav id="navigation" class="mb-3 px-3 px-md-4" data-title="{PHP.L.admin-nav-action}">
					<h1 class="my-2">{ADMIN_TITLE}</h1>
					<div class="row">
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', '')}" id="nv-home" class="nv<!-- IF {PHP.m} == '' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Home}</span>
								{PHP.R.icon-house}
							</a>
						</div>
<!-- IF {PHP.usr.admin_config} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=config')}" id="nv-config" class="nv<!-- IF {PHP.m} == 'config' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Configuration}</span>
								{PHP.R.icon-gears}
							</a>
						</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_structure} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=structure')}" id="nv-structure" class="nv<!-- IF {PHP.m} == 'structure' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Structure}</span>
								{PHP.R.icon-sitemap}
							</a>
						</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_config} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=extensions')}" id="nv-extensions" class="nv<!-- IF {PHP.m} == 'extensions' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Extensions}</span>
								{PHP.R.icon-plug}
							</a>
						</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_users} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=users')}" id="nv-users" class="nv<!-- IF {PHP.m} == 'users' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Users}</span>
								{PHP.R.icon-users}
							</a>
						</div>
<!-- ENDIF -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=other')}" id="nv-other" class="nv<!-- IF {PHP.m} == 'other' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Management}</span>
								{PHP.R.icon-wrench}
							</a>
						</div>
					</div>
				</nav>

				<div id="ajaxBlock" class="clearfix">
<!-- BEGIN: BODY -->
					<div class="px-3 px-md-4">
{ADMIN_MAIN}
					</div>
<!-- IF {ADMIN_HELP} -->
					<div class="px-3 px-md-4">
						<div class="alert alert-info">
							<h4 class="mb-2">{PHP.L.Help}:</h4>
							<div class="lh-sm">
								{ADMIN_HELP}
							</div>
						</div>
					</div>
<!-- ENDIF -->
<!-- END: BODY -->
				</div>

			</div>
<!-- END: MAIN -->
