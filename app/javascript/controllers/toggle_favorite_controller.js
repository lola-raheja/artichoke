import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"
export default class extends Controller {
  static targets = ["favoriteIcon"];

  toggleFavorite(event) {
    // event.preventDefault();
    const { id } = this.data.get("artworkId");
    this.favoriteIconTarget.classList.toggle("red");
  }

  get artworkId() {
    return this.data.get("artworkId");
  }

  get favoriteIconTarget() {
    return this.targets.find("favoriteIcon");
  }
}
