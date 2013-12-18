Lootly.Routers.HomePage = Backbone.Router.extend({
	initialize: function(){
		this.$rootEl = $(".home_page")
	},
	
	routes: {
		"": "homepage"

	
	}, 
	
	homepage: function(){
		console.log("in homepage");
		var mainNav = new Lootly.Views.MainNav();
		var productIndex = new Lootly.Views.ProductIndexView();
		var dynamicPage = new Lootly.Views.DynamicView();
		this.$rootEl.append(mainNav.render().$el)
		this.$rootEl.append(productIndex.render().$el)
		this.$rootEl.append(dynamicPage.render().$el)
	},
	
	// _swapView: function(newView) {
	//     this._currentView && this._currentView.remove();
	//     this._currentView = newView;
	//     this.$rootEl.append(newView.render().$el);
	//   }
	
	
});


