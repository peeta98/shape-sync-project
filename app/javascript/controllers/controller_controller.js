import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="controller"
export default class extends Controller {
  static targets = ["achievements"];
  connect() {
  }

  sort(event) {
    const token = document.getElementsByName("csrf-token")[0].content;
    const sortingCriteria = event.currentTarget.getAttribute("data-sort");
    let url;

    switch (sortingCriteria) {
      case 'completion':
        url = '/achievements/completion';
        break;
      case 'category':
        url = '/achievements/category';
        break;
      case 'status':
        url = '/achievements/status';
        break;
      default:
        return;
    }

    fetch(url, {
      method: "POST",
      credentials: "same-origin",
      headers: {
        "X-CSRF-Token": token,
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
    })
    .then((response) => response.json())
    .then(data => {
      console.log(data);
      data
      const innerHTML = data.achievements.map(achievement =>`
        <div class="achievement">
          <div><strong>${achievement.name}</strong></div>
          <div>${achievement.category}</div>
          <div>0/${achievement.goal}</div>
        </div>
        <div class="description">
          <p>Description: ${achievement.description}</p>
          <p>${achievement.status}</p>
        </div>
      `).join('')

      this.achievementsTarget.innerHTML = innerHTML;
    });
  }

}
    /*fetch(url, {
      method: "GET",
      headers: {


        "Accept": "text/plain",
      },
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data)
        // Update the achievements list with the sorted data
        //this.achievementsTarget.innerHTML = data;
      })*/;
      // fetch(newurl, {method: "POST", headers: {"Accept": "text/plain"}})
      // .then(response => response.json())
      // .then((data) => {
      //   console.log(data)
      //   //this.listTarget.outerHTML = data
      // })
