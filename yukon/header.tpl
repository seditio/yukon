<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="x-ua-compatible" content="ie=edge" />

	<title>{HEADER_TITLE}</title>
	<meta name="description" content="{HEADER_META_DESCRIPTION}" />
	<meta name="keywords" content="{HEADER_META_KEYWORDS}" />

	<meta name="generator" content="Cotonti http://www.cotonti.com" />

{HEADER_BASEHREF}
{HEADER_HEAD}
{HEADER_COMPOPUP}

	<link rel="shortcut icon" href="favicon.ico" />

</head>
<body>
	<div id="preloader"></div>

	<div class="container-fluid overflow-hidden">

		<div class="row g-0">
			<div id="topbar" class="col-12 p-0">
				<div class="d-flex justify-content-between px-3">

					<ul id="layout" class="list-unstyled overflow-hidden m-0">
						<li id="showsidebar">
							<a href="#" class="btn btn-xs" data-title="{PHP.L.admin-show-sidebar}/{PHP.L.admin-hide-sidebar}">
								{PHP.R.icon-arrows-h}<span>{PHP.L.admin-show-sidebar}</span>
							</a>
						</li>
						<li id="hidenavigation">
							<a href="#" class="btn btn-xs" data-title="{PHP.L.admin-hide-menu}/{PHP.L.admin-show-menu}">
								{PHP.R.icon-arrows-v}<span>{PHP.L.admin-hide-menu}</span>
							</a>
						</li>
						<li id="fullscreen">
							<a href="#" class="btn btn-xs" data-title="{PHP.L.admin-fullscreen-off}/{PHP.L.admin-fullscreen-on}">
								{PHP.R.icon-arrows-hv}<span>{PHP.L.admin-fullscreen-off}</span>
							</a>
						</li>
						<li id="removecookies">
							<a href="#" class="btn btn-xs">
								{PHP.R.icon-xmark}<span>{PHP.L.Reset}</span>
							</a>
						</li>
					</ul>

<!-- IF {PHP.cot_plugins_active.admindesktops} -->
					<ul id="desktops" class="list-unstyled overflow-hidden m-0">
						<li>
							<a href="{PHP|cot_url('admin')}" class="btn btn-xs" title="{PHP.L.adt_desktop} #1">
								{PHP.R.icon-desktop}<span>1</span>
							</a>
						</li>
						<li>
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=2')}" class="btn btn-xs" title="{PHP.L.adt_desktop} #2">
								{PHP.R.icon-desktop}<span>2</span>
							</a>
						</li>
						<li>
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=3')}" class="btn btn-xs" title="{PHP.L.adt_desktop} #3">
								{PHP.R.icon-desktop}<span>3</span>
							</a>
						</li>
						<li class="d-none d-sm-block">
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=4')}" class="btn btn-xs" title="{PHP.L.adt_desktop} #4">
								{PHP.R.icon-desktop}<span>4</span>
							</a>
						</li>
						<li class="d-none d-sm-block">
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=sa')}" class="btn btn-xs" title="{PHP.L.adt_desktop} SA">
								{PHP.R.icon-desktop}<span>SA</span>
							</a>
						</li>
					</ul>
<!-- ENDIF -->

					<ul id="settings" class="list-unstyled overflow-hidden m-0">
						<li>
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.hea_viewsite}" class="btn btn-xs">
								{PHP.R.icon-external-link}<span>{PHP.L.admin-view-site}</span>
							</a>
						</li>
						<li>
							<a href="{PHP|cot_url('users','m=profile')}" class="btn btn-xs">
								{PHP.R.icon-user}<span>{PHP.usr.name}</span>
							</a>
						</li>
						<li>
							<a href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this')}" class="btn btn-xs">
								{PHP.R.icon-door-open}<span>{PHP.L.Logout}</span>
							</a>
						</li>
					</ul>

				</div>
			</div>
		</div>

		<div id="wrapper">

			<div id="sidebar" class="overflow-hidden">
				<a href="{PHP|cot_url('admin')}" id="logo" class="d-block text-center text-uppercase">
					{PHP.R.icon-dashboard}{PHP.L.Adminpanel}
				</a>
				<div id="profile" class="block mt-0 overflow-hidden">
					<p class="mb-1">
						{PHP.L.admin-hi}, <a href="{PHP|cot_url('users','m=profile')}">{PHP.usr.name}</a>
					</p>
					<figure class="mb-2">
