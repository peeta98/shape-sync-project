import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="set-reps"
export default class extends Controller {
  static targets= ["rep", "reps", "form", "input"]
  decrease(event) {
    event.preventDefault()
    this.repTarget.innerHTML = parseInt(event.currentTarget.nextElementSibling.innerText) - 1
    this.repsTarget.innerText = this.repTarget.innerHTML
    this.inputTarget.value = this.repsTarget.innerText
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
  }

  increase(event) {
    event.preventDefault()
    this.repTarget.innerHTML = parseInt(event.currentTarget.previousElementSibling.innerText) + 1
    this.repsTarget.innerText = this.repTarget.innerHTML
    this.inputTarget.value = this.repsTarget.innerText
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
  }
}
