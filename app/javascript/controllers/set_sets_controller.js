import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="set-sets"
export default class extends Controller {
  static targets= ["set", "sets", "input", "form"]
  decrease(event) {
    event.preventDefault()
    this.setTarget.innerHTML = parseInt(event.currentTarget.nextElementSibling.innerText) - 1
    this.setsTarget.innerText = this.setTarget.innerHTML
    this.inputTarget.value = this.setsTarget.innerText
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
  }

  increase(event) {
    event.preventDefault()
    this.setTarget.innerHTML = parseInt(event.currentTarget.previousElementSibling.innerText) + 1
    this.setsTarget.innerText = this.setTarget.innerHTML
    this.inputTarget.value = this.setsTarget.innerText
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
  }
}
