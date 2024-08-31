import "@hotwired/turbo-rails";
import "./controllers";
import * as bootstrap from "bootstrap";
import 'bootstrap-icons';

import $ from "jquery";
import Rails from "@rails/ujs";

Rails.start();

$(document).on('turbo:load', function() {
  $('[data-bs-toggle="tooltip"]').each(function() {
    new bootstrap.Tooltip(this);
  });
});
