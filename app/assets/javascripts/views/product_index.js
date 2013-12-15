Lootly.Views.ProductIndexView = Backbone.View.extend({
	initialize: function(){
		this.$el.addClass("product_index")
	},
	
	events: {
		// "click .shop_loot_link" : "show_product_index"
	},
	
	template: JST["product_index"](),
	
	render: function(){
		this.$el.html(this.template); 
		return this;
	}
	
});