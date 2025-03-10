import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    console.log("📅 Flatpickr connecté sur :", this.element);

    this.picker = flatpickr(this.element, {
      minDate: "today",
      theme: "material_purple"
    });
  }

  disconnect() {
    if (this.picker) {
      console.log("❌ Destruction de Flatpickr :", this.element);
      this.picker.destroy();
    }
  }
}
