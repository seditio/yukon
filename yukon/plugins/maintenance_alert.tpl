<!-- BEGIN: MAIN -->
<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast" class="toast show" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <strong class="me-auto">{PHP.L.maintenance_alert_title}</strong>
      <small>{PHP.L.Hide}:</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      <p class="lh-sm mb-0 smaller">
        {PHP.L.maintenance_alert_warning}
      </p>
      <div class="mt-2 pt-2 border-top">
        <a href="{MA_URL}" class="btn btn-primary btn-sm">{PHP.L.maintenance_alert_settings}</a>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->
