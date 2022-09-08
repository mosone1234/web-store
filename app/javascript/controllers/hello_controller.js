import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "toggleable" ]  
  connect() {
    this.element.textContent = "Hello World!"
    console.log("hola desde este javascript")
  }

  dropdowntoggle() {
    console.log("it works")
    console.log(this.toggleableTarget)
    this.toggleableTarget.classList.toggle('hidden')
  }
}
