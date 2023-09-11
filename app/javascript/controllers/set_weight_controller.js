import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="set-weight"
export default class extends Controller {
  static targets= ["weight", "weights", "input", "form"]
  update(event) {
    event.preventDefault()
    console.log(this.inputTarget.value)
    console.log(this.weightsTarget.innerText)
    this.weightsTarget.innerText = this.inputTarget.value
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
  }
}
