Lootly.Views.SingleProductView = Backbone.View.extend({
  initialize: function() {
		this.$el.addClass("show-product")
  },
	
	template: JST['single_product'],
	
	render: function(){
		this.$el.append(this.template({product: this.model}))
		return this
	}

})