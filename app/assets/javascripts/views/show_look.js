Lootly.Views.SingleLookView = Backbone.View.extend({
  initialize: function() {
		this.$el.addClass("show-look")
  },
	
	template: JST['single_look'],
	
	render: function(){
		this.$el.append(this.template({look: this.model}))
		return this
	}
})