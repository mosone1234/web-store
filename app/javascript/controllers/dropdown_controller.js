import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "toggleable", "toggleable1" ]
    initialize() {
        // this.boundHandleMyEvent = this.handleMyEvent.bind(this);
    }
    connect() {
        document.addEventListener("click", function(event) {
            document.querySelectorAll('.dropdown-content').forEach(function(el) {
                if (el !== event.target) el.classList.remove('show')
            });
            if (event.target.matches('.dropbtn')) {
                event.target.closest('.wrapper-dropdown').querySelector('.dropdown-content').classList.toggle('show')
            }
        })
    }
    toggle(event, dropdownID) {
        console.log("-------------------------------------")
        console.log("-------------------------------------")
        console.log("-------------------------------------")
        console.log(dropdownID)
        console.log(event.target)
        console.log("-------------------------------------")
        console.log("-------------------------------------")
        console.log("-------------------------------------")
        console.log(this.toggleableTarget)
        this.toggleableTarget.classList.toggle('hidden')
    }
    toggleProduct() {
        this.toggleable1Target.classList.toggle('hidden')
    }
}