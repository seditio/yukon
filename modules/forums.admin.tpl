<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="col-md-12">
					<div class="block">
						<h5><i class="fa fa-globe"></i> {PHP.L.Forums}</h5>
						<div class="wrapper">
						<div class="btn-group">
							<a title="{PHP.L.Configuration}" href="{ADMIN_FORUMS_URL_CONFIG}" class="btn btn-primary"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
							<a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="btn btn-primary"><i class="fa fa-sitemap"></i> {PHP.L.Categories}</a>
						</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="col-md-6">
					<div class="block">
						<h5><i class="fa fa-bar-chart-o"></i> {PHP.L.Statistics}</h5>
						<div class="wrapper">
						<table class="table table-bordered">
							<tr>
								<td>{PHP.L.forums_topics}:</td>
								<td class="text-center">{ADMIN_FORUMS_TOTALTOPICS}</td>
							</tr>
							<tr>
								<td>{PHP.L.forums_posts}:</td>
								<td class="text-center">{ADMIN_FORUMS_TOTALPOSTS}</td>
							</tr>
							<tr>
								<td>{PHP.L.Views}:</td>
								<td class="text-center">{ADMIN_FORUMS_TOTALVIEWS}</td>
							</tr>
						</table>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="block">
						<h5><i class="fa fa-plus-circle"></i> {PHP.L.home_newtopics}</h5>
						<div class="wrapper">
							<table class="table table-bordered">
<!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
								<tr>
									<td class="width5">{ADMIN_FORUMS_ROW_II}.</td>
									<td class="width85">{ADMIN_FORUMS_ROW_FORUMS} {PHP.cfg.separator} <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a></td>
									<td class="centerall width10">{ADMIN_FORUMS_ROW_POSTCOUNT}</td>
								</tr>
<!-- END: ADMIN_FORUMS_ROW_USER -->
							</table>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->