import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["form", "comment-box"]
  fire() {
    this.formTarget.classList.toggle("d-none");
  }

  fill(event) {
    event.preventDefault();
    console.log(this.commentBoxTarget.value);
    this.commentBoxTarget.insertAdjacentHTML("beforeend", `<p></p>`)
  }
}
