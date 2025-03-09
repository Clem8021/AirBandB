import "@hotwired/turbo-rails";
import "controllers";
import "@popperjs/core";
import "bootstrap";
import * as bootstrap from "bootstrap";
import { Modal } from "bootstrap";
import flatpickr from "flatpickr";


window.flatpickr = flatpickr;


function initializeFlatpickr() {
  console.log("🚀 Initialisation de Flatpickr...");

  document.querySelectorAll(".neon-input").forEach((el) => {
    if (!el._flatpickr) {
      console.log("🔄 Activation Flatpickr sur :", el);
      flatpickr(el, { minDate: "today", theme: "material_purple" });
    }
  });
}


document.addEventListener("turbo:load", initializeFlatpickr);


document.addEventListener("DOMContentLoaded", function() {
  console.log("🚀 DOMContentLoaded - Vérification de Flatpickr");

  var bookingModal = document.getElementById("experienceBookingModal");

  if (bookingModal) {
    bookingModal.addEventListener("shown.bs.modal", function () {
      console.log("📅 Réouverture de la modal - Réinitialisation Flatpickr");

      document.querySelectorAll(".neon-input").forEach((el) => {
        el._flatpickr?.destroy();
        flatpickr(el, { minDate: "today", theme: "material_purple" });
      });
    });
  }

  initializeFlatpickr();
});
