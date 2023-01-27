<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col-12">
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.Forums}</h2>
			<div class="wrapper">
				<div class="btn-group">
					<a href="{ADMIN_FORUMS_URL_CONFIG}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-gear}{PHP.L.Configuration}</a>
					<a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-sitemap}{PHP.L.Categories}</a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-4">
		<div class="block">
			<h2>{PHP.R.icon-chart-simple}{PHP.L.Statistics}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="table table-bordered">
						<tr class="{PHP.R.admin-table-tr-class}">
							<td>{PHP.L.forums_topics}:</td>
							<td>{ADMIN_FORUMS_TOTALTOPICS}</td>
						</tr>
						<tr class="{PHP.R.admin-table-tr-class}">
							<td>{PHP.L.forums_posts}:</td>
							<td>{ADMIN_FORUMS_TOTALPOSTS}</td>
						</tr>
						<tr class="{PHP.R.admin-table-tr-class}">
							<td>{PHP.L.Views}:</td>
							<td>{ADMIN_FORUMS_TOTALVIEWS}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-8">
		<div class="block">
			<h2>{PHP.R.icon-plus}{PHP.L.home_newtopics}</h2>
			<div class="wrapper">
				<div class="{PHP.R.admin-table-responsive-container-class}">
					<table class="table table-bordered">
<!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
						<tr class="{PHP.R.admin-table-tr-class}">
							<td class="w-5">{ADMIN_FORUMS_ROW_II}.</td>
							<td class="w-85 text-start">{ADMIN_FORUMS_ROW_FORUMS} {PHP.cfg.separator} <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a></td>
							<td class="w-10">{ADMIN_FORUMS_ROW_POSTCOUNT}</td>
						</tr>
<!-- END: ADMIN_FORUMS_ROW_USER -->
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
