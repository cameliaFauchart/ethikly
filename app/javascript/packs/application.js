
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//
//
//= require turbolinks







// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import { AddLetter } from "../components/animated_text";
import { displayShow } from '../components/display_show';
import { initChart } from '../components/chart_stats';


document.addEventListener('turbolinks:load', () => {
  setInterval(AddLetter, 100);
  // Call your functions here, e.g:
  // initSelect2();
    initChart();
    displayShow();
});
