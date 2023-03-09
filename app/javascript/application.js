// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"



// document.getElementById("bid-button").addEventListener("click", (event) => {
//   // document.getElementById("bid-button").dataset.disableWith = "";
//   document.getElementById("bid-submit-button").removeAttribute("data-disable-with");
// });

// const countdownTimer = document.getElementById('countdown-timer');
// if (countdownTimer) {
//   const targetDate = new Date(countdownTimer.innerText).getTime();
//   const countdownInterval = setInterval(function() {
//     const now = new Date().getTime();
//     const distance = targetDate - now;
//     const days = Math.floor(distance / (1000 * 60 * 60 * 24));
//     const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
//     const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
//     const seconds = Math.floor((distance % (1000 * 60)) / 1000);
//     countdownTimer.innerHTML = `Auction ends in ${days}d ${hours}h ${minutes}m ${seconds}s`;
//     if (distance < 0) {
//       clearInterval(countdownInterval);
//       countdownTimer.innerHTML = 'EXPIRED';
//     }
//   }, 1000);
// }
