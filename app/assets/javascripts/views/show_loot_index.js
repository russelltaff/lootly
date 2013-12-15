Lootly.Views.ShowLootIndex = Backbone.View.extend({
	initialize: function(){
		this.$el.addClass("show_loot_index")
	},
	
	template: JST["show_loot_index"](),
	
	render: function(){
		this.$el.append(this.template);
		return this;
	}
	
});