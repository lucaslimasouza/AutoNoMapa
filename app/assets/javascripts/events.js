
var GlobalEvents = function(){
api = {};

api.cities_from_state = function(){
	var $city_select = $("#profile_address_attributes_city_id");
	$("select#search_state").live("change",function(){
		$.getJSON("/cities?state="+this.value,function(cities){
			var options = '';
			$(cities).each(function(index,city){
				options += "<option value='"+ city.id+"' > "+city.name+"</option>";
			});
		$city_select.html("");
		$city_select.append(options);
		api.enable_select($city_select);
		});
	});
}

api.disable_select =function($select){
	$select.attr('disabled','disabled');
}

api.enable_select = function ($select) {
	$select.removeAttr('disabled');
}
return api;
}