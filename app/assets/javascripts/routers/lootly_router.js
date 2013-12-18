Lootly.Routers.HomePage = Backbone.Router.extend({
	initialize: function(){
		this.$rootEl = $(".home_page")
		var mainNav = new Lootly.Views.MainNav();
		var productIndex = new Lootly.Views.ProductIndexView();
		// var dynamicPage = new Lootly.Views.DynamicView();
		this.$rootEl.append(mainNav.render().$el)
		this.$rootEl.append(productIndex.render().$el)
		this.$rootEl.append("<div class='dynamic_view_container'></div>")
		
		// this.$rootEl.append(dynamicPage.render().$el)
	},
	
	routes: {
		"": "homepage",
		"products/:id" : "show_product"
	
	}, 
	
	homepage: function(){
		console.log("in homepage");
	},
	
	show_product: function(id){
		console.log("in show product")
		var product = Lootly.Products.get(id)

		var showProduct = new Lootly.Views.SingleProductView({model: product})
		this._swapView(showProduct)
	},
	
	_swapView: function(newView) {
    // this._currentView && this._currentView.remove();
// 	    this._currentView = newView;
		$(".dynamic_view_container").empty()
    $(".dynamic_view_container").html(newView.render().$el);
  }
	
	
});


