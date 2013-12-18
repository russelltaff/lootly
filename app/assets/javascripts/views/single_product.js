var SingleProductView = Backbone.View.extend({
  initialize: function() {
     this.listenTo(this.model, "show", this.render);
    this.model.showSingleProduct();

    this.render();
  }

  // tagName: "div",

  // events: {
  //   "click product_1": "product_1"
  // }
  // }
})