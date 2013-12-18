Lootly.Models.Look = Backbone.Model.extend({
	parse: function(response) {
    response["products"] = new Lootly.Collections.ProductsCollection(response["products"]);
    return response;
  }
});