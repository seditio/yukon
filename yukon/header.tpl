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
			<div id="topbar" class="col p-0">
				<div class="d-flex justify-content-between px-3">

					<ul id="layout" class="list-unstyled overflow-hidden m-0">
						<li>
							<a href="#" id="sidebar_toggle" class="btn btn-xs" data-title="{PHP.L.admin-show-sidebar}/{PHP.L.admin-hide-sidebar}">
								{PHP.R.icon-arrows-h}<span>{PHP.L.admin-show-sidebar}</span>
							</a>
						</li>
						<li>
							<a href="#" id="nav_toggle" class="btn btn-xs" data-title="{PHP.L.admin-hide-menu}/{PHP.L.admin-show-menu}">
								{PHP.R.icon-arrows-v}<span>{PHP.L.admin-hide-menu}</span>
							</a>
						</li>
						<li>
							<a href="#" id="fs_toggle" class="btn btn-xs" data-title="{PHP.L.admin-fullscreen-off}/{PHP.L.admin-fullscreen-on}">
								{PHP.R.icon-arrows-hv}<span>{PHP.L.admin-fullscreen-off}</span>
							</a>
						</li>
						<li>
							<a href="#" id="clear_all" class="btn btn-xs">
								{PHP.R.icon-xmark}<span>{PHP.L.Reset}</span>
							</a>
						</li>
					</ul>

<!-- IF {PHP.cot_plugins_active.admindesktops} -->
					<ul id="desktops" class="list-unstyled overflow-hidden m-0">
						<li>
							<a href="{PHP|cot_url('admin')}" class="btn btn-xs" title="{PHP.L.admin-desktop} #1" data-bs-toggle="tooltip" data-bs-placement="bottom">
								{PHP.R.icon-desktop}<span>1</span>
							</a>
						</li>
						<li>
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=2')}" class="btn btn-xs" title="{PHP.L.admin-desktop} #2" data-bs-toggle="tooltip" data-bs-placement="bottom">
								{PHP.R.icon-desktop}<span>2</span>
							</a>
						</li>
						<li>
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=3')}" class="btn btn-xs" title="{PHP.L.admin-desktop} #3" data-bs-toggle="tooltip" data-bs-placement="bottom">
								{PHP.R.icon-desktop}<span>3</span>
							</a>
						</li>
						<li class="d-none d-sm-block">
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=4')}" class="btn btn-xs" title="{PHP.L.admin-desktop} #4" data-bs-toggle="tooltip" data-bs-placement="bottom">
								{PHP.R.icon-desktop}<span>4</span>
							</a>
						</li>
						<li class="d-none d-sm-block">
							<a href="{PHP|cot_url('admin', 'm=other&p=admindesktops&a=sa')}" class="btn btn-xs" title="{PHP.L.admin-desktop} SA" data-bs-toggle="tooltip" data-bs-placement="bottom">
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
				<a href="{PHP|cot_url('admin')}" id="logo" class="fw-bold d-block text-center text-uppercase">
					{PHP.R.icon-dashboard}{PHP.L.Adminpanel}
				</a>
				<div id="profile" class="text-center block mt-0 overflow-hidden">
					<p class="mb-1">
						{PHP.L.admin-hi}, <a href="{PHP|cot_url('users','m=profile')}">{PHP.usr.name}</a>
					</p>
					<figure class="mb-2">
<!-- IF {PHP.usr.profile.user_avatar} -->
						<img src="{PHP.usr.profile.user_avatar}" alt="" class="img-fluid" />
<!-- ELSE -->
						<img src="datas/defaultav/blank.png" alt="" class="img-fluid" />
<!-- ENDIF -->
					</figure>
					<ul class="list-unstyled mb-1 d-flex user_buttons">
						<li class="flex-fill">
							<a class="btn text-center p-1 border-dark-subtle d-block" href="<!-- IF {PHP.cot_plugins_active.um} -->{PHP|cot_url('admin', 'm=other&p=um&a=profile')}<!-- ELSE -->{PHP|cot_url('users','m=profile')}<!-- ENDIF -->" title="{PHP.L.Profile}">
								{PHP.R.icon-gear}
							</a>
						</li>
						<li class="flex-fill">
							<a class="btn text-center p-1 border-dark-subtle d-block" href="<!-- IF {PHP.cot_plugins_active.um} -->{PHP.usr.id|cot_url('admin', 'm=other&p=um&a=details')}<!-- ELSE -->{PHP|cot_url('users','m=details')}<!-- ENDIF -->" title="{PHP.L.Page}">
								{PHP.R.icon-user}
							</a>
						</li>
