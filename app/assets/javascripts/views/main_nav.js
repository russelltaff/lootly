Lootly.Views.MainNav = Backbone.View.extend({
	initialize: function(){
		this.$el.addClass("main_nav")
	},
	
	events: {
		"click .see_loot_link"  : "show_loot_index",
		"click .shop_loot_link" : "show_product_index",
		"click .about_link"     : "show_about_index",
		"click .contact_link"   : "show_contact_index"
	},
	
	template: JST["main_nav"](),
	
	show_loot_index : function(event){
		event.preventDefault();
		$(".dynamic_view_container").empty()
		var showLootIndex = new Lootly.Views.ShowLootIndex();
		$(".dynamic_view_container").html(showLootIndex.render().$el)
	},
	
	show_product_index : function(event){
		event.preventDefault();
		$(".product_index").toggleClass("unhide_product_index")
		$(".dynamic_view_container").toggleClass("move_right")
	},
	
	show_about_index : function(event){
		event.preventDefault();
		$(".dynamic_view_container").empty()
		var showAboutIndex = new Lootly.Views.ShowAboutIndex();
		$(".dynamic_view_container").html(showAboutIndex.render().$el)
	},
	
	show_contact_index : function(event){
		event.preventDefault();
		$(".dynamic_view_container").empty()
		var showContactIndex = new Lootly.Views.ShowContactIndex();
		$(".dynamic_view_container").html(showContactIndex.render().$el)
	},
	
	render: function(){
		this.$el.html(this.template); 
		return this;
	}
	
});