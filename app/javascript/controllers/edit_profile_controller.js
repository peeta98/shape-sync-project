import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["infos", "form"];
  static values = { goalSelectVisible: Boolean };

  connect() {
    console.log("Stimulus Controller is Connected!");
    const goalSelect = document.getElementById("goalSelect");
    const goalMessage = document.getElementById("goalMessage");
    const goalIcon = document.getElementById("goalIcon");
    const userGoal = document.getElementById("userGoal");

    goalSelect.style.display = "none";
    this.goalSelectVisibleValue = false;

    const savedGoal = localStorage.getItem("selectedGoal");
    if (savedGoal) {
      goalSelect.value = savedGoal;
      this.updateGoalMessage(goalSelect, goalMessage, userGoal);
    }

    goalIcon.addEventListener("click", () => {
      if (this.goalSelectVisibleValue) {
        goalSelect.style.display = "none";
        this.goalSelectVisibleValue = false;
      } else {
        goalSelect.style.display = "block";
        this.goalSelectVisibleValue = true;
      }
    });

    goalSelect.addEventListener("change", () => {
      // Save!!!
      localStorage.setItem("selectedGoal", goalSelect.value);
      this.updateGoalMessage(goalSelect, goalMessage, userGoal);

      goalSelect.style.display = "none";
      this.goalSelectVisibleValue = false;
    });
  }

  updateGoalMessage(goalSelect, goalMessage, userGoal) {
    const selectedGoal = goalSelect.value;
    let message = "Select a goal from the dropdown to see more information.";

    switch (selectedGoal) {
      case "Weight Loss":
        message =
          "Shed excess pounds by adopting a sustainable approach to eating and exercise, leading to improved health and vitality.<br><br>" +
          "<strong><h3><i class='fa-solid fa-circle-info'></i> ShapeSync's 10 Weight Loss Commandments:</h3></strong><br>" +
          "<u><strong>1. Eat Mindfully</strong></u><br>" +
          "Pay attention to what you eat, savor your food, and avoid distractions like TV or smartphones.<br><br>" +
          "<u><strong>2. Stay Hydrated</strong></u><br>" +
          "Drink plenty of water throughout the day to stay hydrated and reduce hunger.<br><br>" +
          "<u><strong>3. Portion Control</strong></u><br>" +
          "Be mindful of portion sizes to avoid overeating.<br><br>" +
          "<u><strong>4. Balanced Diet</strong></u><br>" +
          "Include a variety of fruits, vegetables, lean proteins, and whole grains in your meals.<br><br>" +
          "<u><strong>5. Limit Sugary Drinks</strong></u><br>" +
          "Cut down on sugary beverages like soda and opt for water, herbal tea, or infused water.<br><br>" +
          "<u><strong>6. Regular Exercises</strong></u><br>" +
          "Incorporate both cardio and strength training exercises into your routine.<br><br>" +
          "<u><strong>7. Sleep Well</strong></u><br>" +
          "Aim for 7-9 hours of quality sleep per night to support weight loss.<br><br>" +
          "<u><strong>8. Plan Meals</strong></u><br>" +
          "Plan your meals and snacks ahead of time to make healthier choices.<br><br>" +
          "<u><strong>9. Track Progress</strong></u><br>" +
          "Keep a food diary or use a tracking app to monitor your food intake and exercise.<br><br>" +
          "<u><strong>10. Seek Support</strong></u><br>" +
          "Consider joining a weight loss group or seeking guidance from a healthcare professional for added support";

        break;
      case "Gain Muscle":
        message =
          "Achieve your desired physique by increasing muscle mass through targeted resistance training and a balanced diet.<br><br>" +
          "<strong><h3><i class='fa-solid fa-circle-info'></i> ShapeSync's 10 Muscle Gain Commandments:</h3></strong><br>" +
          "<u><strong>1. Strength Training</strong></u><br>" +
          "Prioritize resistance training to stimulate muscle growth.<br><br>" +
          "<u><strong>2. Compound Movements</strong></u><br>" +
          "Include exercises like squats, deadlifts, and bench presses for full-body muscle engagement.<br><br>" +
          "<u><strong>3. Progressive Overload</strong></u><br>" +
          "Gradually increase weights or resistance to challenge your muscles.<br><br>" +
          "<u><strong>4. Protein Intake</strong></u><br>" +
          "Consume enough protein to support muscle repair and growth.<br><br>" +
          "<u><strong>5. Balanced Diets</strong></u><br>" +
          "Ensure your diet includes a mix of proteins, carbohydrates, and healthy fats.<br><br>" +
          "<u><strong>6. Adequate Calories</strong></u><br>" +
          "Consume a slight calorie surplus to support muscle building.<br><br>" +
          "<u><strong>7. Rest and Recovery</strong></u><br>" +
          "Allow muscles to recover with proper rest and sleep.<br><br>" +
          "<u><strong>8. Hydration</strong></u><br>" +
          "Stay well-hydrated to support muscle function and recovery.<br><br>" +
          "<u><strong>9. Consistency</strong></u><br>" +
          "Stick to a regular workout and nutrition plan for long-term muscle gains.<br><br>" +
          "<u><strong>10. Consult a Trainer</strong></u><br>" +
          "Consider working with a fitness professional to create an effective muscle-building program tailored to your goals and needs.";

        break;
      case "Get Shredded":
        message =
          "Sculpt a lean and defined physique by combining high-intensity workouts with a strict nutrition plan to reduce body fat and reveal your muscle definition.<br><br>" +
          "<strong><h3><i class='fa-solid fa-circle-info'></i> ShapeSync's 10 Shredding Commandments:</h3></strong><br>" +
          "<u><strong>1. Calorie Deficit</strong></u><br>" +
          "Create a calorie deficit by burning more calories than you consume to shed body fat.<br><br>" +
          "<u><strong>2. High-Intensity Workouts</strong></u><br>" +
          "Incorporate HIIT workouts to burn fat efficiently.<br><br>" +
          "<u><strong>3. Lean Protein</strong></u><br>" +
          "Prioritize lean protein sources to maintain muscle while cutting fat.<br><br>" +
          "<u><strong>4. Complex Carbs</strong></u><br>" +
          "Choose complex carbohydrates like whole grains and vegetables to provide sustained energy.<br><br>" +
          "<u><strong>5. Healthy Fats</strong></u><br>" +
          "Include sources of healthy fats, such as avocados and nuts, for overall health and satiety.<br><br>" +
          "<u><strong>6. Frequent Meals</strong></u><br>" +
          "Eat smaller, balanced meals throughout the day to control hunger and maintain energy levels.<br><br>" +
          "<u><strong>7. Hydration</strong></u><br>" +
          "Stay well-hydrated to support fat metabolism and overall health.<br><br>" +
          "<u><strong>8. Tracking Macros</strong></u><br>" +
          "Monitor your macronutrient intake (protein, carbs, fats) to fine-tune your nutrition plan.<br><br>" +
          "<u><strong>9. Sleep</strong></u><br>" +
          "Prioritize quality sleep for recovery and hormone regulation.<br><br>" +
          "<u><strong>10. Patience</strong></u><br>" +
          "Understand that achieving a shredded physique takes time and consistency; be patient and stay committed to your goals.";

        break;
      case "Improve Flexibility":
        message =
          "Enhance your body's range of motion and agility with regular stretching and mobility exercises, promoting overall well-being.<br><br>" +
          "<strong><h3><i class='fa-solid fa-circle-info'></i> ShapeSync's 10 Flexibility Commandments:</h3><br></strong>" +
          "<u><strong>1. Regular Stretching</strong></u><br>" +
          "Incorporate regular stretching exercises into your routine, both before and after workouts.<br><br>" +
          "<u><strong>2. Dynamic Warm-Up</strong></u><br>" +
          "Prior to exercise, perform dynamic warm-up exercises to prepare your muscles and joints for stretching.<br><br>" +
          "<u><strong>3. Static Stretching</strong></u><br>" +
          "Include static stretches that target major muscle groups and hold each stretch for at least 15-30 seconds.<br><br>" +
          "<u><strong>4. Yoga or Pilates</strong></u><br>" +
          "Consider taking up yoga or Pilates classes, which focus on flexibility and balance.<br><br>" +
          "<u><strong>5. Foam Rolling</strong></u><br>" +
          "Use a foam roller to release muscle tension and improve flexibility.<br><br>" +
          "<u><strong>6. Consistency</strong></u><br>" +
          "Stretch daily or at least several times a week to see significant improvements.<br><br>" +
          "<u><strong>7. Breathe Deeply</strong></u><br>" +
          "Deep, controlled breathing can help you relax into stretches and improve range of motion.<br><br>" +
          "<u><strong>8. Proper Technique</strong></u><br>" +
          "Pay attention to proper form and technique during stretches to avoid injury.<br><br>" +
          "<u><strong>9. Progressive Overload</strong></u><br>" +
          "Gradually increase the intensity and duration of your stretches over time.<br><br>" +
          "<u><strong>10. Stay Hydrated</strong></u><br>" +
          "Drink enough water to keep your muscles and connective tissues hydrated and supple.";

        break;
      default:
        message = "Select a goal from the dropdown to see more information.";
        break;
    }

    goalMessage.innerHTML = message;
    userGoal.textContent = `Goal: ${selectedGoal}`; //
  }



  displayForm() {
    this.infosTarget.classList.add("d-none");
    this.formTarget.classList.remove("d-none");
  }

  update(event) {
    event.preventDefault();
    const url = this.formTarget.action;
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget),
    })
      .then((response) => response.text())
      .then((data) => {
        console.log(data);
      });
  }
}
