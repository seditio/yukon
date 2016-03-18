<!-- BEGIN: MAIN -->
	<div class="container-fluid">
		<div class="row">
			<div id="topbar" class="col-md-12">
				<div>
					<ul id="layout" class="list-unstyled">
						<li id="hidesidebar"><a href="#" class="btn btn-default btn-xs" rel="{PHP.L.hds0} / {PHP.L.hds1}"><i class="fa fa-arrows-h"></i> <span>{PHP.L.hds0}</span></a></li>
						<li id="hidenavigation"><a href="#" class="btn btn-default btn-xs" rel="{PHP.L.hdn0} / {PHP.L.hdn1}"><i class="fa fa-arrows-v"></i> <span>{PHP.L.hdn0}</span></a></li>
						<li id="fullscreen"><a href="#" class="btn btn-default btn-xs" rel="{PHP.L.str0} / {PHP.L.str1}"><i class="fa fa-arrows-alt"></i> <span>{PHP.L.str0}</span></a></li>
						<li id="removecookies"><a href="#" class="btn btn-default btn-xs"><i class="fa fa-times"></i> <span>{PHP.L.Reset}</span></a></li>
					</ul>
					<ul id="settings" class="list-unstyled">
						<li>
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.hea_viewsite}" class="btn btn-default btn-xs">
								<i class="fa fa-external-link"></i> <span><!-- IF {PHP.cfg.maintitle} && {PHP.cfg.maintitle|mb_strlen} < 50 -->{PHP.cfg.maintitle}<!-- ELSE -->{PHP.L.hea_viewsite}</span><!-- ENDIF -->
							</a>
						</li>
						<li>
<!-- IF {PHP.R.Usermanager} -->
							<a href="{PHP.R.Usermanager|cot_url('admin','m=other&a=profile&p=$this')}" class="btn btn-default btn-xs">
<!-- ELSE -->
							<a href="{PHP|cot_url('users','m=profile')}" class="btn btn-default btn-xs">
<!-- ENDIF -->
								<i class="fa fa-user"></i> <span>{PHP.usr.name}</span>
							</a>
						</li>
						<li class="loginout">{PHP.out.loginout}</li>
					</ul>
				</div>
			</div>
		</div>	
	
		<div id="wrapper">
			<div id="sidebar">
				<a href="{PHP|cot_url('admin')}" id="logo"><i class="fa fa-dashboard"></i>{PHP.L.admin-panel}</a>
				<div id="profile">
					<p>{PHP.L.admin-hi}, <a href="{PHP|cot_url('users','m=profile')}">{PHP.usr.name}</a></p>
					<i class="fa fa-user fa-3x fa-border pull-left"></i>
					<ul class="list-unstyled">
						<li>
<!-- IF {PHP.R.Usermanager} -->
							<a class="btn btn-default btn-xs" href="{PHP.R.Usermanager|cot_url('admin','m=other&a=profile&p=$this')}">
<!-- ELSE -->
							<a class="btn btn-default btn-xs" href="{PHP|cot_url('users','m=profile')}">
<!-- ENDIF -->
								<i class="fa fa-user"></i> {PHP.L.Profile}
							</a>
						</li>
						<li>
<!-- IF {PHP.R.Usermanager} -->
							<a class="btn btn-default btn-xs" href="{PHP.R.Usermanager|cot_url('admin','m=other&a=details&p=$this')}">
<!-- ELSE -->
							<a class="btn btn-default btn-xs" href="{PHP|cot_url('users','m=details')}">
<!-- ENDIF -->
								<i class="fa fa-floppy-o"></i> {PHP.L.Page}
							</a>
						</li>
<!-- IF {PHP.cot_modules.pm} -->
						<li><a class="btn btn-default btn-xs" href="{PHP|cot_url('pm')}"><i class="fa fa-comment"></i> {PHP.L.Private_Messages}</a></li>
