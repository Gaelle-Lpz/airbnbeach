import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["btn", "nav"]

  connect() {
  }

  toggleNav() {
    this.btnTarget.classList.toggle("active")
    this.navTarget.classList.toggle("active")
  }
}
