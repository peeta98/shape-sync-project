import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-exercises-to-workout"
export default class extends Controller {
  static targets=["div"]
  show(event) {
    event.preventDefault()
    this.divTarget.classList.toggle("d-none")
  }
}
