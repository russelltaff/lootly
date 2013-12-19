Lootly.Views.SingleProductView = Backbone.View.extend({
  initialize: function() {
		this.$el.addClass("show-product")
  },
	
	template: JST['single_product'],
	
	render: function(){
		this.$el.append(this.template({product: this.model}))
		return this
	},

	// events: {
	// 	"change #fileInput" : "addProductPhoto"

	// },

	// addProductPhoto: function(){
	// 	console.log("addproductphotocalled");
	// 	var fileInput = $('#fileInput')[0];
		
	// 	var file= fileInput.files[0]

	// 	var imageType = /image.*/;

	// 	var self = this;
	// 		if (file.type.match(imageType)){

	// 			var reader = new fileReader();

	// 			reader.onload = function(e) {

	// 				self.model.set('image', reader.result);

	// 				self.model.url = '/'
	// 			}
	// 		}
	// }




})