<!-- ENDIF -->
						<li class="loginout">{PHP.out.loginout}</li>
					</ul>
				</div>
			
				<div id="menu" class="panel-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#mainnav">
								{PHP.L.Navigation}
							</a>
						</div>
						<div id="mainnav" class="panel-collapse collapse">
							<ul class="accordion-inner">
								<li><i class="fa fa-home"></i><a href="{PHP|cot_url('admin')}">{PHP.L.Home}</a></li>
								<li><i class="fa fa-cog"></i><a href="{PHP|cot_url('admin', 'm=config')}">{PHP.L.Configuration}</a></li>
								<li><i class="fa fa-sitemap"></i><a href="{PHP|cot_url('admin', 'm=structure')}">{PHP.L.Structure}</a></li>
								<li><i class="fa fa-puzzle-piece"></i><a href="{PHP|cot_url('admin', 'm=extensions')}">{PHP.L.Extensions}</a></li>
								<li><i class="fa fa-user"></i><a href="{PHP|cot_url('admin', 'm=users')}">{PHP.L.Users}</a></li>
								<li><i class="fa fa-wrench"></i><a href="{PHP|cot_url('admin', 'm=other')}">{PHP.L.Other}</a></li>
							</ul>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#general">
								{PHP.L.home_ql_b1_title}
							</a>
						</div>
						<div id="general" class="panel-collapse collapse">
							<ul class="accordion-inner">
								<li><i class="fa fa-cog"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.home_ql_b1_1}</a></li>
								<li><i class="fa fa-code"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.home_ql_b1_2}</a></li>
								<li><i class="fa fa-adjust"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.home_ql_b1_3}</a></li>
								<li><i class="fa fa-tasks"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=menus')}">{PHP.L.home_ql_b1_4}</a></li>
								<li><i class="fa fa-globe"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}">{PHP.L.Locale}</a></li>
								<li><i class="fa fa-bars"></i><a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a></li>
							</ul>
						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#pages">
								{PHP.L.Pages}
							</a>
						</div>
						<div id="pages" class="panel-collapse collapse">
							<ul class="accordion-inner">
<!-- IF {PHP.cot_plugins_active.csv_import} -->
								<li><i class="fa fa-database"></i><a href="{PHP.usr.id|cot_url('admin','m=other&p=csv_import')}">CSV Import</a></li>
<!-- ENDIF -->
								<li><i class="fa fa-ban"></i><a href="{PHP|cot_url('admin','m=page')}">{PHP.sys.pagesqueued|cot_declension($this, 'Pages')} {PHP.L.admin-queued}</a></li>
								<li><i class="fa fa-plus"></i><a href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a></li>
								<li><i class="fa fa-bars"></i><a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a></li>
<!-- IF {PHP.cot_plugins_active.portal_stats} -->
								<li><i class="fa fa-cogs"></i><a href="{PHP|cot_url('admin','m=other&p=portal_stats')}">Статистика портала</a></li>
<!-- ENDIF -->
							</ul>
						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#users">
								{PHP.L.Users}
							</a>
						</div>
						<div id="users" class="panel-collapse collapse">
							<ul class="accordion-inner">
<!-- IF {PHP.R.Usermanager} -->
								<li><i class="fa fa-group"></i><a href="{PHP.R.Usermanager|cot_url('admin','m=other&p=$this')}">{PHP.L.Usermanager}</a></li>
<!-- ENDIF -->
								<li><i class="fa fa-cog"></i><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}">{PHP.L.home_ql_b3_1}</a></li>
								<li><i class="fa fa-bars"></i><a href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}">{PHP.L.home_ql_b3_2}</a></li>
								<li><i class="fa fa-lock"></i><a href="{PHP|cot_url('admin','m=users')}">{PHP.L.home_ql_b3_4}</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			
<!-- IF {PHP.cot_plugins_active.adminstats} -->
				<div class="miniwidget">
					<strong>{PHP.L.Engine}:</strong>
					<ul class="list-unstyled">
						<li>{PHP.adminstats.version.title}: <span class="pull-right">{PHP.adminstats.version.value}</span></li>
						<li>{PHP.adminstats.database.title}: <span class="pull-right">{PHP.adminstats.database.value}</span></li>
						
						<li>{PHP.adminstats.defaulttheme.title}: <span class="pull-right">{PHP.adminstats.defaulttheme.value}</span></li>
						<li>{PHP.adminstats.defaultscheme.title}: <span class="pull-right lower">{PHP.adminstats.defaultscheme.value}</span></li>
						<li>{PHP.adminstats.defaulticons.title}: <span class="pull-right lower">{PHP.adminstats.defaulticons.value}</span></li>
						<li>{PHP.adminstats.defaultlang.title}: <span class="pull-right">{PHP.adminstats.defaultlang.value}</span></li>
						<li>{PHP.adminstats.admintheme.title}: <span class="pull-right">{PHP.adminstats.admintheme.value}</span></li>
						
						<li>{PHP.adminstats.active_modules.title}: <span class="pull-right">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</span></li>
						<li>{PHP.adminstats.active_plugins.title}: <span class="pull-right">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</span></li>
						<li>{PHP.adminstats.active_hooks.title}: <span class="pull-right">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</span></li>
						
						<li>{PHP.adminstats.check_updates.title}: <span class="pull-right lower">{PHP.adminstats.check_updates.value}</span></li>
						<li>{PHP.adminstats.debug_mode.title}: <span class="pull-right lower">{PHP.adminstats.debug_mode.value}</span></li>
					</ul>
				</div>
				<hr>
				<div class="miniwidget">
					<strong>{PHP.L.Activityfor} {PHP.R.Recent|cot_declension($this, Days)}:</strong>
					<ul class="list-unstyled">
