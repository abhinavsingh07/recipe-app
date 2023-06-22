const endpoints = {
	"searchrecipe": "searchRecipe"
}


$(document).ready(function() {

	$("#recipeSearch").autocomplete({
		source: function(request, response) {
			$.ajax({
				url: window.location.href + 'searchAutoComplete',
				dataType: "json",
				data: {
					search: request.term
				},
				success: function(data) {
					response(data);
				}
			});
		},
		search: function(event, ui) {
			//highlight matched text
			setTimeout(() => {
				let w = $(this).autocomplete("widget").find("li"),
					re = new RegExp("(" + this.value + ")", "i");
				w.html((i, html) =>
					html.replace(re, "<b>$1</b>")
				);
			}, 1500);
		},
		minLength: 3,
		select: function(event, ui) {
			console.log("AUTOCOMPLETE SELECT" + JSON.stringify(ui));
		}
	});
});


/**$("#searchRecipeBtn").click(function() {
	var data = $("#searchRecipeForm").serialize();
	ajax(endpoints.searchrecipe, 'GET', data);
});**/
