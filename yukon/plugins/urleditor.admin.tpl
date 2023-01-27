<!-- BEGIN: MAIN -->
<div class="row">
	<div class="col">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: HTA -->
		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.adm_urls_your} {ADMIN_URLS_CONF_NAME}</h2>
			<div class="wrapper">
				<pre class="code">{ADMIN_URLS_HTA}</pre>
			</div>
		</div>
<!-- END: HTA -->

		<div class="block">
			<h2>{PHP.R.icon-plug}{PHP.L.adm_urls_rules}</h2>
			<div class="wrapper">

<!-- IF {PHP.cfg.jquery} -->
				<script type="text/javascript" src="js/jquery.tablednd.min.js"></script>
				<script type="text/javascript">
				$(document).ready(function(){
					$("#rules").tableDnD({});
					$("#rule_new").hide();
					$("#add_rule").show();
				});
				var ruleCount = 0;
				function addRule()
				{
					var object = $('#rule_new').clone().attr("id", 'rule_'+ruleCount).show();
					$('#rules_top').after(object);
					$("#rules").tableDnDUpdate();
					ruleCount++;
					return false;
				}
				</script>
<!-- ENDIF -->

				<style type="text/css">tr.tDnD_whileDrag td{ background-color:yellow; }</style>

				<form name="add_url" id="add_url" action="{ADMIN_URLS_FORM_URL}" method="post" class="ajax">
					<div class="{PHP.R.admin-table-responsive-container-class}">
						<table id="rules" class="{PHP.R.admin-table-class}">
							<thead>
								<tr id="rules_top" class="nodrop nodrag">
									<th class="w-25">{PHP.L.adm_urls_area}</th>
									<th class="w-25">{PHP.L.adm_urls_parameters}</th>
									<th class="w-25">{PHP.L.adm_urls_format}</th>
									<th class="w-25">{PHP.L.Delete}</th>
								</tr>
							</thead>
							<tbody>
<!-- BEGIN: ROW -->
								<tr id="rule_{ADMIN_URLS_ROW_I}" class="{PHP.R.admin-table-tr-class}">
									<td>{ADMIN_URLS_ROW_AREAS}</td>
									<td>{ADMIN_URLS_ROW_PARTS1}</td>
									<td>{ADMIN_URLS_ROW_PARTS2}</td>
									<td>
										<a title="{PHP.L.Delete}" href="#" onclick="$(this).parent().parent().remove();return false;" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}{PHP.L.Delete}</a>
									</td>
								</tr>
<!-- END: ROW -->
								<tr id="rule_new" class="{PHP.R.admin-table-tr-class}">
									<td>{ADMIN_URLS_ROW_AREAS}</td>
									<td>{ADMIN_URLS_ROW_PARTS1}</td>
									<td>{ADMIN_URLS_ROW_PARTS2}</td>
									<td class="action">
										<a title="{PHP.L.Delete}" href="#" onclick="$(this).parent().parent().remove();return false;" class="btn {PHP.R.admin-button-danger-class} {PHP.R.admin-button-size-class}">{PHP.R.icon-trash}<span>{PHP.L.Delete}</span></a>
									</td>
								</tr>
								<tr id="add_rule" style="display:none;" class="nodrop nodrag">
									<td colspan="4">
										<script type="text/javascript">
										ruleCount = {ADMIN_URLS_II};
										</script>
										<a href="#" class="fw-bold" onclick="return addRule()">{PHP.L.adm_urls_new}</a>
									</td>
								</tr>
<!-- IF {PHP.htaccess} -->
								<tr>
									<td>
										<input type="checkbox" name="htaccess" />
										<span class="fw-bold d-block">{PHP.L.adm_urls_htaccess}</span>
									</td>
									<td>
										{PHP.L.adm_urls_custom_htaccess}:
									</td>
									<td colspan="2">
										<textarea name="custom_htaccess" rows="8" cols="80">{ADMIN_URLS_CUSTOM_HTACCESS}</textarea>
									</td>
								</tr>
<!-- ENDIF -->
								<tr>
									<td colspan="4">
										<button type="submit" class="btn {PHP.R.admin-button-primary-class} {PHP.R.admin-top-button-size-class}">{PHP.R.icon-check-square}{PHP.L.adm_urls_save}</button>
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
