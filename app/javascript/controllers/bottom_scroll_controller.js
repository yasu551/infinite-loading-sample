import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bottom-scroll"
export default class extends Controller {
  initialize() {
    this.element.scrollTop = this.element.scrollHeight
  }
}
