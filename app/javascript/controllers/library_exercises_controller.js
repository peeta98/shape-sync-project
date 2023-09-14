import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="library-exercises"
export default class extends Controller {
  static targets= ["search", "form", "list","exercises", "button"]

  search() {
    const url = `${this.formTarget.action}?search=${this.searchTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
    })
  }

 showExercises(event) {
  //event.currentTarget.classList.toggle("d-none")
    this.exercisesTargets.forEach((exercises) =>{
      if (event.currentTarget.id === exercises.id) {
      exercises.classList.toggle("d-none")}
    })
  }
}
