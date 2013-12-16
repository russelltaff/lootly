Lootly.Views.ShowContactIndex = Backbone.View.extend({
	initialize: function(){
		this.$el.addClass("show_contact_index")
	},
	
	template: JST["show_contact_index"](),
	
	render: function(){
		this.$el.append(this.template);
		return this;
	}
});