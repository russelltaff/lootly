var ProductsCollection = Backbone.Collection.extend({
  model: Product,

  url: "products",

  load: function() {
    this.fetch({success: function(response){console.log(response);}});
  }
})