<!-- IF {PHP.user_avatar} -->
						<img src="{PHP.user_avatar}" alt="" class="img-fluid" />
<!-- ELSE -->
						<img src="/datas/defaultav/default.png" alt="" class="img-fluid" />
<!-- ENDIF -->
					</figure>
					<ul class="list-unstyled m-0">
						<li>
							<a class="btn btn-xs" href="{PHP|cot_url('users','m=profile')}">
								{PHP.R.icon-gear}<span>{PHP.L.Profile}</span>
							</a>
						</li>
						<li>
							<a class="btn btn-xs" href="{PHP|cot_url('users','m=details')}">
								{PHP.R.icon-user}<span>{PHP.L.Page}</span>
							</a>
						</li>
<!-- IF {PHP.cot_modules.pm} -->
						<li>
							<a class="btn btn-xs" href="{PHP|cot_url('pm')}">
								{PHP.R.icon-comments}<span>{PHP.L.Private_Messages}</span>
							</a>
						</li>
<!-- ENDIF -->
						<li>
							<a class="btn btn-xs" href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this')}">
								{PHP.R.icon-door-open}<span>{PHP.L.Logout}</span>
							</a>
						</li>
					</ul>
				</div>

				<div id="menu" class="accordion accordion-flush">
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#menu1" aria-expanded="false" aria-controls="menu1">{PHP.L.Navigation}</div>
						<div id="menu1" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-house}<a href="{PHP|cot_url('admin')}">{PHP.L.Home}</a>
									</li>
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin', 'm=config')}">{PHP.L.Configuration}</a>
									</li>
									<li>
										{PHP.R.icon-sitemap}</i><a href="{PHP|cot_url('admin', 'm=structure')}">{PHP.L.Structure}</a>
									</li>
									<li>
										{PHP.R.icon-plug}<a href="{PHP|cot_url('admin', 'm=extensions')}">{PHP.L.Extensions}</a>
									</li>
									<li>
										{PHP.R.icon-user}<a href="{PHP|cot_url('admin', 'm=users')}">{PHP.L.Users}</a>
									</li>
									<li>
										{PHP.R.icon-wrench}<a href="{PHP|cot_url('admin', 'm=other')}">{PHP.L.Management}</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#menu2" aria-expanded="false" aria-controls="menu2">{PHP.L.home_ql_b1_title}</div>
						<div id="menu2" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.home_ql_b1_1}</a>
									</li>
									<li>
										{PHP.R.icon-code}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.home_ql_b1_2}</a>
									</li>
									<li>
										{PHP.R.icon-palette}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.home_ql_b1_3}</a>
									</li>
									<li>
										{PHP.R.icon-globe}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}">{PHP.L.Locale}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#menu3" aria-expanded="false" aria-controls="menu3">{PHP.L.Pages}</div>
						<div id="menu3" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=page')}">{PHP.L.Configuration}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a>
									</li>
									<li>
										{PHP.R.icon-ban}<a href="{PHP|cot_url('admin','m=page')}">{PHP.sys.pagesqueued|cot_declension($this, 'Pages')} {PHP.L.admin-queued}</a>
									</li>
									<li>
										{PHP.R.icon-plus}<a href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a>
									</li>
<!-- IF {PHP.cot_plugins_active.csv} -->
									<li>
										{PHP.R.icon-database}<a href="{PHP.usr.id|cot_url('admin','m=other&p=csv')}">CSV Import / Export</a>
									</li>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.csv_import} -->
									<li>
										{PHP.R.icon-database}<a href="{PHP.usr.id|cot_url('admin','m=other&p=csv_import')}">CSV Import (deprecated)</a>
									</li>
