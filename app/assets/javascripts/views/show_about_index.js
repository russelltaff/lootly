Lootly.Views.ShowAboutIndex = Backbone.View.extend({
	initialize: function(){
		this.$el.addClass("show_about_index")
	},
	
	template: JST["show_about_index"](),
	
	render: function(){
		this.$el.append(this.template);
		return this;
	}
});