import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = ["price"]
  connect() {
    console.log(this.element)
  }
  edit(){
  }
}
