import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["item"];

  slideTo(event) {
    const index = event.target.dataset.slideTo;
    console.log(`🎯 slideTo called with index: ${index}`);
    this.hideAll();
    this.itemTargets[index].classList.remove("hidden");
    console.log(`📸 Showing slide at index: ${index}`);
  }

  prev() {
    const index = this.currentIndex();
    console.log(`⬅️ prev called from index: ${index}`);
    this.hideAll();
    if(index === 0){
      this.itemTargets[this.itemTargets.length - 1].classList.remove("hidden");
      console.log(`🔄 Wrapped around to the end of the slides`);
    } else {
      this.itemTargets[index - 1].classList.remove("hidden");
      console.log(`📸 Showing slide at index: ${index - 1}`);
    }
  }

  next() {
    const index = this.currentIndex();
    console.log(`➡️ next called from index: ${index}`);
    this.hideAll();
    if(index === this.itemTargets.length - 1){
      this.itemTargets[0].classList.remove("hidden");
      console.log(`🔄 Wrapped around to the start of the slides`);
    } else {
      this.itemTargets[index + 1].classList.remove("hidden");
      console.log(`📸 Showing slide at index: ${index + 1}`);
    }
  }

  hideAll() {
    console.log(`🙈 Hiding all slides`);
    this.itemTargets.forEach((item) => {
      item.classList.add("hidden");
    });
  }

  currentIndex() {
    const index = this.itemTargets.findIndex((item) => !item.classList.contains("hidden"));
    console.log(`👀 Current visible slide index: ${index}`);
    return index;
  }
}
