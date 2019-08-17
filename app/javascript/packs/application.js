import "bootstrap";

import "mapbox-gl/dist/mapbox-gl.css"; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from "../plugins/init_mapbox";

import "@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css";

import "../plugins/flatpickr"


flatpickr(".datepicker", {
  altInput: true
});

initMapbox();


// JS to implement show / hide bookings button on User Profile page

const bookings = document.querySelectorAll(".bookings");

bookings.forEach((booking) => {
  const bookingsButton = booking.querySelector(".bookings-button");
  const bookingsSection = booking.querySelector(".bookings-section");
  bookingsButton.addEventListener("click", (event) => {
    bookingsSection.classList.toggle("show");
    bookingsSection.classList.toggle("hide");
  });
});

// JS to implement show / hide of form to write new review

const writeRevButton = document.querySelector(".write-rev-button");
const writeRevSection = document.querySelector(".new-review");
writeRevButton.addEventListener("click", (event) => {
  writeRevSection.classList.toggle("show");
  writeRevSection.classList.toggle("hide");
});

// JS to implement show / hide of form to display all reviews

const readRevButton = document.querySelector(".read-rev-button");
const readRevSection = document.querySelector(".display-review");
readRevButton.addEventListener("click", (event) => {
  readRevSection.classList.toggle("show");
  readRevSection.classList.toggle("hide");
});
