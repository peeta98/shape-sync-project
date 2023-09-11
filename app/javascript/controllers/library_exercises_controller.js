import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="library-exercises"
export default class extends Controller {
  static targets= ["search", "form", "list","exercises", "button"]
  connect() {
    console.log(this.exercisesTargets)
  }

  search() {
    const url = `${this.formTarget.action}?search=${this.searchTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        this.listTarget.outerHTML = data
    })
  }

 showExercises(event) {
  //event.currentTarget.classList.toggle("d-none")
    this.exercisesTargets.forEach((exercises) =>{
      console.log(exercises.id)
      if (event.currentTarget.id === exercises.id) {
      exercises.classList.toggle("d-none")}
    })
  }
}