<!-- ENDIF -->
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#menu4" aria-expanded="false" aria-controls="menu4">{PHP.L.Users}</div>
						<div id="menu4" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}">{PHP.L.home_ql_b3_1}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}">{PHP.L.home_ql_b3_2}</a>
									</li>
									<li>
										{PHP.R.icon-lock}<a href="{PHP|cot_url('admin','m=users')}">{PHP.L.home_ql_b3_4}</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

<!-- IF {PHP.cot_plugins_active.adminstats} -->
				<div class="miniwidget block">
					<span class="fw-bold d-block">{PHP.L.admin-engine}:</span>
					<ul class="list-unstyled m-0">
						<li>{PHP.adminstats.version.title}: <span>{PHP.adminstats.version.value}</span></li>
						<li>{PHP.adminstats.database.title}: <span>{PHP.adminstats.database.value}</span></li>

						<li>{PHP.adminstats.defaulttheme.title}: <span>{PHP.adminstats.defaulttheme.value} {PHP.adminstats.defaulttheme.version}</span></li>
						<li>{PHP.adminstats.defaultscheme.title}: <span>{PHP.adminstats.defaultscheme.value}</span></li>
						<li>{PHP.adminstats.defaulticons.title}: <span>{PHP.adminstats.defaulticons.value} {PHP.adminstats.defaulticons.version}</span></li>
						<li>{PHP.adminstats.admintheme.title}: <span>{PHP.adminstats.admintheme.value} {PHP.adminstats.admintheme.version}</span></li>
						<li>{PHP.adminstats.defaultlang.title}: <span>{PHP.adminstats.defaultlang.value}</span></li>

						<li>{PHP.adminstats.active_modules.title}: <span>{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</span></li>
						<li>{PHP.adminstats.active_plugins.title}: <span>{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</span></li>
						<li>{PHP.adminstats.active_hooks.title}: <span>{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</span></li>

						<li>{PHP.adminstats.check_updates.title}: <span>{PHP.adminstats.check_updates.value}</span></li>
						<li>{PHP.adminstats.debug_mode.title}: <span>{PHP.adminstats.debug_mode.value}</span></li>
					</ul>
				</div>
				<div class="miniwidget block">
					<span class="fw-bold d-block">{PHP.L.admin-activity-for} {PHP.R.Recent|cot_declension($this, Days)}:</span>
					<ul class="list-unstyled m-0">
<!-- IF {PHP.cot_modules.page} -->
						<li>{PHP.L.home_newpages}: <span>{PHP.R.Recent|item_counter('pages', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.comments} -->
						<li>{PHP.L.admin-new-comments}: <span>{PHP.R.Recent|item_counter('comments', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.forums} -->
						<li>{PHP.L.home_newtopics}: <span>{PHP.R.Recent|item_counter('topics', $this)}</span></li>
						<li>{PHP.L.home_newposts}: <span>{PHP.R.Recent|item_counter('posts', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.pm} -->
						<li>{PHP.L.home_newpms}: <span>{PHP.R.Recent|item_counter('pm', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.polls} -->
						<li>{PHP.L.admin-new-polls}: <span>{PHP.R.Recent|item_counter('polls', $this)}</span></li>
<!-- ENDIF -->
						<li>{PHP.L.home_newusers}: <span>{PHP.R.Recent|item_counter('users_reg', $this)}</span></li>
						<li>{PHP.L.admin-ret-users}: <span>{PHP.R.Recent|item_counter('users', $this)}</span></li>
					</ul>
				</div>
<!-- ENDIF -->
				<div class="miniwidget block">
					<ul class="list-unstyled m-0">
						<li>Powered by <a href="https://www.cotonti.com">Cotonti Siena {PHP.cfg.version}</a></li>
						<li>Theme developed by <a href="https://www.seditio.by">Seditio.by</a></li>
					</ul>
				</div>
			</div>
<!-- END: HEADER -->
