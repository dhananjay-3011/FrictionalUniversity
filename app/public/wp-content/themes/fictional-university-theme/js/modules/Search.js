import $ from 'jquery';

class Search {
    constructor() {
        this.openButton = $(".js-search-trigger");
        this.closeButton = $(".search-overlay__close");
        this.searchOverlay = $(".search-overlay");
        this.events();
    }

    events() {
        this.openButton.on("click", this.openOverlay.bind(this));
        this.closenButton.on("click", this.closeOverlay.bind(this));
    }

    openOverlay() {
        this.searchOverlay.addClass("search-overlay--active");
    }

    closeOverlay() {
        this.searchOverlay.remove("search-overlay--active");
    }

}