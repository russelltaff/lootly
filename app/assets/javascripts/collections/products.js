Lootly.Collections.ProductsCollection = Backbone.Collection.extend({
  model: Lootly.Models.Product,

  url: "products",

  load: function() {
    this.fetch({success: function(response){console.log(response);}});
  }
})