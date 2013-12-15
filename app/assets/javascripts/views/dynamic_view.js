Lootly.Views.DynamicView = Backbone.View.extend({
	initialize: function(){
		this.$el.addClass("dynamic_view_container")
	},
	
	events: {
		"click .test": "test_function"
	},
	
	test_function: function(event){
		event.preventDefault();
		console.log("test works")
	},
	
	render: function(){
		this.$el.append("<a href='#' class='test'>MEOW</a>");
		return this;
	}
});