<!-- IF {PHP.cot_modules.pm} -->
						<li class="flex-fill position-relative">
							<a class="btn text-center p-1 border-dark-subtle d-block" href="{PHP|cot_url('pm')}" title="{PHP.L.Private_Messages}">
								{PHP.R.icon-comment}
							</a>
							<!-- IF {PHP.usr.messages} --><i class="p-1 bg-danger border border-light rounded-circle position-absolute top-0 end-0"><b class="visually-hidden">{PHP.usr.messages}</b></i><!-- ENDIF -->
						</li>
<!-- ENDIF -->
						<li class="flex-fill">
							<a class="btn text-center p-1 border-dark-subtle d-block" href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this')}" title="{PHP.L.Logout}">
								{PHP.R.icon-door-open}
							</a>
						</li>
					</ul>
					<ul class="list-unstyled btn text-center mb-0 w-100 border-dark-subtle user_info">
						<li>
							{PHP.L.admin-myip}: {PHP|sedby_get_ip}
						</li>
						<li>
							{PHP.browser} / {PHP.os}
						</li>
					</ul>
					<!-- IF {PHP.cot_plugins_active.clearcache} -->
					<a href="{PHP|cot_url('clearcache', 'a=clearall')}" class="btn btn-danger btn-sm d-block mt-1">{PHP.clearcache_title}</a>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_plugins_active.shop} -->
					<a href="{PHP|cot_url('admin', 'm=config&n=edit&o=plug&p=shop')}" class="btn btn-success btn-sm d-block mt-1">Настройки магазина</a>
					<!-- ENDIF -->
					<!-- IF {PHP.project} -->
					<a href="{PHP.project|cot_url('admin', 'm=config&n=edit&o=plug&p=$this')}" class="btn btn-success btn-sm d-block mt-1">{PHP.L.admin-project-settings}</a>
					<!-- ENDIF -->
				</div>

				<div id="menu" class="accordion accordion-flush">
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed fw-bold text-uppercase px-3 py-2" data-bs-toggle="collapse" data-bs-target="#menu1" aria-expanded="false" aria-controls="menu1">{PHP.L.Navigation}</div>
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
						<div class="accordion-button collapsed fw-bold text-uppercase px-3 py-2" data-bs-toggle="collapse" data-bs-target="#menu2" aria-expanded="false" aria-controls="menu2">{PHP.L.home_site_props}</div>
						<div id="menu2" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-globe}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}">{PHP.L.core_locale}</a>
									</li>
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.core_main}</a>
									</li>
									<li>
										{PHP.R.icon-dashboard}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=performance')}">{PHP.L.core_performance}</a>
									</li>
									<li>
										{PHP.R.icon-shield}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=security')}">{PHP.L.core_security}</a>
									</li>
									<li>
										{PHP.R.icon-plug}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=sessions')}">{PHP.L.core_sessions}</a>
									</li>
									<li>
										{PHP.R.icon-palette}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.core_theme}</a>
									</li>
									<li>
										{PHP.R.icon-code}<a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.core_title}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
<!-- IF {PHP.cot_modules.page} -->
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed fw-bold text-uppercase px-3 py-2" data-bs-toggle="collapse" data-bs-target="#menu3" aria-expanded="false" aria-controls="menu3">{PHP.L.Pages}</div>
						<div id="menu3" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=page')}">{PHP.L.Configuration}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_extrafields_pages}</a>
									</li>
									<li>
										{PHP.R.icon-wrench}<a href="{PHP|cot_url('admin','m=page')}">{PHP.L.Management}</a>
									</li>
									<li>
										{PHP.R.icon-folder-tree}<a href="{PHP|cot_url('admin','m=structure&n=page')}">{PHP.L.Structure}</a>
									</li>
<!-- IF {PHP.cot_plugins_active.csv} -->
									<li>
										{PHP.R.icon-database}<a href="{PHP.usr.id|cot_url('admin','m=other&p=csv')}">CSV Import / Export</a>
									</li>