<!-- IF {PHP.cot_modules.page} -->
						<li>{PHP.L.Newpages}: <span class="pull-right">{PHP.R.Recent|item_counter('page', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.comments} -->
						<li>{PHP.L.Newcomments}: <span class="pull-right">{PHP.R.Recent|item_counter('comments', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.forums} -->
						<li>{PHP.L.Newposts}: <span class="pull-right">{PHP.R.Recent|item_counter('posts', $this)}</span></li>
						<li>{PHP.L.Newtopics}: <span class="pull-right">{PHP.R.Recent|item_counter('topics', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.pm} -->
						<li>{PHP.L.Newpm}: <span class="pull-right">{PHP.R.Recent|item_counter('pm', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.polls} -->
						<li>{PHP.L.Newpolls}: <span class="pull-right">{PHP.R.Recent|item_counter('polls', $this)}</span></li>
<!-- ENDIF -->
						<li>{PHP.L.Newusers}: <span class="pull-right">{PHP.R.Recent|item_counter('users_reg', $this)}</span></li>
						<li>{PHP.L.Retusers}: <span class="pull-right">{PHP.R.Recent|item_counter('users', $this)}</span></li>
					</ul>
				</div>
				<hr>
<!-- ENDIF -->
				<div class="miniwidget">
					<ul class="list-unstyled">
						<li>Powered by <a href="http://www.cotonti.com">Cotonti Siena ver {PHP.cfg.version}</a></li>
						<li>Theme developed by <a href="http://www.seditio.by">Seditio.by</a></li>
					</ul>
				</div>
				<hr>
			</div>
	
			<div id="content">
				<div class="row-fluid hidden-phone clearfix">
					<div id="breadcrumbs" class="col-md-12">
						<div>
							{ADMIN_TITLE}
						</div>
					</div>
				</div>
				<nav class="clearfix">
					<h1><!-- IF {ADMIN_SUBTITLE} -->{ADMIN_SUBTITLE}<!-- ELSE -->{PHP.L.Home}<!-- ENDIF --></h1>
					<div class="row-fluid">
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', '')}" id="nv-home" class="nv<!-- IF !{PHP.m} --> sel<!-- ENDIF -->">
								<span>{PHP.L.Home}</span>
								<i class="fa fa-home fa-5x"></i>
								<hr>
							</a>
						</div>
<!-- IF {PHP.usr.admin_config} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=config')}" id="nv-config" class="nv<!-- IF {PHP.m} == 'config' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Configuration}</span>
								<i class="fa fa-cog fa-5x"></i>
								<hr>
							</a>
						</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_structure} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=structure')}" id="nv-structure" class="nv<!-- IF {PHP.m} == 'structure' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Structure}</span>
								<i class="fa fa-sitemap fa-5x"></i>
								<hr>
							</a>
						</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_config} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=extensions')}" id="nv-extensions" class="nv<!-- IF {PHP.m} == 'extensions' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Extensions}</span>
								<i class="fa fa-puzzle-piece fa-5x"></i>
								<hr>
							</a>
						</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_users} -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=users')}" id="nv-users" class="nv<!-- IF {PHP.m} == 'users' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Users}</span>
								<i class="fa fa-group fa-5x"></i>
								<hr>
							</a>
						</div>
<!-- ENDIF -->
						<div class="col-md-2">
							<a href="{PHP|cot_url('admin', 'm=other')}" id="nv-other" class="nv<!-- IF {PHP.m} == 'other' --> sel<!-- ENDIF -->">
								<span>{PHP.L.Other}</span>
								<i class="fa fa-wrench fa-5x"></i>
								<hr>
							</a>
						</div>
					</div>
				</nav>
				<div id="ajaxBlock" class="clearfix">
<!-- BEGIN: BODY -->
					<div class="clearfix">
{ADMIN_MAIN}
					</div>
<!-- IF {ADMIN_HELP} -->
					<div class="row-fluid">
						<div class="col-md-12">
							<div class="alert alert-info">
								<h4>{PHP.L.Help}:</h4>
								<p>{ADMIN_HELP}</p>
							</div>
						</div>
					</div>
<!-- ENDIF -->
<!-- END: BODY -->
				</div>
			</div>
		</div>
	</div>
<!-- END: MAIN -->