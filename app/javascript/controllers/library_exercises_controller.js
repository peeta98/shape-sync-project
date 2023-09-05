import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="library-exercises"
export default class extends Controller {
  static targets= ["search", "form", "list","exercises", "button"]

  search() {
    const url = `${this.formTarget.action}?search=${this.searchTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.listTarget.outerHTML = data
    })
  }

  showExercises() {
    this.exercisesTarget.classList.toggle("d-none")
  }
}