<!-- ENDIF -->
								</ul>
							</div>
						</div>
					</div>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.forums} -->
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed fw-bold text-uppercase px-3 py-2" data-bs-toggle="collapse" data-bs-target="#menu4" aria-expanded="false" aria-controls="menu4">{PHP.L.Forums}</div>
						<div id="menu4" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=forums')}">{PHP.L.Configuration}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP.db_forum_posts|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_extrafields_forums_posts}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP.db_forum_topics|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_extrafields_forums_topics}</a>
									</li>
									<li>
										{PHP.R.icon-wrench}<a href="{PHP|cot_url('admin','m=forums')}">{PHP.L.Management}</a>
									</li>
									<li>
										{PHP.R.icon-folder-tree}<a href="{PHP|cot_url('admin','m=structure&n=forums')}">{PHP.L.Structure}</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
<!-- ENDIF -->
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed fw-bold text-uppercase px-3 py-2" data-bs-toggle="collapse" data-bs-target="#menu5" aria-expanded="false" aria-controls="menu5">{PHP.L.Users}</div>
						<div id="menu5" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.R.icon-gear}<a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}">{PHP.L.Configuration}</a>
									</li>
									<li>
										{PHP.R.icon-bars}<a href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}">{PHP.L.home_extrafields_users}</a>
									</li>
									<li>
										{PHP.R.icon-lock}<a href="{PHP|cot_url('admin','m=users')}">{PHP.L.home_users_rights}</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-item menu_entry">
						<div class="accordion-button collapsed fw-bold text-uppercase px-3 py-2" data-bs-toggle="collapse" data-bs-target="#menu6" aria-expanded="false" aria-controls="menu6">Сейчас онлайн</div>
						<div id="menu6" class="accordion-collapse collapse" data-bs-parent="#menu">
							<div class="accordion-body">
								<ul class="list-unstyled m-0">
									<li>
										{PHP.out.whosonline}:<br />
										{PHP.out.whosonline_reg_list}
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

