window.Lootly = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
	  var router = new Lootly.Routers.HomePage();
	  Backbone.history.start();
  }
};

	

