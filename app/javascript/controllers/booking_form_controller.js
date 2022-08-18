import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["start-date","end-date", "price"]
    connect() {
        console.log("hello from book")
    }
}
