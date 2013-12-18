window.Lootly = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(products) {
		
		var products = Lootly.Products = new Lootly.Collections.ProductsCollection(JSON.parse(products))
		
	  var router = new Lootly.Routers.HomePage();
	  Backbone.history.start();
  }
};

	

