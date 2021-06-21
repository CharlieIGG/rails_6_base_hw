import { Controller } from "stimulus";

export default class extends Controller {

  initialize() {
    this.toggleOnOff = this.toggleOnOff.bind(this);
  }
  connect() {
    this.list = document.querySelector("#to_do_list");
    this.toggleOnOff();
    this.listenForToDoChanges();
  }

  hide() {
    this.element.classList.remove("d-flex");
    this.element.classList.add("d-none");
  }

  show() {
    this.element.classList.add("d-flex");
    this.element.classList.remove("d-none");
  }

  private;

  listenForToDoChanges() {
    const observer = new MutationObserver(this.toggleOnOff);
    observer.observe(this.list, { subtree: true, childList: true });
  }

  toggleOnOff() {
    const pendingToDos = this.list.querySelectorAll('[data-done="false"]');
    pendingToDos.length > 0 ? this.hide() : this.show();
  }
}