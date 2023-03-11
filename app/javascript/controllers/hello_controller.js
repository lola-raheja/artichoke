import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // console.log("Hello world!")
    const artworks = document.querySelectorAll(".artwork-card-body");
    // console.log(artworks)
    artworks.forEach((artwork) => {
      const position = parseInt(artwork.dataset.pos)
      if (position >= 3 || position < 0) {
        artwork.classList.add("hidden")
      }
    })
  }

  next() {
    const artworks = document.querySelectorAll(".artwork-card-body");
    artworks.forEach((artwork) => {
      let position = parseInt(artwork.dataset.pos)
      position -= 1
      console.log(position)
      if (position < 0) {
        artwork.classList.add("hidden")
      }
      if (position > 0 && position < 3) {
        artwork.classList.remove("hidden")
      }
      if (position > 3) {
        artwork.classList.add("hidden")
      }
    })
  }

  previous() {
    console.log("Previous button works")
  }
}