<!-- IF {PHP.cot_plugins_active.adminstats} -->
				<div class="miniwidget block">
					<span class="fw-bold mb-1 pb-1 border-bottom border-dark-subtle d-block">{PHP.L.admin-engine}:</span>
					<ul class="list-unstyled m-0">
						<li>{PHP.adminstats.version.title}: <span>{PHP.adminstats.version.value}</span></li>
						<li>{PHP.adminstats.admintheme.title}: <span>{PHP.adminstats.admintheme.value} {PHP.adminstats.admintheme.version}</span></li>
						<li>{PHP.adminstats.defaulttheme.title}: <span>{PHP.adminstats.defaulttheme.value} {PHP.adminstats.defaulttheme.version}</span></li>
						<li>{PHP.adminstats.defaultscheme.title}: <span>{PHP.adminstats.defaultscheme.value}</span></li>
						<li>{PHP.adminstats.defaulticons.title}: <span>{PHP.adminstats.defaulticons.value} {PHP.adminstats.defaulticons.version}</span></li>
						<li>{PHP.adminstats.defaultlang.title}: <span>{PHP.adminstats.defaultlang.value}</span></li>
					</ul>
				</div>
				<div class="miniwidget block">
					<span class="fw-bold mb-1 pb-1 border-bottom border-dark-subtle d-block">{PHP.L.Database}:</span>
					<ul class="list-unstyled m-0">
						<li>{PHP.adminstats.database.title}: <span>{PHP.adminstats.database.value}</span></li>
						<li>{PHP.adminstats.mysqlcharset.title}: <span>{PHP.adminstats.mysqlcharset.value}</span></li>
						<li>{PHP.adminstats.db_counts.title}: <span>{PHP.adminstats.db_counts.value}</span></li>
						<li>{PHP.adminstats.db_rows.title}: <span>{PHP.adminstats.db_rows.value}</span></li>
						<li>{PHP.adminstats.db_indexsize.title}: <span>{PHP.adminstats.db_indexsize.value}</span></li>
						<li>{PHP.adminstats.db_datassize.title}: <span>{PHP.adminstats.db_datassize.value}</span></li>
						<li>{PHP.adminstats.db_totalsize.title}: <span>{PHP.adminstats.db_totalsize.value}</span></li>
					</ul>
				</div>
				<div class="miniwidget block">
					<span class="fw-bold mb-1 pb-1 border-bottom border-dark-subtle d-block">{PHP.L.Extensions}:</span>
					<ul class="list-unstyled m-0">
						<li>{PHP.adminstats.active_modules.title}: <span>{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</span></li>
						<li>{PHP.adminstats.active_plugins.title}: <span>{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</span></li>
						<li>{PHP.adminstats.active_hooks.title}: <span>{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</span></li>
					</ul>
				</div>
				<div class="miniwidget block">
					<span class="fw-bold mb-1 pb-1 border-bottom border-dark-subtle d-block">{PHP.L.Settings}:</span>
					<ul class="list-unstyled m-0">
						<li>{PHP.adminstats.check_updates.title}: <span>{PHP.adminstats.check_updates.value}</span></li>
						<li>{PHP.adminstats.debug_mode.title}: <span>{PHP.adminstats.debug_mode.value}</span></li>
						<li>{PHP.adminstats.display_errors.title}: <span>{PHP.adminstats.display_errors.value}</span></li>
					</ul>
				</div>
				<div class="miniwidget block">
					<span class="fw-bold mb-1 pb-1 border-bottom border-dark-subtle d-block">{PHP.L.admin-cache}:</span>
					<ul class="list-unstyled m-0">
						<li>{PHP.adminstats.cache.title}: <span>{PHP.adminstats.cache.value}</span></li>
						<!-- IF {PHP.adminstats.cache.value} != {PHP.L.Disabled} -->
						<li>{PHP.adminstats.cache_drv.title}: <span>{PHP.adminstats.cache_drv.value}</span></li>
						<!-- ENDIF -->
						<li>{PHP.adminstats.xtpl_cache.title}: <span>{PHP.adminstats.xtpl_cache.value}</span></li>
						<li>{PHP.adminstats.html_cleanup.title}: <span>{PHP.adminstats.html_cleanup.value}</span></li>
						<li>{PHP.adminstats.cache_index.title}: <span>{PHP.adminstats.cache_index.value}</span></li>
						<li>{PHP.adminstats.cache_page.title}: <span>{PHP.adminstats.cache_page.value}</span></li>
						<li>{PHP.adminstats.cache_forums.title}: <span>{PHP.adminstats.cache_forums.value}</span></li>
					</ul>
				</div>

				<div class="miniwidget block">
					<span class="fw-bold mb-1 pb-1 border-bottom border-dark-subtle d-block">{PHP.L.admin-activity-for} {PHP.R.admin-home-recent|cot_declension($this, Days)}:</span>
					<ul class="list-unstyled m-0">
<!-- IF {PHP.cot_modules.page} -->
						<li>{PHP.L.home_newpages}: <span>{PHP.R.admin-home-recent|item_counter('pages', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.comments} -->
						<li>{PHP.L.admin-new-comments}: <span>{PHP.R.admin-home-recent|item_counter('comments', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.forums} -->
						<li>{PHP.L.home_newtopics}: <span>{PHP.R.admin-home-recent|item_counter('topics', $this)}</span></li>
						<li>{PHP.L.home_newposts}: <span>{PHP.R.admin-home-recent|item_counter('posts', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.pm} -->
						<li>{PHP.L.home_newpms}: <span>{PHP.R.admin-home-recent|item_counter('pm', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.polls} -->
						<li>{PHP.L.admin-new-polls}: <span>{PHP.R.admin-home-recent|item_counter('polls', $this)}</span></li>
<!-- ENDIF -->
						<li>{PHP.L.home_newusers}: <span>{PHP.R.admin-home-recent|item_counter('users_reg', $this)}</span></li>
						<li>{PHP.L.admin-ret-users}: <span>{PHP.R.admin-home-recent|item_counter('users', $this)}</span></li>
					</ul>
				</div>
<!-- ENDIF -->
				<div class="miniwidget block">
					<ul class="list-unstyled m-0">
						<li>Powered by <a href="https://www.cotonti.com">Cotonti Siena {PHP.cfg.version}</a></li>
						<li>Theme developed by <a href="https://sed.by">SED.BY</a></li>
					</ul>
				</div>
			</div>
<!-- END: HEADER -->
