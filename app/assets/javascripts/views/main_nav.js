Lootly.Views.MainNav = Backbone.View.extend({
	initialize: function(){
		this.$el.addClass("main_nav")
	},
	
	events: {
		"click .shop_loot_link" : "show_product_index"
	},
	
	template: JST["main_nav"](),
	
	show_product_index : function(event){
		event.preventDefault();
		$(".product_index").toggleClass("unhide_product_index")
		$(".dynamic_view_container").toggleClass("move_right")
	},
	
	render: function(){
		this.$el.html(this.template); 
		return this;
	}
	
});