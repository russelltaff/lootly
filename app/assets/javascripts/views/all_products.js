Lootly.Views.AllProductsView = Backbone.View.extend({
  tagName: "div",

  className: "products",

  intialize: function(opts) {
    this.productList = opts.productList;
  },

  addAll: function() {
    this.collection.each(this.addOne, this);
  },

  addOne: function(singleProduct){
    var view = new SingleProductView({model: movieResult});
    this.$el.append(view.el);
  },
	
	template: JST['all_products'],
	
	render: function(){
		console.log("rendered!")
		this.$el.append(this.template({products: Lootly.Products}))
		return this
	}


});