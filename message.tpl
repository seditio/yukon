<!-- BEGIN: MAIN -->
<!-- IF !{AJAX_MODE} -->
	<h1 class="body">{MESSAGE_TITLE}</h1>
	<div id="main" class="body clear">
<!-- ENDIF -->		
		<div class="clearfix warning">
			<div>{MESSAGE_BODY}</div>
<!-- BEGIN: MESSAGE_CONFIRM -->
			<div id="msgbox" class="clearfix">
				<div><a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton btn btn-success btn-sm">{PHP.L.Yes}</a></div>
				<div><a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton btn btn-danger btn-sm">{PHP.L.No}</a></div>
			</div>
<!-- END: MESSAGE_CONFIRM -->
		</div>
<!-- IF !{AJAX_MODE} -->				
	</div>
<!-- ENDIF -->	
<!-- END: MAIN -->