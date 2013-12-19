window.Lootly = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(products, looks) {
		var products = Lootly.Products = new Lootly.Collections.ProductsCollection(JSON.parse(products), {parse:true})
		var looks = Lootly.Looks = new Lootly.Collections.Looks(JSON.parse(looks), {parse: true})
		
	  var router = new Lootly.Routers.HomePage();
	  Backbone.history.start();
  }
};

	

