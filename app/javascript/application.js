import "@hotwired/turbo-rails";
import "./controllers";
import * as bootstrap from "bootstrap";
import $ from "jquery";

$(document).on('turbo:load', function() {
  $('[data-bs-toggle="tooltip"]').each(function() {
    new bootstrap.Tooltip(this);
  });
});
