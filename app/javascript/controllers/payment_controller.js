import { Controller } from "@hotwired/stimulus";

let elements;
const csrfToken = document.getElementByName("csrf-token")[0].content;

export default class extends Controller {
  connect() {
    console.log(csrfToken, "test yuh");
  }
}
