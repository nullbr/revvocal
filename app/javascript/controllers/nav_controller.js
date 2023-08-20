import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="nav"
export default class extends Controller {
  static targets = ["nav", "mode", "list", "menu"];

  connect() {
    // set theme on page load
    if (
      localStorage.theme === "dark" ||
      (!("theme" in localStorage) &&
        window.matchMedia("(prefers-color-scheme: dark)").matches)
    ) {
      document.documentElement.classList.add("dark");
      this.modeTarget.name = "moon-outline";
    } else {
      document.documentElement.classList.remove("dark");
      localStorage.theme = "light";
    }
  }

  toggleNav(e) {
    if (this.listTarget.classList.contains("-translate-y-[120%]")) {
      // show nav
      this.listTarget.classList.remove("-translate-y-[120%]");
      this.listTarget.classList.add("translate-y-0");

      // change background color
      this.navTarget.classList.add("bg-lm-1");
      this.navTarget.classList.add("dark:bg-dm-1");

      // change icon
      this.menuTarget.name = "close";
    } else {
      // hide nav
      this.listTarget.classList.remove("translate-y-0");
      this.listTarget.classList.add("-translate-y-[120%]");

      // change background color
      this.navTarget.classList.remove("bg-lm-1");
      this.navTarget.classList.remove("dark:bg-dm-1");

      // change icon
      this.menuTarget.name = "menu";
    }
  }

  toggleMode() {
    console.log(this.modeTarget.name);

    if (this.modeTarget.name === "sunny-outline") {
      this.modeTarget.name = "moon-outline";
      document.documentElement.classList.add("dark");
      localStorage.theme = "dark";
    } else {
      this.modeTarget.name = "sunny-outline";
      document.documentElement.classList.remove("dark");
      localStorage.theme = "light";
    }
  }

  disconnect() {}
}
