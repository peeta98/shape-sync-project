import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="achievement"
export default class extends Controller {
  static targets = ["progressValue", "goal", "completeButton"];
  connect() {
  }
  completeWorkout() {
    const currentProgress = parseInt(this.progressValueTarget.textContent);
    const goal = parseInt(this.goalTarget.textContent);
    const status = this.statusTarget.textContent.trim();

    // Check if the goal is reached and the status is not 'Unlocked'
    if (currentProgress < goal && status !== "Unlocked") {
      // Increment the progress by 1
      const newProgress = currentProgress + 1;

      // Update the progress value in the DOM
      this.progressValueTarget.textContent = newProgress;

      // Check if the goal is reached
      if (newProgress === goal) {
        // Update the status to 'Unlocked' when the goal is reached
        this.statusTarget.textContent = "Unlocked";

        // Disable the complete button
        this.completeButtonTarget.textContent = "Achievement Unlocked";
        this.completeButtonTarget.classList.add("disabled");
      }
    }
  }
}
